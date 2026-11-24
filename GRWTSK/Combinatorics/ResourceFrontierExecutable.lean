import GRWTSK.Combinatorics.ResourceFrontierWorklist

/-!
# Computable proof-producing frontier worklist
Math #1851 / PR #1853. SOURCE_PROOF_CANDIDATE, NOT_RUN.
Use an explicitly supplied finite enumeration with membership and completeness
proofs. Routes are data (seed and edge chain), with erased membership proofs.
Every productive round rebuilds the candidate queue, scans until the first
uncovered label, prunes, then retires the old queue suffix. This deliberately
chooses a simple deterministic algorithm over a more efficient stale FIFO.
Fuel exhaustion returns pending, never a completeness certificate.
The mathematical termination proof is Dickson well-foundedness of Grow.
Queue counters count logical records/scan slots, not physical bytes, RSS,
machine instructions or elapsed latency. No native_decide or runner authority.
-/
set_option autoImplicit false

namespace GRWTSK.ResourceAttainability.Worklist.Executable

variable {n : Nat} {G : FiniteCostGraph n}

def leB (a b : Label n) : Bool :=
  decide (a.1 = b.1) &&
    (decide (a.2 0 ≤ b.2 0) &&
      (decide (a.2 1 ≤ b.2 1) &&
        (decide (a.2 2 ≤ b.2 2) && decide (a.2 3 ≤ b.2 3))))

theorem leB_iff (a b : Label n) : leB a b = true ↔ labelLE a b := by
  have h : leB a b = true ↔
      a.1 = b.1 ∧ a.2 0 ≤ b.2 0 ∧ a.2 1 ≤ b.2 1 ∧
      a.2 2 ≤ b.2 2 ∧ a.2 3 ≤ b.2 3 := by simp [leB]
  rw [h]
  constructor
  · rintro ⟨hv,h0,h1,h2,h3⟩
    refine ⟨hv, ?_⟩
    intro i
    fin_cases i
    · exact h0
    · exact h1
    · exact h2
    · exact h3
  · intro hab
    exact ⟨hab.1, hab.2 0, hab.2 1, hab.2 2, hab.2 3⟩

/-- Unlike Path (a Prop), Route retains the replayable abstract path as data. -/
inductive Route (G : FiniteCostGraph n) : Label n → Type where
  | seed (x : Label n) (h : x ∈ G.seeds) : Route G x
  | extend {x : Label n} (r : Route G x) (e : Edge n)
      (he : e ∈ G.edges) (hs : e.1 = x.1) : Route G (advance x e)

theorem Route.sound {x : Label n} (r : Route G x) : Path G x := by
  induction r with
  | seed _ h => exact Path.seed h
  | extend _ _ he hs ih => exact Path.extend ih he hs

structure Entry (G : FiniteCostGraph n) where
  label : Label n
  route : Route G label

