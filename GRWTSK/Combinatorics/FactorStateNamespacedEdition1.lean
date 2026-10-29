-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.State.Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.State.Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SUCAS/FactorState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

/-!
# Certified finite factor states

Prime scales, valuation depths, and a shrinking exact proper-divisor horizon are
distinct. These arithmetic certificates provide no scheduler or complexity claim.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.State.Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59

namespace FormalResearch.SUCAS.FactorState

/-- Every composite positive residual has a prime divisor inside its integer horizon. -/
theorem composite_has_small_prime_divisor {n : ℕ} (h2 : 2 ≤ n) (hn : ¬n.Prime) :
    ∃ p, p.Prime ∧ p ≤ Nat.sqrt n ∧ p ∣ n := by
  have hnot : ¬ ∀ m, 2 ≤ m → m ≤ Nat.sqrt n → ¬m ∣ n := by
    intro h
    exact hn (Nat.prime_def_le_sqrt.mpr ⟨h2, h⟩)
  push Not at hnot
  obtain ⟨m, hm, hmn, hmdvd⟩ := hnot
  obtain ⟨p, hp, hpdvd⟩ := Nat.exists_prime_and_dvd (by omega : m ≠ 1)
  exact ⟨p, hp, (Nat.le_of_dvd (by omega) hpdvd).trans hmn, hpdvd.trans hmdvd⟩

/-- Proper observations on a larger declared finite range suffice for primality. -/
theorem prime_of_exhausted_horizon {n X : ℕ} (h2 : 2 ≤ n) (hnX : n ≤ X)
    (hex : ∀ p, p.Prime → p ≤ Nat.sqrt X → p ∣ n → p = n) : n.Prime := by
  by_contra hn
  obtain ⟨p, hp, hpn, hpdvd⟩ := composite_has_small_prime_divisor h2 hn
  have heq := hex p hp (hpn.trans (Nat.sqrt_le_sqrt hnX)) hpdvd
  have hlt := Nat.sqrt_lt_self h2
  omega

/-- No tested small divisor is a conclusion only when every prime scale was covered. -/
theorem prime_of_all_small_primes_excluded {n : ℕ} (h2 : 2 ≤ n)
    (hex : ∀ p, p.Prime → p ≤ Nat.sqrt n → ¬p ∣ n) : n.Prime :=
  prime_of_exhausted_horizon h2 le_rfl fun p hp hbound hdvd =>
    (hex p hp hbound hdvd).elim

/-- A certified negative divisibility observation persists under every residual divisor. -/
theorem exclusion_persists {p before after : ℕ} (h : ¬p ∣ before)
    (hdiv : after ∣ before) : ¬p ∣ after := fun hdvd => h (hdvd.trans hdiv)

/-- Integer square-root horizons are monotone; contraction need not be strict. -/
theorem horizon_contracts {before after : ℕ} (h : after ≤ before) :
    Nat.sqrt after ≤ Nat.sqrt before := Nat.sqrt_le_sqrt h

/-- A canonical finite map: zero entries are absent from its support. -/
abbrev PrimePowers := ℕ →₀ ℕ

/-- The integer reconstructed from the positive exponents of the map. -/
def primeProduct (f : PrimePowers) : ℕ := f.prod (fun p e => p ^ e)

/-- Every stored scale is prime. Positive depth follows from membership in support. -/
def PrimeMap (f : PrimePowers) : Prop := ∀ p ∈ f.support, p.Prime

theorem primeProduct_add (f g : PrimePowers) :
    primeProduct (f + g) = primeProduct f * primeProduct g := by
  exact Finsupp.prod_add_index' (fun _ => pow_zero _) (fun _ _ _ => pow_add _ _ _)

theorem primeProduct_single (p e : ℕ) :
    primeProduct (Finsupp.single p e) = p ^ e := by
  simp [primeProduct]

