import GRWTSK.Combinatorics.ResourcePayloadComposition

/-!
# Finite abstract resource-frontier saturation

Math #1851; Sofic #10 A07. SOURCE_PROOF_CANDIDATE: elaboration, fresh
kernel replay, transitive axiom audit and independent review NOT_RUN.
The graph is a finite lower-cost abstraction, not an execution oracle.
Only productive insertions are transitions; an implementation with
additional queue housekeeping needs its own termination argument.
The Finset specification uses classical finite decisions. No executable
binary or physical cost bound is asserted.

ResourceAttainability.lean blob 8ec06bac1a36bb3ab4a5ea3573fbb6130802b49c;
ResourcePayloadComposition.lean blob 93ad34bd3a7dacb89bd83a3fd642cef01bfc6548.
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612:
WellQuasiOrder.lean (Dickson/WQO), WellFounded.lean (descending chains).
-/

set_option autoImplicit false

namespace GRWTSK.ResourceAttainability.Worklist

def serialCost (a b : ResourceVec) : ResourceVec :=
  fun i => if i = 0 ∨ i = 2 then max (a i) (b i) else a i + b i

theorem serialCost_mono {a b c d : ResourceVec}
    (ha : a ≤ c) (hb : b ≤ d) :
    serialCost a b ≤ serialCost c d := by
  intro i
  by_cases h : i = 0 ∨ i = 2
  · simpa [serialCost, h] using max_le_max (ha i) (hb i)
  · simpa [serialCost, h] using Nat.add_le_add (ha i) (hb i)

theorem serialCost_assoc (a b c : ResourceVec) :
    serialCost (serialCost a b) c = serialCost a (serialCost b c) := by
  funext i
  by_cases h : i = 0 ∨ i = 2
  · simp [serialCost, h, max_assoc]
  · simp [serialCost, h, Nat.add_assoc]

theorem serialCost_zero_left (a : ResourceVec) : serialCost 0 a = a := by
  funext i
  by_cases h : i = 0 ∨ i = 2 <;> simp [serialCost, h]

theorem serialCost_zero_right (a : ResourceVec) : serialCost a 0 = a := by
  funext i
  by_cases h : i = 0 ∨ i = 2 <;> simp [serialCost, h]

abbrev Label (n : Nat) := Fin n × ResourceVec
abbrev Frontier (n : Nat) := Finset (Label n)
abbrev Edge (n : Nat) := Fin n × Fin n × ResourceVec

variable {n : Nat}

def labelLE (a b : Label n) : Prop := a.1 = b.1 ∧ a.2 ≤ b.2

theorem labelLE_refl (a : Label n) : labelLE a a := ⟨rfl, le_rfl⟩

theorem labelLE_trans {a b c : Label n} (hab : labelLE a b)
    (hbc : labelLE b c) : labelLE a c :=
  ⟨hab.1.trans hbc.1, le_trans hab.2 hbc.2⟩

theorem labelLE_antisymm {a b : Label n} (hab : labelLE a b)
    (hba : labelLE b a) : a = b :=
  Prod.ext hab.1 (le_antisymm hab.2 hba.2)

/-- Encode the finite vertex by two opposite natural coordinates. Comparable
codes have the same vertex, so Dickson applies without ordering vertices. -/
def vertexCode (x : Label n) : Nat × Nat × ResourceVec :=
  (x.1.val, n - x.1.val, x.2)

theorem labelLE_wqo (f : Nat → Label n) :
    ∃ i j, i < j ∧ labelLE (f i) (f j) := by
  have hw : WellQuasiOrdered (fun a b : Nat × Nat × ResourceVec => a ≤ b) :=
    wellQuasiOrdered_le
  obtain ⟨i, j, hij, hle⟩ := hw (fun k => vertexCode (f k))
  change (f i).1.val ≤ (f j).1.val ∧
    n - (f i).1.val ≤ n - (f j).1.val ∧ (f i).2 ≤ (f j).2 at hle
  have hi := (f i).1.isLt
  have hj := (f j).1.isLt
  exact ⟨i, j, hij, Fin.ext (by omega), hle.2.2⟩

def Covered (F : Frontier n) (x : Label n) : Prop :=
  ∃ y ∈ F, labelLE y x

def Reduced (F : Frontier n) : Prop :=
  ∀ a ∈ F, ∀ b ∈ F, labelLE a b → a = b

theorem covered_trans {F : Frontier n} {a b : Label n}
    (ha : Covered F a) (hab : labelLE a b) : Covered F b := by
  obtain ⟨y, hy, hya⟩ := ha
  exact ⟨y, hy, labelLE_trans hya hab⟩