structure Input (G : FiniteCostGraph n) where
  seeds : List {x : Label n // x ∈ G.seeds}
  edges : List {e : Edge n // e ∈ G.edges}
  seedsComplete : ∀ x ∈ G.seeds, ∃ y ∈ seeds, y.val = x
  edgesComplete : ∀ e ∈ G.edges, ∃ d ∈ edges, d.val = e

noncomputable def labels (F : List (Entry G)) : Frontier n := by
  classical
  exact (F.map Entry.label).toFinset

theorem mem_labels (F : List (Entry G)) (x : Label n) :
    x ∈ labels F ↔ ∃ a ∈ F, a.label = x := by
  classical
  simp [labels]

theorem labels_sound (F : List (Entry G)) : Sound G (labels F) := by
  intro x hx
  obtain ⟨a, _, rfl⟩ := (mem_labels F x).1 hx
  exact a.route.sound

def coveredB (F : List (Entry G)) (x : Label n) : Bool :=
  F.any (fun a => leB a.label x)

theorem coveredB_iff (F : List (Entry G)) (x : Label n) :
    coveredB F x = true ↔ Covered (labels F) x := by
  rw [coveredB, List.any_eq_true]
  constructor
  · rintro ⟨a, ha, hax⟩
    exact ⟨a.label, (mem_labels F _).2 ⟨a,ha,rfl⟩, (leB_iff _ _).1 hax⟩
  · rintro ⟨y, hy, hyx⟩
    obtain ⟨a, ha, rfl⟩ := (mem_labels F y).1 hy
    exact ⟨a, ha, (leB_iff _ _).2 hyx⟩

def keep (F : List (Entry G)) (x : Entry G) : List (Entry G) :=
  x :: F.filter (fun a => !(leB x.label a.label))

theorem labels_keep (F : List (Entry G)) (x : Entry G)
    (fresh : ¬ Covered (labels F) x.label) :
    labels (keep F x) = insertLabel (labels F) x.label := by
  classical
  ext z
  rw [mem_insertLabel_new _ _ _ fresh, mem_labels]
  constructor
  · rintro ⟨a, ha, rfl⟩
    rcases List.mem_cons.mp ha with rfl | ha'
    · exact Or.inl rfl
    · obtain ⟨haF, hnot⟩ := List.mem_filter.mp ha'
      refine Or.inr ⟨(mem_labels F _).2 ⟨a,haF,rfl⟩, ?_⟩
      intro h
      have ht := (leB_iff _ _).2 h
      simp [ht] at hnot
  · rintro (rfl | ⟨hz, hnot⟩)
    · exact ⟨x, by simp [keep], rfl⟩
    · obtain ⟨a, ha, rfl⟩ := (mem_labels F z).1 hz
      have hf : leB x.label a.label = false := by
        cases h : leB x.label a.label
        · rfl
        · exact (hnot ((leB_iff _ _).1 h)).elim
      exact ⟨a, List.mem_cons.mpr (Or.inr (List.mem_filter.mpr ⟨ha, by simp [hf]⟩)), rfl⟩

def seedEntry (x : {x : Label n // x ∈ G.seeds}) : Entry G :=
  ⟨x.val, Route.seed x.val x.property⟩

def edgeEntry (a : Entry G) (e : {e : Edge n // e ∈ G.edges}) :
    Option (Entry G) :=
  if h : e.val.1 = a.label.1 then
    some ⟨advance a.label e.val, Route.extend a.route e.val e.property h⟩
  else none

def queue (I : Input G) (F : List (Entry G)) : List (Entry G) :=
  I.seeds.map seedEntry ++ F.flatMap (fun a => I.edges.filterMap (edgeEntry a))

theorem queue_label_candidate (I : Input G) (F : List (Entry G))
    (x : Entry G) (hx : x ∈ queue I F) :
    x.label ∈ candidates G (labels F) := by
  change x ∈ I.seeds.map seedEntry ++
    F.flatMap (fun a => I.edges.filterMap (edgeEntry a)) at hx
  apply (mem_candidates G _ _).2
  rcases List.mem_append.mp hx with hs | he
  · obtain ⟨a, _, rfl⟩ := List.mem_map.mp hs
    exact Or.inl a.property
  · obtain ⟨a, ha, hb⟩ := List.mem_flatMap.mp he
    obtain ⟨e, _, hval⟩ := List.mem_filterMap.mp hb
    by_cases hsrc : e.val.1 = a.label.1
    · simp [edgeEntry, hsrc] at hval
      subst x
      exact Or.inr ⟨a.label, (mem_labels F _).2 ⟨a,ha,rfl⟩,
        e.val, e.property, hsrc, rfl⟩
    · simp [edgeEntry, hsrc] at hval

theorem queue_complete (I : Input G) (F : List (Entry G))
    {x : Label n} (hx : x ∈ candidates G (labels F)) :
    ∃ a ∈ queue I F, a.label = x := by
  rcases (mem_candidates G _ _).1 hx with hs | ⟨a, ha, e, he, hsrc, hval⟩
  · obtain ⟨s, hm, hkey⟩ := I.seedsComplete x hs
    exact ⟨seedEntry s, List.mem_append.mpr
      (Or.inl (List.mem_map.mpr ⟨s,hm,rfl⟩)), hkey⟩
  · obtain ⟨a', ha', hlabel⟩ := (mem_labels F a).1 ha
    obtain ⟨e', he', hed⟩ := I.edgesComplete e he
    have hh : e'.val.1 = a'.label.1 := by rw [hed, hlabel]; exact hsrc
    let b : Entry G :=
      ⟨advance a'.label e'.val, Route.extend a'.route e'.val e'.property hh⟩
    have hentry : edgeEntry a' e' = some b := by simp [edgeEntry, hh, b]
    refine ⟨b, List.mem_append.mpr (Or.inr (List.mem_flatMap.mpr
      ⟨a',ha', List.mem_filterMap.mpr ⟨e',he',hentry⟩⟩)), ?_⟩
    change advance a'.label e'.val = x
    rw [hlabel, hed, hval]

/-- A finite scan returns either full coverage or a fresh queued witness.
The selected record is included in the pop count. -/
inductive Scan (F : List (Entry G)) (Q : List (Entry G)) : Type where
  | exhausted (all : ∀ x ∈ Q, Covered (labels F) x.label) : Scan F Q
  | found (x : Entry G) (mem : x ∈ Q)
      (fresh : ¬ Covered (labels F) x.label)
      (popped : Nat) (positive : 0 < popped) (bounded : popped ≤ Q.length) : Scan F Q

def scan (F : List (Entry G)) : (Q : List (Entry G)) → Scan F Q
  | [] => .exhausted (by simp)
  | x :: xs =>
    if h : coveredB F x.label = true then
      match scan F xs with
      | .exhausted hall => .exhausted (by
          intro y hy
          rcases List.mem_cons.mp hy with rfl | ht
          · exact (coveredB_iff _ _).1 h
          · exact hall y ht)
      | .found y hy hf p hp hb =>
        .found y (List.mem_cons.mpr (Or.inr hy)) hf (p+1) (by omega) (by simp; omega)
    else .found x (by simp) (fun hc => h ((coveredB_iff _ _).2 hc)) 1
      (by omega) (by simp)

theorem exhausted_closed (I : Input G) (F : List (Entry G))
    (all : ∀ x ∈ queue I F, Covered (labels F) x.label) : Closed G (labels F) := by
  intro x hx
  obtain ⟨a, ha, rfl⟩ := queue_complete I F hx
  exact all a ha

theorem fresh_growth (I : Input G) (F : List (Entry G)) (x : Entry G)
    (hx : x ∈ queue I F) (hf : ¬ Covered (labels F) x.label) :
    Grow G (labels (keep F x)) (labels F) :=
  ⟨x.label, queue_label_candidate I F x hx, hf, labels_keep F x hf⟩

/-- Logical counters. Retired records are not popped; they are destroyed when
the queue is rebuilt. A scan of F costs at most F.length comparisons per pop;
one extra pruning scan per productive round. Edge scan slots are charged even
for nonmatching edges, and queue construction is charged in every round. -/
structure Ledger where
  enqueued : Nat
  popped : Nat
  retired : Nat
  productive : Nat
  compareSlots : Nat
  edgeSlots : Nat
  peakQueue : Nat
  deriving Repr

def Ledger.zero : Ledger := ⟨0,0,0,0,0,0,0⟩

def Ledger.add (a b : Ledger) : Ledger :=
  ⟨a.enqueued+b.enqueued, a.popped+b.popped, a.retired+b.retired,
    a.productive+b.productive, a.compareSlots+b.compareSlots,
    a.edgeSlots+b.edgeSlots, max a.peakQueue b.peakQueue⟩

def roundLedger (I : Input G) (F : List (Entry G)) (q p : Nat) (productive : Bool) : Ledger :=
  ⟨q,p,q-p,if productive then 1 else 0,
    (p + if productive then 1 else 0)*F.length,
    F.length*I.edges.length,q⟩

def Balanced (l : Ledger) : Prop := l.enqueued = l.popped + l.retired

theorem round_balanced (I : Input G) (F : List (Entry G)) (q p : Nat) (b : Bool)
    (hp : p ≤ q) : Balanced (roundLedger I F q p b) := by
  simp only [Balanced, roundLedger]
  omega

theorem balanced_add {a b : Ledger} (ha : Balanced a) (hb : Balanced b) :
    Balanced (a.add b) := by
  simp only [Balanced, Ledger.add] at *
  omega

/-- A returned complete frontier contains route data and kernel propositions
for closedness and reducedness. Pending is explicitly not a certificate. -/
inductive Result (G : FiniteCostGraph n) : Type where
  | pending (F : List (Entry G)) (ledger : Ledger)
  | complete (F : List (Entry G)) (ledger : Ledger)
      (closed : Closed G (labels F)) (reduced : Reduced (labels F))

def Result.isComplete : Result G → Bool
  | .pending .. => false
  | .complete .. => true

def Result.ledger : Result G → Ledger
  | .pending _ l => l
  | .complete _ l _ _ => l

def Result.prepend (l : Ledger) : Result G → Result G
  | .pending F q => .pending F (l.add q)
  | .complete F q hc hr => .complete F (l.add q) hc hr

@[simp] theorem Result.prepend_complete (l : Ledger) (r : Result G) :
    (r.prepend l).isComplete = r.isComplete := by cases r <;> rfl

@[simp] theorem Result.prepend_ledger (l : Ledger) (r : Result G) :
    (r.prepend l).ledger = l.add r.ledger := by cases r <;> rfl

def runFuel (I : Input G) : (fuel : Nat) → (F : List (Entry G)) →
    Reduced (labels F) → Result G
  | 0,F,_ => .pending F Ledger.zero
  | k+1,F,hr =>
    let Q := queue I F
    match scan F Q with
    | .exhausted hall =>
      .complete F (roundLedger I F Q.length Q.length false)
        (exhausted_closed I F hall) hr
    | .found x hx hf p _ _ =>
      have hr' : Reduced (labels (keep F x)) := by
        rw [labels_keep F x hf]
        exact insert_reduced _ _ hr
      (runFuel I k (keep F x) hr').prepend (roundLedger I F Q.length p true)

theorem runFuel_balanced (I : Input G) (fuel : Nat) (F : List (Entry G))
    (hr : Reduced (labels F)) : Balanced (runFuel I fuel F hr).ledger := by
  induction fuel generalizing F with
  | zero => rfl
  | succ k ih =>
    unfold runFuel
    split
    · exact round_balanced _ _ _ _ _ le_rfl
    · rename_i x hx hf p hp hb
      rw [Result.prepend_ledger]
      exact balanced_add (round_balanced _ _ _ _ _ hb) (ih _ _)

/-- Every finite graph admits sufficient fuel, by the same Dickson relation
as the specification. No numerical universal fuel bound is assumed. -/
theorem eventually_complete (I : Input G) (F : List (Entry G))
    (hr : Reduced (labels F)) :
    ∃ k, (runFuel I k F hr).isComplete = true := by
  have main : ∀ f : Frontier n, ∀ E : List (Entry G),
      labels E = f → ∀ h : Reduced (labels E),
      ∃ k, (runFuel I k E h).isComplete = true := by
    intro f
    refine (grow_wellFounded G).induction f ?_
    intro f ih E he hR
    subst f
    cases hscan : scan E (queue I E) with
    | exhausted hall =>
      exact ⟨1, by simp [runFuel, hscan, Result.isComplete]⟩
    | found x hx hf p hp hb =>
      have hnew : Reduced (labels (keep E x)) := by
        rw [labels_keep E x hf]
        exact insert_reduced _ _ hR
      obtain ⟨k,hk⟩ := ih _ (fresh_growth I E x hx hf) _ rfl hnew
      exact ⟨k+1, by simpa [runFuel,hscan] using hk⟩
  exact main _ F rfl hr

/-- A complete output certifies all and only the abstract path region. -/
theorem complete_exact (F : List (Entry G)) (hc : Closed G (labels F)) (x : Label n) :
    Covered (labels F) x ↔ ∃ y, Path G y ∧ labelLE y x :=
  closed_sound_iff_path G _ (labels_sound F) hc x

end GRWTSK.ResourceAttainability.Worklist.Executable