theorem primeProduct_pos {f : PrimePowers} (h : PrimeMap f) : 0 < primeProduct f := by
  apply Finset.prod_pos
  intro p hp
  exact pow_pos (h p hp).pos _

theorem primeMap_add {f g : PrimePowers} (hf : PrimeMap f) (hg : PrimeMap g) :
    PrimeMap (f + g) := by
  intro p hp
  obtain hp | hp := Finset.mem_union.mp (Finsupp.support_add hp)
  · exact hf p hp
  · exact hg p hp

theorem primeMap_single {p e : ℕ} (hp : p.Prime) : PrimeMap (Finsupp.single p e) := by
  intro q hq
  have hqp : q = p := by
    by_contra hne
    simp [Finsupp.mem_support_iff, Finsupp.single_eq_of_ne hne] at hq
  simpa [hqp] using hp

/-- Checked state. The original integer is a type index and cannot change in a transition. -/
structure State (N : ℕ) where
  original_gt_one : 1 < N
  /-- The positive integer whose prime-power decomposition remains unresolved. -/
  residual : ℕ
  residual_pos : 0 < residual
  /-- Canonical prime-to-depth map of all fully extracted prime powers. -/
  extracted : PrimePowers
  extracted_primes : PrimeMap extracted
  conservation : N = residual * primeProduct extracted
  extracted_resolved : ∀ p ∈ extracted.support, ¬p ∣ residual
  /-- Prime scales with retained certificates of nondivisibility of the residual. -/
  excluded : Finset ℕ
  excluded_primes : ∀ p ∈ excluded, p.Prime
  excluded_sound : ∀ p ∈ excluded, ¬p ∣ residual

/-- The horizon is computed from the actual residual, never a stale mutable field. -/
def State.horizon {N : ℕ} (s : State N) : ℕ := Nat.sqrt s.residual

/-- A fresh state carries no positive or negative observations. -/
def initial (N : ℕ) (hN : 1 < N) : State N where
  original_gt_one := hN
  residual := N
  residual_pos := by omega
  extracted := 0
  extracted_primes := by simp [PrimeMap]
  conservation := by simp [primeProduct]
  extracted_resolved := by simp
  excluded := ∅
  excluded_primes := by simp
  excluded_sound := by simp

/-- Full extraction requires the equality and a nondivisible positive remainder. -/
structure ExactExtraction (R p e after : ℕ) : Prop where
  prime : p.Prime
  depth_pos : 0 < e
  after_pos : 0 < after
  split : R = p ^ e * after
  remainder : ¬p ∣ after

