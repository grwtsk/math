# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundedCostAdmission

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5288736ead0cf4b735a56baa08e1bd7823c8a06` · SHA-256 `4e4981ebddc1f7bc8007c288d815e980f76232c0946f0fc21ae0cc432263c164`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteInventoryAdmission
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CombinatorialAlgorithms.WeightedGreedyPartitions

/-!
Finite resource admission for the checked Plan boundary. Natural arithmetic
describes the bounded Rust accumulators; no wrapping sum is an admission fact.
The resource projection records metadata counts and costs, not literal payload
union size, operating-system observations, or unconditional capture success.
-/
namespace GRWTSK.PlanResources

def maxFiles : Nat := 100000
def maxTotalBytes : Nat := 1073741824
def maxFileBytes : Nat := 67108864
def maxRawSources : Nat := 16
def maxSubjects : Nat := 50000
def maxRoutes : Nat := 400000
def u64Max : Nat := 18446744073709551615

def boundedAdd (total cost cap : Nat) : Option Nat :=
  if total ≤ cap ∧ cost ≤ cap - total then some (total + cost) else none

theorem boundedAdd_exact (total cost cap result : Nat) :
    boundedAdd total cost cap = some result ↔ result = total + cost ∧ result ≤ cap := by
  unfold boundedAdd
  split <;> simp_all <;> omega

theorem boundedAdd_exists (total cost cap : Nat) :
    (boundedAdd total cost cap).isSome = true ↔ total + cost ≤ cap := by
  unfold boundedAdd
  split <;> simp_all <;> omega

theorem boundedAdd_rejects_excess (total cost cap : Nat) (excess : cap < total + cost) :
    boundedAdd total cost cap = none := by
  unfold boundedAdd
  split <;> simp_all
  omega

def boundedSum : List Nat → Nat → Nat → Option Nat
  | [], cap, total => if total ≤ cap then some total else none
  | cost :: rest, cap, total => do
      let next ← boundedAdd total cost cap
      boundedSum rest cap next

theorem boundedSum_exact (costs : List Nat) (cap total result : Nat) :
    boundedSum costs cap total = some result ↔ result = total + costs.sum ∧ result ≤ cap := by
  induction costs generalizing total with
  | nil =>
      simp only [boundedSum, List.sum_nil, Nat.add_zero]
      split <;> simp_all
      omega
  | cons cost rest ih =>
      change ((boundedAdd total cost cap).bind fun next => boundedSum rest cap next) = some result ↔
        result = total + (cost + rest.sum) ∧ result ≤ cap
      cases step : boundedAdd total cost cap with
      | none =>
          simp only [Option.bind_none, reduceCtorEq, false_iff]
          intro facts
          have possible := (boundedAdd_exists total cost cap).mpr (by omega)
          simp [step] at possible
      | some next =>
          have facts := (boundedAdd_exact _ _ _ _).mp step
          simp only [Option.bind_some, ih]
          omega

theorem boundedSum_exists (costs : List Nat) (cap total : Nat) :
    (boundedSum costs cap total).isSome = true ↔ total + costs.sum ≤ cap := by
  cases result : boundedSum costs cap total with
  | none =>
      simp only [Option.isSome_none, Bool.false_eq_true, false_iff]
      intro fits
      have exact := (boundedSum_exact costs cap total (total + costs.sum)).mpr ⟨rfl, fits⟩
      simp [result] at exact
  | some value =>
      simp only [Option.isSome_some, true_iff]
      obtain ⟨rfl, fits⟩ := (boundedSum_exact _ _ _ _).mp result
      exact fits

theorem sum_take_le (costs : List Nat) (count : Nat) : (costs.take count).sum ≤ costs.sum := by
  have split := List.take_append_drop count costs
  have sums := congrArg List.sum split
  rw [List.sum_append] at sums
  omega

theorem boundedSum_prefixes (costs : List Nat) (cap total result : Nat)
    (accepted : boundedSum costs cap total = some result) (count : Nat) :
    boundedSum (costs.take count) cap total = some (total + (costs.take count).sum) := by
  have fits := ((boundedSum_exact _ _ _ _).mp accepted).2
  have exact := ((boundedSum_exact _ _ _ _).mp accepted).1
  apply (boundedSum_exact _ _ _ _).mpr
  have initial := sum_take_le costs count
  exact ⟨rfl, by omega⟩

theorem sum_le_length_mul (costs : List Nat) (cap : Nat)
    (bounded : ∀ cost ∈ costs, cost ≤ cap) : costs.sum ≤ costs.length * cap := by
  induction costs with
  | nil => simp
  | cons cost rest ih =>
      have first := bounded cost (by simp)
      have tail := ih (fun value member => bounded value (by simp [member]))
      simp only [List.sum_cons, List.length_cons, Nat.succ_mul]
      omega

theorem member_le_sum (costs : List Nat) (cost : Nat) (member : cost ∈ costs) : cost ≤ costs.sum := by
  induction costs with
  | nil => simp at member
  | cons first rest ih =>
      rcases List.mem_cons.mp member with rfl | member
      · simp
      · have bound := ih member
        simp only [List.sum_cons]
        omega

theorem bounded_sum_no_u64_wrap (costs : List Nat) (cap total result : Nat)
    (accepted : boundedSum costs cap total = some result) (profile : cap ≤ maxTotalBytes) :
    total + costs.sum < GreedyShards.u64Modulus ∧
      (total + costs.sum) % GreedyShards.u64Modulus = total + costs.sum := by
  obtain ⟨rfl, fits⟩ := (boundedSum_exact _ _ _ _).mp accepted
  have strict : total + costs.sum < GreedyShards.u64Modulus := by
    simp only [maxTotalBytes, GreedyShards.u64Modulus] at *
    omega
  exact ⟨strict, Nat.mod_eq_of_lt strict⟩

theorem UInt64_fold_exact (costs : List UInt64) (initial : UInt64)
    (fits : initial.toNat + (costs.map UInt64.toNat).sum < GreedyShards.u64Modulus) :
    (costs.foldl (· + ·) initial).toNat = initial.toNat + (costs.map UInt64.toNat).sum := by
  induction costs generalizing initial with
  | nil => simp
  | cons cost rest ih =>
      simp only [List.map_cons, List.sum_cons] at fits
      have next : (initial + cost).toNat = initial.toNat + cost.toNat := by
        rw [UInt64.toNat_add]
        apply Nat.mod_eq_of_lt
        simp only [GreedyShards.u64Modulus] at *
        omega
      simp only [List.foldl_cons]
      rw [ih (initial + cost) (by rw [next]; omega), next]
      simp [Nat.add_assoc]

theorem boundedSum_UInt64_exact (costs : List UInt64) (cap result : Nat) (initial : UInt64)
    (accepted : boundedSum (costs.map UInt64.toNat) cap initial.toNat = some result)
    (profile : cap ≤ maxTotalBytes) : (costs.foldl (· + ·) initial).toNat = result := by
  obtain ⟨exact, _⟩ := (boundedSum_exact _ _ _ _).mp accepted
  rw [UInt64_fold_exact costs initial (bounded_sum_no_u64_wrap _ _ _ _ accepted profile).1]
  exact exact.symm

structure Inventory where
  present : Bool
  files : List Nat
  directories : Nat
  deriving DecidableEq

def inventoryWithin (inventory : Inventory) : Bool :=
  decide (inventory.files.length ≤ maxFiles ∧ inventory.directories ≤ maxFiles ∧
    (inventory.present = false → inventory.files = [] ∧ inventory.directories = 0) ∧
    (∀ cost ∈ inventory.files, cost ≤ maxFileBytes)) &&
    (boundedSum inventory.files maxTotalBytes 0).isSome

theorem inventoryWithin_exact (inventory : Inventory) : inventoryWithin inventory = true ↔
    inventory.files.length ≤ maxFiles ∧ inventory.directories ≤ maxFiles ∧
    (inventory.present = false → inventory.files = [] ∧ inventory.directories = 0) ∧
    (∀ cost ∈ inventory.files, cost ≤ maxFileBytes) ∧ inventory.files.sum ≤ maxTotalBytes := by
  cases present : inventory.present <;> simp [inventoryWithin, boundedSum_exists, present, and_assoc]

def rawFileCount (raw : List Inventory) : Option Nat :=
  if 0 < raw.length ∧ raw.length ≤ maxRawSources ∧
      ∀ inventory ∈ raw, inventoryWithin inventory = true then
    boundedSum (raw.map fun inventory => inventory.files.length) maxFiles 0
  else none

theorem rawFileCount_exact (raw : List Inventory) (count : Nat) :
    rawFileCount raw = some count ↔
      0 < raw.length ∧ raw.length ≤ maxRawSources ∧
      (∀ inventory ∈ raw, inventoryWithin inventory = true) ∧
      count = (raw.map fun inventory => inventory.files.length).sum ∧ count ≤ maxFiles := by
  unfold rawFileCount
  split
  · rename_i facts
    simp only [boundedSum_exact, Nat.zero_add]
    tauto
  · rename_i facts
    simp only [reduceCtorEq, false_iff]
    tauto

theorem raw_count_is_exact_flattened_length (raw : List Inventory) (count : Nat)
    (accepted : rawFileCount raw = some count) :
    count = (raw.map Inventory.files).flatten.length := by
  have exact := ((rawFileCount_exact _ _).mp accepted).2.2.2.1
  simpa [List.length_flatten, List.map_map, Function.comp_def] using exact

theorem raw_count_bounded (raw : List Inventory) (count : Nat)
    (accepted : rawFileCount raw = some count) : count ≤ maxFiles :=
  ((rawFileCount_exact _ _).mp accepted).2.2.2.2

theorem raw_metadata_bytes_bounded (raw : List Inventory) (count : Nat)
    (accepted : rawFileCount raw = some count) :
    (raw.map fun inventory => inventory.files.sum).sum ≤ maxRawSources * maxTotalBytes := by
  obtain ⟨_, length, inventories, _, _⟩ := (rawFileCount_exact _ _).mp accepted
  have bound := sum_le_length_mul (raw.map fun inventory => inventory.files.sum) maxTotalBytes (by
    intro cost member
    obtain ⟨inventory, present, rfl⟩ := List.mem_map.mp member
    exact ((inventoryWithin_exact _).mp (inventories inventory present)).2.2.2.2)
  simp only [List.length_map] at bound
  exact Nat.le_trans bound (Nat.mul_le_mul_right _ length)

structure Routes where
  mappings : Nat
  archive : Nat
  actions : Nat
  placeholders : Nat
  removals : Nat
  directories : Nat
  deriving DecidableEq

def routeCounts (routes : Routes) (rawFiles : Nat) : Bool :=
  decide (rawFiles ≤ maxFiles ∧ routes.mappings ≤ maxFiles ∧ routes.archive ≤ maxFiles ∧
    routes.placeholders ≤ maxFiles ∧ routes.removals ≤ maxFiles ∧ routes.directories < maxFiles ∧
    routes.actions = rawFiles + routes.mappings)

theorem routeCounts_exact (routes : Routes) (rawFiles : Nat) : routeCounts routes rawFiles = true ↔
    rawFiles ≤ maxFiles ∧ routes.mappings ≤ maxFiles ∧ routes.archive ≤ maxFiles ∧
    routes.placeholders ≤ maxFiles ∧ routes.removals ≤ maxFiles ∧ routes.directories < maxFiles ∧
    routes.actions = rawFiles + routes.mappings := by simp [routeCounts]

def routeCount (routes : Routes) : Nat := routes.archive + routes.actions + routes.placeholders

theorem admitted_action_count (routes : Routes) (rawFiles : Nat)
    (accepted : routeCounts routes rawFiles = true) : routes.actions ≤ 2 * maxFiles := by
  obtain ⟨raw, mappings, _, _, _, _, actions⟩ := (routeCounts_exact _ _).mp accepted
  omega

theorem admitted_route_count (routes : Routes) (rawFiles : Nat)
    (accepted : routeCounts routes rawFiles = true) : routeCount routes ≤ maxRoutes := by
  obtain ⟨raw, mappings, archive, placeholders, _, _, actions⟩ := (routeCounts_exact _ _).mp accepted
  simp only [routeCount, maxRoutes, maxFiles] at *
  omega

theorem admitted_routes_below_u64_max (routes : Routes) (rawFiles : Nat)
    (accepted : routeCounts routes rawFiles = true) : routeCount routes < u64Max := by
  have bound := admitted_route_count routes rawFiles accepted
  simp only [maxRoutes, u64Max] at *
  omega

theorem admitted_routes_no_wrap (routes : Routes) (rawFiles : Nat)
    (accepted : routeCounts routes rawFiles = true) :
    routeCount routes % GreedyShards.u64Modulus = routeCount routes := by
  have bound := admitted_routes_below_u64_max routes rawFiles accepted
  apply Nat.mod_eq_of_lt
  simp only [u64Max, GreedyShards.u64Modulus] at *
  omega

structure Shard where
  indices : List Nat
  bytes : Nat
  deriving DecidableEq

def selectedCosts (costs indices : List Nat) : List Nat :=
  indices.map fun index => (costs[index]?).getD 0

def shardWithin (costs : List Nat) (files budget : Nat) (shard : Shard) : Bool :=
  decide (0 < shard.indices.length ∧ shard.indices.length ≤ files ∧
    ∀ index ∈ shard.indices, index < costs.length) &&
    decide (boundedSum (selectedCosts costs shard.indices) budget 0 = some shard.bytes)

def shardsWithin (costs : List Nat) (shards : List Shard) (files budget : Nat) : Bool :=
  decide (0 < files ∧ files ≤ GreedyShards.maxFiles ∧
    0 < budget ∧ budget ≤ GreedyShards.maxBytes ∧
    (shards.map Shard.indices).flatten = List.range costs.length) &&
    shards.all (shardWithin costs files budget)

theorem shardWithin_exact (costs : List Nat) (files budget : Nat) (shard : Shard) :
    shardWithin costs files budget shard = true ↔
      0 < shard.indices.length ∧ shard.indices.length ≤ files ∧
      (∀ index ∈ shard.indices, index < costs.length) ∧
      shard.bytes = (selectedCosts costs shard.indices).sum ∧ shard.bytes ≤ budget := by
  simp [shardWithin, boundedSum_exact, and_assoc]

theorem shardsWithin_exact (costs : List Nat) (shards : List Shard) (files budget : Nat) :
    shardsWithin costs shards files budget = true ↔
      0 < files ∧ files ≤ GreedyShards.maxFiles ∧
      0 < budget ∧ budget ≤ GreedyShards.maxBytes ∧
      (shards.map Shard.indices).flatten = List.range costs.length ∧
      ∀ shard ∈ shards, shardWithin costs files budget shard = true := by
  simp [shardsWithin, and_assoc]

theorem admitted_shards_exact_indices (costs : List Nat) (shards : List Shard) (files budget : Nat)
    (checked : shardsWithin costs shards files budget = true) :
    (shards.map Shard.indices).flatten = List.range costs.length :=
  ((shardsWithin_exact _ _ _ _).mp checked).2.2.2.2.1

theorem admitted_shards_preserve_index_multiplicity (costs : List Nat) (shards : List Shard)
    (files budget index : Nat) (checked : shardsWithin costs shards files budget = true) :
    ((shards.map Shard.indices).flatten).count index = (List.range costs.length).count index := by
  rw [admitted_shards_exact_indices _ _ _ _ checked]

theorem admitted_shard_indices_unique (costs : List Nat) (shards : List Shard) (files budget : Nat)
    (checked : shardsWithin costs shards files budget = true) :
    ((shards.map Shard.indices).flatten).Nodup := by
  rw [admitted_shards_exact_indices _ _ _ _ checked]
  exact List.nodup_range

theorem admitted_shard_bounds (costs : List Nat) (shards : List Shard) (files budget : Nat)
    (checked : shardsWithin costs shards files budget = true) (shard : Shard) (member : shard ∈ shards) :
    shard.indices ≠ [] ∧ shard.indices.length ≤ files ∧
      shard.bytes = (selectedCosts costs shard.indices).sum ∧ shard.bytes ≤ budget := by
  obtain ⟨_, _, _, _, _, every⟩ := (shardsWithin_exact _ _ _ _).mp checked
  obtain ⟨positive, count, _, exact, bytes⟩ := (shardWithin_exact _ _ _ _).mp (every shard member)
  exact ⟨List.ne_nil_of_length_pos positive, count, exact, bytes⟩

theorem selectedCosts_range_exact (costs : List Nat) : selectedCosts costs (List.range costs.length) = costs := by
  apply List.ext_getElem
  · simp [selectedCosts]
  · intro index left right
    simp only [selectedCosts, List.getElem_map, List.getElem_range]
    simp [List.getElem?_eq_getElem right]

theorem admitted_shards_exact_cost_history (costs : List Nat) (shards : List Shard) (files budget : Nat)
    (checked : shardsWithin costs shards files budget = true) :
    (shards.map fun shard => selectedCosts costs shard.indices).flatten = costs := by
  have exact := congrArg (selectedCosts costs) (admitted_shards_exact_indices _ _ _ _ checked)
  rw [selectedCosts_range_exact] at exact
  simpa [selectedCosts, List.map_flatten, List.map_map, Function.comp_def] using exact

theorem admitted_shards_total_bytes (costs : List Nat) (shards : List Shard) (files budget : Nat)
    (checked : shardsWithin costs shards files budget = true) :
    (shards.map Shard.bytes).sum = costs.sum := by
  have exact := congrArg List.sum (admitted_shards_exact_cost_history _ _ _ _ checked)
  rw [List.sum_flatten] at exact
  rw [← exact]
  apply congrArg List.sum
  rw [List.map_map]
  apply List.map_congr_left
  intro shard member
  exact (admitted_shard_bounds _ _ _ _ checked shard member).2.2.1

theorem admitted_action_costs_bounded (costs : List Nat) (shards : List Shard) (files budget : Nat)
    (checked : shardsWithin costs shards files budget = true) (cost : Nat) (member : cost ∈ costs) :
    cost ≤ budget := by
  rw [← admitted_shards_exact_cost_history _ _ _ _ checked] at member
  obtain ⟨part, partMember, costMember⟩ := List.mem_flatten.mp member
  obtain ⟨shard, shardMember, rfl⟩ := List.mem_map.mp partMember
  obtain ⟨_, _, exact, bounded⟩ := admitted_shard_bounds _ _ _ _ checked shard shardMember
  have lower := member_le_sum _ _ costMember
  omega

structure Plan where
  source : Inventory
  destination : Inventory
  archive : Inventory
  preservation : Inventory
  raw : List Inventory
  subjects : Nat
  mappings : Nat
  actionCosts : List Nat
  placeholders : Nat
  removals : Nat
  directories : Nat
  shards : List Shard
  maxFilesPerShard : Nat
  maxBytesPerShard : Nat
  deriving DecidableEq

def routes (plan : Plan) : Routes :=
  ⟨plan.mappings, plan.archive.files.length, plan.actionCosts.length,
    plan.placeholders, plan.removals, plan.directories⟩

def inventories (plan : Plan) : List Inventory :=
  [plan.source, plan.destination, plan.archive, plan.preservation] ++ plan.raw

def planWithin (plan : Plan) : Bool :=
  inventoryWithin plan.source && inventoryWithin plan.destination &&
    inventoryWithin plan.archive && inventoryWithin plan.preservation &&
    decide (0 < plan.subjects ∧ plan.subjects ≤ maxSubjects) &&
    match rawFileCount plan.raw with
    | none => false
    | some count => routeCounts (routes plan) count &&
        shardsWithin plan.actionCosts plan.shards plan.maxFilesPerShard plan.maxBytesPerShard

theorem planWithin_exact (plan : Plan) : planWithin plan = true ↔
    inventoryWithin plan.source = true ∧ inventoryWithin plan.destination = true ∧
    inventoryWithin plan.archive = true ∧ inventoryWithin plan.preservation = true ∧
    0 < plan.subjects ∧ plan.subjects ≤ maxSubjects ∧
    ∃ count, rawFileCount plan.raw = some count ∧ routeCounts (routes plan) count = true ∧
      shardsWithin plan.actionCosts plan.shards plan.maxFilesPerShard plan.maxBytesPerShard = true := by
  unfold planWithin
  cases rawFileCount plan.raw <;> simp [and_assoc]

theorem checked_plan_route_budget (plan : Plan) (checked : planWithin plan = true) :
    plan.archive.files.length + plan.actionCosts.length + plan.placeholders ≤ maxRoutes := by
  obtain ⟨_, _, _, _, _, _, count, _, bounded, _⟩ := (planWithin_exact _).mp checked
  exact admitted_route_count _ count bounded

theorem checked_plan_producer_bound (plan : Plan) (checked : planWithin plan = true) :
    plan.archive.files.length + plan.actionCosts.length + plan.placeholders < u64Max := by
  have bounded := checked_plan_route_budget plan checked
  simp only [maxRoutes, u64Max] at *
  omega

theorem checked_plan_route_shapes (plan : Plan) (checked : planWithin plan = true) :
    plan.mappings ≤ maxFiles ∧ plan.archive.files.length ≤ maxFiles ∧
      plan.placeholders ≤ maxFiles ∧ plan.removals ≤ maxFiles ∧ plan.directories < maxFiles ∧
      plan.actionCosts.length ≤ 2 * maxFiles ∧
      plan.actionCosts.length = (plan.raw.map fun inventory => inventory.files.length).sum + plan.mappings := by
  obtain ⟨_, _, _, _, _, _, count, raw, route, _⟩ := (planWithin_exact _).mp checked
  obtain ⟨_, mapping, archive, placeholder, removal, directory, actions⟩ :=
    (routeCounts_exact _ _).mp route
  have rawCount := ((rawFileCount_exact _ _).mp raw).2.2.2.1
  exact ⟨mapping, archive, placeholder, removal, directory, admitted_action_count _ _ route,
    by simpa only [routes, rawCount] using actions⟩

theorem checked_plan_all_inventory_bounds (plan : Plan) (checked : planWithin plan = true) :
    ∀ inventory ∈ inventories plan, inventoryWithin inventory = true := by
  obtain ⟨source, destination, archive, preservation, _, _, count, raw, _, _⟩ :=
    (planWithin_exact _).mp checked
  have raw := ((rawFileCount_exact _ _).mp raw).2.2.1
  intro inventory member
  simp only [inventories, List.mem_append, List.mem_cons, List.mem_nil_iff, or_false] at member
  rcases member with (rfl | rfl | rfl | rfl) | member
  · exact source
  · exact destination
  · exact archive
  · exact preservation
  · exact raw inventory member

theorem checked_plan_readset_count (plan : Plan) (checked : planWithin plan = true) :
    (inventories plan).length ≤ 20 := by
  obtain ⟨_, _, _, _, _, _, count, raw, _, _⟩ := (planWithin_exact _).mp checked
  have bounded := ((rawFileCount_exact _ _).mp raw).2.1
  simp only [inventories, List.length_append, List.length_cons, List.length_nil, maxRawSources] at *
  omega

theorem checked_plan_metadata_bytes (plan : Plan) (checked : planWithin plan = true) :
    ((inventories plan).map fun inventory => inventory.files.sum).sum ≤ 20 * maxTotalBytes := by
  have every := checked_plan_all_inventory_bounds plan checked
  have bound := sum_le_length_mul ((inventories plan).map fun inventory => inventory.files.sum) maxTotalBytes (by
    intro cost member
    obtain ⟨inventory, present, rfl⟩ := List.mem_map.mp member
    exact ((inventoryWithin_exact _).mp (every inventory present)).2.2.2.2)
  simp only [List.length_map] at bound
  exact Nat.le_trans bound (Nat.mul_le_mul_right _ (checked_plan_readset_count plan checked))

theorem checked_plan_metadata_bytes_no_wrap (plan : Plan) (checked : planWithin plan = true) :
    ((inventories plan).map fun inventory => inventory.files.sum).sum < GreedyShards.u64Modulus := by
  have bound := checked_plan_metadata_bytes plan checked
  simp only [maxTotalBytes, GreedyShards.u64Modulus] at *
  omega

theorem checked_plan_action_cost_profile (plan : Plan) (checked : planWithin plan = true) :
    0 < plan.maxBytesPerShard ∧ plan.maxBytesPerShard ≤ maxFileBytes ∧
      (∀ cost ∈ plan.actionCosts, cost ≤ plan.maxBytesPerShard) ∧
      plan.actionCosts.sum ≤ plan.actionCosts.length * plan.maxBytesPerShard := by
  obtain ⟨_, _, _, _, _, _, _, _, _, shard⟩ := (planWithin_exact _).mp checked
  obtain ⟨_, _, positive, budget, _, _⟩ := (shardsWithin_exact _ _ _ _).mp shard
  have every := admitted_action_costs_bounded _ _ _ _ shard
  exact ⟨positive, budget, every, sum_le_length_mul _ _ every⟩

theorem checked_plan_action_bytes (plan : Plan) (checked : planWithin plan = true) :
    plan.actionCosts.sum ≤ 200000 * maxFileBytes := by
  obtain ⟨_, _, _, _, _, _, count, _, route, shard⟩ := (planWithin_exact _).mp checked
  have countBound := admitted_action_count _ _ route
  have budgetBound := ((shardsWithin_exact _ _ _ _).mp shard).2.2.2.1
  have sumBound := sum_le_length_mul plan.actionCosts maxFileBytes (by
    intro cost member
    have bounded := admitted_action_costs_bounded _ _ _ _ shard cost member
    simp only [GreedyShards.maxBytes, maxFileBytes] at *
    omega)
  simp only [routes, maxFiles] at countBound
  exact Nat.le_trans sumBound (Nat.mul_le_mul_right _ countBound)

theorem checked_plan_action_bytes_no_wrap (plan : Plan) (checked : planWithin plan = true) :
    plan.actionCosts.sum < GreedyShards.u64Modulus := by
  have bound := checked_plan_action_bytes plan checked
  simp only [maxFileBytes, GreedyShards.u64Modulus] at *
  omega

/-- The count equality follows from actual expected/captured domain admission;
it is not inferred from a digest or an alleged filesystem snapshot. -/
theorem captured_archive_producer_bound (plan : Plan) (capture : CertificateAdmission.Capture)
    (planned : planWithin plan = true) (admitted : CertificateAdmission.admissionCheck capture = true)
    (metadata : capture.expectedArchive.files.length = plan.archive.files.length) :
    capture.archive.files.length + plan.actionCosts.length + plan.placeholders < u64Max := by
  have captured := ((CertificateAdmission.admissionCheck_exact _).mp admitted).2.2.1
  have count := ((CertificateAdmission.readsetMatches_exact _ _ _).mp captured).2.2.2.2.1
  rw [count, metadata]
  exact checked_plan_producer_bound plan planned

def fixturePlan : Plan where
  source := ⟨true, [0, 2], 0⟩
  destination := ⟨false, [], 0⟩
  archive := ⟨true, [1], 1⟩
  preservation := ⟨true, [0, 1, 2], 0⟩
  raw := [⟨true, [0, 1], 0⟩]
  subjects := 1
  mappings := 2
  actionCosts := [0, 1, 0, 2]
  placeholders := 3
  removals := 0
  directories := 3
  shards := [⟨[0, 1], 1⟩, ⟨[2, 3], 2⟩]
  maxFilesPerShard := 2
  maxBytesPerShard := 2

theorem fixture_plan_accepted : planWithin fixturePlan = true := by decide

theorem fixture_zero_byte_occurrences_retained :
    (fixturePlan.shards.map Shard.indices).flatten = [0, 1, 2, 3] ∧
      (fixturePlan.shards.map Shard.bytes).sum = fixturePlan.actionCosts.sum := by decide

theorem fixture_producer_bound : fixturePlan.archive.files.length +
    fixturePlan.actionCosts.length + fixturePlan.placeholders < u64Max :=
  checked_plan_producer_bound fixturePlan fixture_plan_accepted

theorem no_raw_batches_rejected : planWithin {fixturePlan with raw := []} = false := by decide

theorem too_many_raw_batches_rejected : planWithin {fixturePlan with
    raw := List.replicate 17 ⟨true, [], 0⟩} = false := by decide

theorem absent_inventory_contents_rejected : planWithin {fixturePlan with
    destination := ⟨false, [0], 0⟩} = false := by decide

theorem oversized_inventory_directory_count_rejected : planWithin {fixturePlan with
    archive := ⟨true, [1], 100001⟩} = false := by decide

theorem oversized_file_rejected : planWithin {fixturePlan with
    source := ⟨true, [67108865], 0⟩} = false := by decide

theorem oversized_inventory_bytes_rejected : inventoryWithin
    ⟨true, List.replicate 17 67108864, 0⟩ = false := by decide

theorem wrapped_u64_input_rejected : boundedAdd 1 u64Max maxTotalBytes = none := by decide

theorem excess_raw_count_rejected (raw : List Inventory)
    (excess : maxFiles < (raw.map fun inventory => inventory.files.length).sum) :
    rawFileCount raw = none := by
  cases result : rawFileCount raw with
  | none => rfl
  | some value =>
      obtain ⟨_, _, _, exact, bounded⟩ := (rawFileCount_exact _ _).mp result
      omega

theorem wrong_action_count_rejected : planWithin {fixturePlan with actionCosts := [0, 1, 2]} = false := by decide

theorem oversized_placeholder_count_rejected : planWithin {fixturePlan with placeholders := 100001} = false := by decide

theorem oversized_directory_count_rejected : planWithin {fixturePlan with directories := 100000} = false := by decide

theorem zero_subjects_rejected : planWithin {fixturePlan with subjects := 0} = false := by decide

theorem excessive_subjects_rejected : planWithin {fixturePlan with subjects := 50001} = false := by decide

theorem zero_shard_file_cap_rejected : planWithin {fixturePlan with maxFilesPerShard := 0} = false := by decide

theorem excessive_shard_byte_cap_rejected : planWithin {fixturePlan with maxBytesPerShard := 67108865} = false := by decide

theorem omitted_shard_action_rejected : planWithin {fixturePlan with
    shards := [⟨[0, 1], 1⟩, ⟨[2], 0⟩]} = false := by decide

theorem repeated_shard_action_rejected : planWithin {fixturePlan with
    shards := [⟨[0, 1], 1⟩, ⟨[1, 3], 3⟩]} = false := by decide

theorem reordered_shard_actions_rejected : planWithin {fixturePlan with
    shards := [⟨[1, 0], 1⟩, ⟨[2, 3], 2⟩]} = false := by decide

theorem empty_shard_rejected : planWithin {fixturePlan with
    shards := [⟨[], 0⟩, ⟨[0, 1], 1⟩, ⟨[2, 3], 2⟩]} = false := by decide

theorem inaccurate_shard_byte_sum_rejected : planWithin {fixturePlan with
    shards := [⟨[0, 1], 0⟩, ⟨[2, 3], 2⟩]} = false := by decide

theorem shard_byte_budget_excess_rejected : planWithin {fixturePlan with
    maxFilesPerShard := 4, shards := [⟨[0, 1, 2, 3], 3⟩]} = false := by decide

theorem shard_file_budget_excess_rejected : planWithin {fixturePlan with
    maxFilesPerShard := 1} = false := by decide

theorem invalid_lookup_rejected : shardWithin [0] 1 1 ⟨[1], 0⟩ = false := by decide

theorem empty_actions_need_no_shards : shardsWithin [] [] 1 1 = true := by decide

theorem empty_actions_reject_nonempty_shard : shardsWithin [] [⟨[0], 0⟩] 1 1 = false := by decide

end GRWTSK.PlanResources
```