theorem covered_mem {F : Frontier n} {x : Label n} (hx : x ∈ F) :
    Covered F x := ⟨x, hx, labelLE_refl x⟩

noncomputable def insertLabel (F : Frontier n) (x : Label n) : Frontier n := by
  classical
  exact if Covered F x then F else insert x (F.filter fun y => ¬ labelLE x y)

theorem mem_insertLabel_new (F : Frontier n) (x y : Label n)
    (h : ¬ Covered F x) :
    y ∈ insertLabel F x ↔ y = x ∨ y ∈ F ∧ ¬ labelLE x y := by
  classical
  simp [insertLabel, h]

theorem covered_insert_iff (F : Frontier n) (x z : Label n) :
    Covered (insertLabel F x) z ↔ Covered F z ∨ labelLE x z := by
  classical
  by_cases h : Covered F x
  · have heq : insertLabel F x = F := by simp [insertLabel, h]
    rw [heq]
    exact ⟨Or.inl, fun hz => hz.elim id (covered_trans h)⟩
  · constructor
    · rintro ⟨y, hy, hyz⟩
      rcases (mem_insertLabel_new F x y h).1 hy with rfl | ⟨hyF, _⟩
      · exact Or.inr hyz
      · exact Or.inl ⟨y, hyF, hyz⟩
    · intro hz
      have hx : x ∈ insertLabel F x :=
        (mem_insertLabel_new F x x h).2 (Or.inl rfl)
      rcases hz with ⟨y, hy, hyz⟩ | hxz
      · by_cases hxy : labelLE x y
        · exact ⟨x, hx, labelLE_trans hxy hyz⟩
        · exact ⟨y, (mem_insertLabel_new F x y h).2 (Or.inr ⟨hy, hxy⟩), hyz⟩
      · exact ⟨x, hx, hxz⟩

theorem insert_reduced (F : Frontier n) (x : Label n) (hF : Reduced F) :
    Reduced (insertLabel F x) := by
  classical
  by_cases h : Covered F x
  · simpa [insertLabel, h] using hF
  · intro a ha b hb hab
    rcases (mem_insertLabel_new F x a h).1 ha with rfl | ⟨haF, hxa⟩
    · rcases (mem_insertLabel_new F x b h).1 hb with rfl | ⟨_, hxb⟩
      · rfl
      · exact (hxb hab).elim
    · rcases (mem_insertLabel_new F x b h).1 hb with rfl | ⟨hbF, _⟩
      · exact (h ⟨a, haF, hab⟩).elim
      · exact hF a haF b hbF hab

structure FiniteCostGraph (n : Nat) where
  seeds : Frontier n
  edges : Finset (Edge n)

def advance (a : Label n) (e : Edge n) : Label n :=
  (e.2.1, serialCost a.2 e.2.2)

inductive Path (G : FiniteCostGraph n) : Label n → Prop where
  | seed {a : Label n} : a ∈ G.seeds → Path G a
  | extend {a : Label n} {e : Edge n} :
      Path G a → e ∈ G.edges → e.1 = a.1 → Path G (advance a e)

/-- Recompute the finite candidate worklist; order is intentionally free. -/
noncomputable def candidates (G : FiniteCostGraph n) (F : Frontier n) :
    Frontier n := by
  classical
  exact G.seeds ∪ F.biUnion
    (fun a => (G.edges.filter fun e => e.1 = a.1).image (advance a))

theorem mem_candidates (G : FiniteCostGraph n) (F : Frontier n) (x : Label n) :
    x ∈ candidates G F ↔ x ∈ G.seeds ∨
      ∃ a ∈ F, ∃ e ∈ G.edges, e.1 = a.1 ∧ advance a e = x := by
  classical
  simp [candidates, and_assoc]

def Closed (G : FiniteCostGraph n) (F : Frontier n) : Prop :=
  ∀ x ∈ candidates G F, Covered F x

def Sound (G : FiniteCostGraph n) (F : Frontier n) : Prop :=
  ∀ x ∈ F, Path G x