/-- The certificate's claimed exponent equals the actual natural prime valuation. -/
theorem ExactExtraction.valuation {R p e after : ℕ} (c : ExactExtraction R p e after) :
    R.factorization p = e := by
  rw [c.split, Nat.factorization_mul (pow_ne_zero _ c.prime.ne_zero) c.after_pos.ne']
  simp [c.prime.factorization_pow, Nat.factorization_eq_zero_of_not_dvd c.remainder]

theorem ExactExtraction.after_dvd {R p e after : ℕ} (c : ExactExtraction R p e after) :
    after ∣ R := by
  rw [c.split]
  exact dvd_mul_left _ _

theorem ExactExtraction.prime_dvd {R p e after : ℕ} (c : ExactExtraction R p e after) :
    p ∣ R := by
  rw [c.split]
  exact dvd_mul_of_dvd_left (dvd_pow_self _ c.depth_pos.ne') _

theorem ExactExtraction.shrinks {R p e after : ℕ} (c : ExactExtraction R p e after) :
    after < R := by
  rw [c.split]
  have hp : 1 < p ^ e := one_lt_pow₀ c.prime.one_lt c.depth_pos.ne'
  nlinarith [c.after_pos]

theorem ExactExtraction.horizon_contracts {R p e after : ℕ}
    (c : ExactExtraction R p e after) : Nat.sqrt after ≤ Nat.sqrt R :=
  Nat.sqrt_le_sqrt c.shrinks.le

/-- An already fully extracted scale cannot be extracted again from the residual. -/
theorem extraction_scale_fresh {N p e after : ℕ} (s : State N)
    (c : ExactExtraction s.residual p e after) : p ∉ s.extracted.support := by
  intro hp
  exact s.extracted_resolved p hp c.prime_dvd

/-- Full extraction preserves all old exclusions and records the newly exhausted scale. -/
noncomputable def extract {N p e after : ℕ} (s : State N)
    (c : ExactExtraction s.residual p e after) :
    State N where
  original_gt_one := s.original_gt_one
  residual := after
  residual_pos := c.after_pos
  extracted := s.extracted + Finsupp.single p e
  extracted_primes := primeMap_add s.extracted_primes (primeMap_single c.prime)
  conservation := by
    apply s.conservation.trans
    rw [c.split, primeProduct_add, primeProduct_single]
    ac_rfl
  extracted_resolved := by
    intro q hq
    obtain hq | hq := Finset.mem_union.mp (Finsupp.support_add hq)
    · exact exclusion_persists (s.extracted_resolved q hq) c.after_dvd
    · have hqp : q = p := by
        by_contra hne
        simp [Finsupp.mem_support_iff, Finsupp.single_eq_of_ne hne] at hq
      subst q
      exact c.remainder
  excluded := insert p s.excluded
  excluded_primes := by
    intro q hq
    obtain rfl | hq := Finset.mem_insert.mp hq
    · exact c.prime
    · exact s.excluded_primes q hq
  excluded_sound := by
    intro q hq
    obtain rfl | hq := Finset.mem_insert.mp hq
    · exact c.remainder
    · exact exclusion_persists (s.excluded_sound q hq) c.after_dvd

/-- Negative scale observations do not change the residual or the extracted factors. -/
def exclude {N p : ℕ} (s : State N) (hp : p.Prime) (h : ¬p ∣ s.residual) : State N :=
  { s with
    excluded := insert p s.excluded
    excluded_primes := by
      intro q hq
      obtain rfl | hq := Finset.mem_insert.mp hq
      · exact hp
      · exact s.excluded_primes q hq
    excluded_sound := by
      intro q hq
      obtain rfl | hq := Finset.mem_insert.mp hq
      · exact h
      · exact s.excluded_sound q hq }

/-- Every completed extraction has the full original valuation at its stored scale. -/
theorem State.extracted_exact {N p : ℕ} (s : State N) (hp : p ∈ s.extracted.support) :
    N.factorization p = s.extracted p := by
  calc
    N.factorization p = (s.residual * primeProduct s.extracted).factorization p :=
      congrArg (fun n : ℕ => n.factorization p) s.conservation
    _ = s.extracted p := ?_
  rw [Nat.factorization_mul s.residual_pos.ne' (primeProduct_pos s.extracted_primes).ne']
  rw [primeProduct, Nat.prod_pow_factorization_eq_self s.extracted_primes]
  simp [Nat.factorization_eq_zero_of_not_dvd (s.extracted_resolved p hp)]

/-- A closed prime-power factorization, with exact integer reconstruction. -/
structure CompleteFactorization (N : ℕ) where
  /-- Complete canonical prime-power map reconstructing the original integer. -/
  factors : PrimePowers
  primes : PrimeMap factors
  reconstruction : N = primeProduct factors

/-- Reconstruction with prime keys determines all valuations uniquely. -/
theorem CompleteFactorization.exact {N : ℕ} (c : CompleteFactorization N) :
    N.factorization = c.factors := by
  calc
    N.factorization = (primeProduct c.factors).factorization :=
      congrArg Nat.factorization c.reconstruction
    _ = c.factors := Nat.prod_pow_factorization_eq_self c.primes

/-- Terminal evidence that no unresolved factor remains. -/
structure ResidualOne {N : ℕ} (s : State N) : Prop where
  equals_one : s.residual = 1

/-- Distinct terminal evidence that the remaining unresolved integer is itself prime. -/
structure PrimeResidual {N : ℕ} (s : State N) : Prop where
  prime : s.residual.Prime

/-- An exhaustive set of checked negative scales constructs a prime terminal certificate. -/
theorem primeResidual_of_coverage {N : ℕ} (s : State N) (h2 : 2 ≤ s.residual)
    (coverage : ∀ p, p.Prime → p ≤ s.horizon → p ∈ s.excluded) : PrimeResidual s := by
  constructor
  apply prime_of_all_small_primes_excluded h2
  intro p hp hbound
  exact s.excluded_sound p (coverage p hp hbound)

/-- Closing at residual one uses precisely the already extracted map. -/
def closeOne {N : ℕ} (s : State N) (c : ResidualOne s) : CompleteFactorization N where
  factors := s.extracted
  primes := s.extracted_primes
  reconstruction := by simpa [c.equals_one] using s.conservation

/-- Closing at a prime residual appends that prime with valuation one. -/
noncomputable def closePrime {N : ℕ} (s : State N) (c : PrimeResidual s) :
    CompleteFactorization N where
  factors := s.extracted + Finsupp.single s.residual 1
  primes := primeMap_add s.extracted_primes (primeMap_single c.prime)
  reconstruction := by
    apply s.conservation.trans
    rw [primeProduct_add, primeProduct_single, pow_one]
    exact Nat.mul_comm _ _

theorem terminal_cases_disjoint {N : ℕ} (s : State N) :
    ¬ (ResidualOne s ∧ PrimeResidual s) := by
  rintro ⟨h1, hp⟩
  exact hp.prime.ne_one h1.equals_one

theorem closePrime_last_depth {N : ℕ} (s : State N) (c : PrimeResidual s) :
    (closePrime s c).factors s.residual = 1 := by
  have hzero : s.extracted s.residual = 0 := by
    by_contra h
    exact s.extracted_resolved s.residual (Finsupp.mem_support_iff.mpr h) (dvd_refl _)
  simp [closePrime, hzero]

/-- A refinement records its additional prime powers and the exact local conservation law. -/
structure Refinement {N : ℕ} (before after : State N) where
  /-- Additional prime powers removed from the residual by this refinement. -/
  added : PrimePowers
  added_primes : PrimeMap added
  residual_split : before.residual = after.residual * primeProduct added
  extracted_update : after.extracted = before.extracted + added
  exclusions_preserved : before.excluded ⊆ after.excluded

theorem Refinement.residual_dvd {N : ℕ} {s t : State N} (c : Refinement s t) :
    t.residual ∣ s.residual := by
  rw [c.residual_split]
  exact dvd_mul_right _ _

theorem Refinement.negative_persists {N p : ℕ} {s t : State N} (c : Refinement s t)
    (h : ¬p ∣ s.residual) : ¬p ∣ t.residual := exclusion_persists h c.residual_dvd

theorem Refinement.horizon_contracts {N : ℕ} {s t : State N} (c : Refinement s t) :
    t.horizon ≤ s.horizon :=
  Nat.sqrt_le_sqrt (Nat.le_of_dvd s.residual_pos c.residual_dvd)

/-- The conservation check composes; no theorem authority is taken from a gain statistic. -/
noncomputable def Refinement.trans {N : ℕ} {s t u : State N}
    (first : Refinement s t) (second : Refinement t u) : Refinement s u where
  added := first.added + second.added
  added_primes := primeMap_add first.added_primes second.added_primes
  residual_split := by
    rw [first.residual_split, second.residual_split, primeProduct_add]
    ac_rfl
  extracted_update := by rw [second.extracted_update, first.extracted_update, add_assoc]
  exclusions_preserved := first.exclusions_preserved.trans second.exclusions_preserved

/-- Global integer reconstruction follows from the input invariant and local certificate. -/
theorem Refinement.preserves_conservation {N : ℕ} {s t : State N} (c : Refinement s t) :
    N = t.residual * primeProduct t.extracted := by
  apply s.conservation.trans
  rw [c.residual_split, c.extracted_update, primeProduct_add]
  ac_rfl

/-- Embed one checked full extraction into the composable refinement interface. -/
noncomputable def extractionRefinement {N p e after : ℕ} (s : State N)
    (c : ExactExtraction s.residual p e after) : Refinement s (extract s c) where
  added := Finsupp.single p e
  added_primes := primeMap_single c.prime
  residual_split := by simpa [extract, primeProduct_single, Nat.mul_comm] using c.split
  extracted_update := rfl
  exclusions_preserved := Finset.subset_insert _ _

/-- A generic divisor certificate splits unresolved scales without declaring either factor prime. -/
structure DivisorSplit (R : ℕ) where
  /-- Checked nontrivial divisor; it need not itself be prime. -/
  divisor : ℕ
  /-- Checked complementary factor; its prime scales remain unresolved. -/
  quotient : ℕ
  divisor_gt_one : 1 < divisor
  divisor_lt : divisor < R
  quotient_gt_one : 1 < quotient
  equality : R = divisor * quotient

theorem DivisorSplit.composite {R : ℕ} (c : DivisorSplit R) : ¬R.Prime := by
  apply Nat.not_prime_of_dvd_of_lt ?_ c.divisor_gt_one c.divisor_lt
  exact ⟨c.quotient, c.equality⟩

/-- Exact division and equality guards validate an algorithm-produced nontrivial divisor. -/
def certifyDivisorSplit {R d : ℕ} (hd : 1 < d) (hproper : d < R) (hdiv : d ∣ R) :
    DivisorSplit R where
  divisor := d
  quotient := R / d
  divisor_gt_one := hd
  divisor_lt := hproper
  quotient_gt_one := by
    have heq : R = d * (R / d) := (Nat.mul_div_cancel' hdiv).symm
    by_contra h
    have hle : R / d ≤ 1 := by omega
    nlinarith
  equality := (Nat.mul_div_cancel' hdiv).symm

theorem DivisorSplit.preserves_conservation {N R P : ℕ} (c : DivisorSplit R)
    (h : N = R * P) : N = c.divisor * (c.quotient * P) := by
  apply h.trans
  calc
    R * P = (c.divisor * c.quotient) * P := congrArg (fun n => n * P) c.equality
    _ = c.divisor * (c.quotient * P) := Nat.mul_assoc _ _ _

theorem DivisorSplit.horizons_contract {R : ℕ} (c : DivisorSplit R) :
    Nat.sqrt c.divisor ≤ Nat.sqrt R ∧ Nat.sqrt c.quotient ≤ Nat.sqrt R := by
  refine ⟨Nat.sqrt_le_sqrt c.divisor_lt.le, Nat.sqrt_le_sqrt ?_⟩
  have hR : 0 < R := (Nat.zero_lt_one.trans c.divisor_gt_one).trans c.divisor_lt
  exact Nat.le_of_dvd hR ⟨c.divisor, by simpa [Nat.mul_comm] using c.equality⟩

/-! ## Closed positive and hostile arithmetic fixtures -/

theorem fixture_two_terminal : PrimeResidual (initial 2 (by omega)) := by
  apply primeResidual_of_coverage _ (by decide)
  intro p hp hbound
  have hp2 := hp.two_le
  norm_num [State.horizon, initial] at hbound
  omega

theorem fixture_three_terminal : PrimeResidual (initial 3 (by omega)) := by
  apply primeResidual_of_coverage _ (by decide)
  intro p hp hbound
  have hp2 := hp.two_le
  norm_num [State.horizon, initial] at hbound
  omega

theorem fixture_four_extraction : ExactExtraction 4 2 2 1 := by
  constructor <;> norm_num

theorem fixture_four_terminal :
    ResidualOne (extract (initial 4 (by omega)) fixture_four_extraction) := ⟨rfl⟩

theorem fixture_four_not_prime_terminal :
    ¬PrimeResidual (extract (initial 4 (by omega)) fixture_four_extraction) := by
  intro hp
  exact terminal_cases_disjoint _ ⟨fixture_four_terminal, hp⟩

theorem fixture_four_complete :
    (closeOne _ fixture_four_terminal).factors = (4 : ℕ).factorization :=
  (closeOne _ fixture_four_terminal).exact.symm

theorem fixture_twelve_extraction : ExactExtraction 12 2 2 3 := by
  constructor <;> norm_num

/-- Fixture state after fully extracting the power two squared from twelve. -/
noncomputable def twelveAfter : State 12 :=
  extract (initial 12 (by omega)) fixture_twelve_extraction

theorem fixture_twelve_horizon :
    (initial 12 (by omega)).horizon = 3 ∧ twelveAfter.horizon = 1 := by
  norm_num [State.horizon, initial, twelveAfter, extract]

theorem fixture_twelve_prime_terminal : PrimeResidual twelveAfter := by
  apply primeResidual_of_coverage _ (by decide)
  intro p hp hbound
  have hp2 := hp.two_le
  rw [fixture_twelve_horizon.2] at hbound
  omega

theorem fixture_twelve_complete :
    (closePrime twelveAfter fixture_twelve_prime_terminal).factors = (12 : ℕ).factorization :=
  (closePrime twelveAfter fixture_twelve_prime_terminal).exact.symm

theorem fixture_three_extraction : ExactExtraction 3 3 1 1 := by
  constructor <;> norm_num

theorem fixture_twelve_composition :
    12 = (extract twelveAfter fixture_three_extraction).residual *
      primeProduct (extract twelveAfter fixture_three_extraction).extracted := by
  exact ((extractionRefinement (initial 12 (by omega)) fixture_twelve_extraction).trans
    (extractionRefinement twelveAfter fixture_three_extraction)).preserves_conservation

/-- The still-divisible remainder forbids partial depth from being certified as full extraction. -/
theorem fixture_partial_extraction_rejected : ¬ExactExtraction 12 2 1 6 := by
  intro c
  exact c.remainder (by norm_num)

/-- Divisibility at equality is compatible with primality and never a proper divisor split. -/
theorem fixture_prime_equality_guard {p : ℕ} (hp : p.Prime) :
    p ∣ p ∧ ¬p < p ∧ ¬Nonempty (DivisorSplit p) := by
  refine ⟨dvd_refl p, lt_irrefl p, ?_⟩
  rintro ⟨c⟩
  exact c.composite hp

/-- An empty exclusion record cannot certify the composite residual four. -/
theorem fixture_missing_horizon_coverage :
    ¬ (∀ p, p.Prime → p ≤ (initial 4 (by omega)).horizon →
      p ∈ (initial 4 (by omega)).excluded) := by
  intro h
  have h2 := h 2 (by norm_num) (by norm_num [State.horizon, initial])
  simp [initial] at h2

/-- A negative record cannot migrate to an unrelated residual where it is false. -/
theorem fixture_unrelated_residual_rejected :
    ¬2 ∣ 13 ∧ 2 ∣ 12 ∧ ¬12 ∣ 13 := by norm_num

/-- An algorithm may split a composite divisor; this does not declare that divisor prime. -/
theorem fixture_composite_divisor_collapse :
    ∃ c : DivisorSplit 36, c.divisor = 6 ∧ c.quotient = 6 ∧ ¬c.divisor.Prime := by
  refine ⟨certifyDivisorSplit (d := 6) (by norm_num) (by norm_num) (by norm_num), ?_⟩
  norm_num [certifyDivisorSplit]

/-- Incorrect divisibility and equality-boundary candidates have no valid split certificate. -/
theorem fixture_bad_divisor_rejected : ¬5 ∣ 12 ∧ ¬12 < 12 := by norm_num

end FormalResearch.SUCAS.FactorState