/-- Relation is oriented for well-founded recursion: next, then current. -/
def Grow (G : FiniteCostGraph n) (F' F : Frontier n) : Prop :=
  ∃ x ∈ candidates G F, ¬ Covered F x ∧ F' = insertLabel F x

theorem no_infinite_growth (G : FiniteCostGraph n) (F : Nat → Frontier n)
    (hstep : ∀ k, Grow G (F (k + 1)) (F k)) : False := by
  classical
  simp only [Grow] at hstep
  choose x hx hnew hnext using hstep
  have persist : ∀ k i, i < k → Covered (F k) (x i) := by
    intro k
    induction k with
    | zero => intro i hi; omega
    | succ k ih =>
      intro i hi
      rw [hnext k]
      apply (covered_insert_iff (F k) (x k) (x i)).2
      by_cases heq : i = k
      · subst i
        exact Or.inr (labelLE_refl (x k))
      · exact Or.inl (ih i (by omega))
  obtain ⟨i, j, hij, hle⟩ := labelLE_wqo x
  exact hnew j (covered_trans (persist j i hij) hle)

theorem grow_wellFounded (G : FiniteCostGraph n) : WellFounded (Grow G) := by
  apply wellFounded_iff_isEmpty_descending_chain.2
  exact ⟨fun ⟨F, hF⟩ => no_infinite_growth G F hF⟩

inductive Run (G : FiniteCostGraph n) : Frontier n → Frontier n → Prop where
  | refl (F : Frontier n) : Run G F F
  | step {F H K : Frontier n} : Grow G H F → Run G H K → Run G F K

theorem exists_saturation (G : FiniteCostGraph n) (F : Frontier n) :
    ∃ H, Run G F H ∧ Closed G H := by
  classical
  induction F using (grow_wellFounded G).induction with
  | h F ih =>
    by_cases h : Closed G F
    · exact ⟨F, Run.refl F, h⟩
    · have hex : ∃ x ∈ candidates G F, ¬ Covered F x := by
        unfold Closed at h
        push_neg at h
        exact h
      obtain ⟨x, hx, hnew⟩ := hex
      have hg : Grow G (insertLabel F x) F := ⟨x, hx, hnew, rfl⟩
      obtain ⟨H, hrun, hclosed⟩ := ih _ hg
      exact ⟨H, Run.step hg hrun, hclosed⟩

theorem candidate_sound (G : FiniteCostGraph n) (F : Frontier n)
    (hF : Sound G F) {x : Label n} (hx : x ∈ candidates G F) :
    Path G x := by
  rcases (mem_candidates G F x).1 hx with hs | ⟨a, ha, e, he, hsrc, hax⟩
  · exact Path.seed hs
  · rw [← hax]
    exact Path.extend (hF a ha) he hsrc

theorem grow_sound (G : FiniteCostGraph n) {F H : Frontier n}
    (hF : Sound G F) (hg : Grow G H F) : Sound G H := by
  obtain ⟨x, hx, hnew, rfl⟩ := hg
  intro a ha
  rcases (mem_insertLabel_new F x a hnew).1 ha with rfl | ⟨haF, _⟩
  · exact candidate_sound G F hF hx
  · exact hF a haF

theorem run_sound (G : FiniteCostGraph n) {F H : Frontier n}
    (hr : Run G F H) (hF : Sound G F) : Sound G H := by
  induction hr with
  | refl => exact hF
  | step hg _ ih => exact ih (grow_sound G hF hg)

theorem run_reduced (G : FiniteCostGraph n) {F H : Frontier n}
    (hr : Run G F H) (hF : Reduced F) : Reduced H := by
  induction hr with
  | refl => exact hF
  | step hg _ ih =>
    obtain ⟨x, _, _, rfl⟩ := hg
    exact ih (insert_reduced _ x hF)

theorem path_covered (G : FiniteCostGraph n) (F : Frontier n)
    (hF : Closed G F) {x : Label n} (hp : Path G x) : Covered F x := by
  induction hp with
  | seed hs =>
    exact hF _ ((mem_candidates G F _).2 (Or.inl hs))
  | @extend a e _ he hsrc ih =>
    obtain ⟨b, hb, hba⟩ := ih
    have hsrc' : e.1 = b.1 := hsrc.trans hba.1.symm
    have hcan : advance b e ∈ candidates G F :=
      (mem_candidates G F _).2 (Or.inr ⟨b, hb, e, he, hsrc', rfl⟩)
    exact covered_trans (hF _ hcan) ⟨rfl, serialCost_mono hba.2 le_rfl⟩

/-- Exact upward closure of all abstract paths, not of concrete executions. -/
theorem closed_sound_iff_path (G : FiniteCostGraph n) (F : Frontier n)
    (hs : Sound G F) (hc : Closed G F) (x : Label n) :
    Covered F x ↔ ∃ y, Path G y ∧ labelLE y x := by
  constructor
  · rintro ⟨y, hy, hyx⟩
    exact ⟨y, hs y hy, hyx⟩
  · rintro ⟨y, hy, hyx⟩
    exact covered_trans (path_covered G F hc hy) hyx

theorem reduced_cover_unique {F H : Frontier n}
    (hF : Reduced F) (hH : Reduced H)
    (heq : ∀ x, Covered F x ↔ Covered H x) : F = H := by
  have sub : ∀ (A B : Frontier n), Reduced A →
      (∀ x, Covered A x ↔ Covered B x) → ∀ x ∈ A, x ∈ B := by
    intro A B hA hAB x hx
    obtain ⟨y, hy, hyx⟩ := (hAB x).1 (covered_mem hx)
    obtain ⟨z, hz, hzy⟩ := (hAB y).2 (covered_mem hy)
    have hzx : z = x := hA z hz x hx (labelLE_trans hzy hyx)
    rw [hzx] at hzy
    have hxy : x = y := labelLE_antisymm hzy hyx
    rw [hxy]
    exact hy
  ext x
  exact ⟨sub F H hF heq x, sub H F hH (fun y => (heq y).symm) x⟩

theorem terminal_unique (G : FiniteCostGraph n) {F H : Frontier n}
    (hsF : Sound G F) (hcF : Closed G F) (hrF : Reduced F)
    (hsH : Sound G H) (hcH : Closed G H) (hrH : Reduced H) : F = H :=
  reduced_cover_unique hrF hrH
    (fun x => (closed_sound_iff_path G F hsF hcF x).trans
      (closed_sound_iff_path G H hsH hcH x).symm)

theorem sound_empty (G : FiniteCostGraph n) : Sound G ∅ := by
  intro x hx
  exact (Finset.notMem_empty x hx).elim

theorem reduced_empty : Reduced (∅ : Frontier n) := by
  intro a ha
  exact (Finset.notMem_empty a ha).elim

theorem worklist_order_independent (G : FiniteCostGraph n)
    {F H : Frontier n} (rF : Run G ∅ F) (rH : Run G ∅ H)
    (cF : Closed G F) (cH : Closed G H) : F = H :=
  terminal_unique G (run_sound G rF (sound_empty G)) cF
    (run_reduced G rF reduced_empty)
    (run_sound G rH (sound_empty G)) cH (run_reduced G rH reduced_empty)

/-- Incremental additions preserve path evidence. Deleting/strengthening
an edge is NOT such an addition; affected labels need fresh evidence. -/
theorem path_mono {G H : FiniteCostGraph n}
    (hs : G.seeds ⊆ H.seeds) (he : G.edges ⊆ H.edges)
    {x : Label n} (hp : Path G x) : Path H x := by
  induction hp with
  | seed h => exact Path.seed (hs h)
  | extend _ hedge hsrc ih => exact Path.extend ih (he hedge) hsrc

theorem incremental_saturation {G H : FiniteCostGraph n}
    (hs : G.seeds ⊆ H.seeds) (he : G.edges ⊆ H.edges)
    {F K L : Frontier n} (old : Run G ∅ F)
    (resume : Run H F K) (fresh : Run H ∅ L)
    (ck : Closed H K) (cl : Closed H L) : K = L := by
  have hF : Sound H F := fun x hx =>
    path_mono hs he (run_sound G old (sound_empty G) x hx)
  exact terminal_unique H (run_sound H resume hF) ck
    (run_reduced H resume (run_reduced G old reduced_empty))
    (run_sound H fresh (sound_empty H)) cl (run_reduced H fresh reduced_empty)

/-- Stronger lower bounds / fewer edges: every new path is dominated by
some old path if each new seed and edge has an old lower counterpart.
This shrinks the outer region. It does not justify seeding the new run
with all old labels. -/
theorem refinement_path_cover {G H : FiniteCostGraph n}
    (hs : ∀ a ∈ H.seeds, ∃ b ∈ G.seeds, labelLE b a)
    (he : ∀ e ∈ H.edges, ∃ d ∈ G.edges,
      d.1 = e.1 ∧ d.2.1 = e.2.1 ∧ d.2.2 ≤ e.2.2)
    {a : Label n} (hp : Path H a) :
    ∃ b, Path G b ∧ labelLE b a := by
  induction hp with
  | seed ha =>
    obtain ⟨b, hb, hba⟩ := hs _ ha
    exact ⟨b, Path.seed hb, hba⟩
  | @extend a e _ hedge hsrc ih =>
    obtain ⟨b, hb, hba⟩ := ih
    obtain ⟨d, hd, hds, hdt, hdc⟩ := he e hedge
    exact ⟨advance b d, Path.extend hb hd (hds.trans (hsrc.trans hba.1.symm)),
      hdt, serialCost_mono hba.2 hdc⟩

end GRWTSK.ResourceAttainability.Worklist
