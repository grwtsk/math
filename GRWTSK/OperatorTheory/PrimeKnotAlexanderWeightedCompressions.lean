/-
Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_REVIEW_NOT_RUN.
-/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderEuclideanDifferential

/-!
# Coherent finite compressions of the weighted Alexander incidence source

Supplier: [PrimeKnotAlexanderSpectralTriple](PrimeKnotAlexanderSpectralTriple.lean)
defines Vertex, Source, edgeWeight and Linked. Its separate countable
operator has D0(i,i) = code(i)+1 and
B(i,j) = edgeWeight(i,j) * 2^(-code(i)-code(j)-2).
The [Euclidean finite realization](PrimeKnotAlexanderEuclideanDifferential.lean)
is the previous bounded-operator consumer, but uses an UNWEIGHTED matrix:
its euclideanDiracCLM is not a compression of the infinite weighted D0+B.

This new supplier gives literal finite weighted matrices, zero extension,
restriction, their identity/composition laws, exact Dirac compression,
diagonal representation compression and commutator compression. None
requires an injective enumeration at the FINITE level; injection matters
for the countable analytic norm estimate.

## Countable analytic boundary (not Lean-formalized here)

For V = Prime ⊔ Knot, assume an injection code : V → ℕ, and write
w_i = 2^(-code(i)-1), B_ij = χ_ij w_i w_j with χ_ij in {0,1} symmetric.
Injectivity gives S := Σ_i w_i² ≤ 1/3. For
F_N = {i : code(i) < N}, the omitted square mass satisfies
T_N = Σ_{i∉F_N} w_i² ≤ 4^(-N)/3. With P_N the coordinate projection,

  ‖B - P_N B P_N‖_HS²
  ≤ Σ_{i∉F_N or j∉F_N} w_i² w_j²
  = S² - (S-T_N)² ≤ 2ST_N ≤ (2/9)4^(-N).

Thus ‖B - P_N B P_N‖_op ≤ (sqrt(2)/3) 2^(-N).
For bounded diagonal a the commutator tail has operator norm at most
(2 sqrt(2)/3) ‖a‖∞ 2^(-N). These are mathematical Hilbert-Schmidt
estimates, not formal Lean results of this module.

The actual full unbounded operator D = D0+B has maximal domain
{ξ ∈ ℓ²(V) : Σ_i (code(i)+1)² |ξ_i|² < ∞}. Every finite P_F maps
all ℓ² vectors INTO this domain; P_F D P_F is therefore a bounded
finite-rank full-space operator. On Dom(D), its action is E_F D_F R_F.
Do not identify this with norm convergence of truncated D0.
For ξ in Dom(D), D0(I-P_N)ξ tends to zero in Hilbert norm, while
B-P_NBP_N tends to zero in operator norm. The full-space domain and
HS assertions remain analytic formalization obligations.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

variable {Prime Knot : Type*}

/-- Finite carriers preserve literal original source labels. -/
abbrev SnapshotVertex (F : Finset (Vertex Prime Knot)) :=
  {i : Vertex Prime Knot // i ∈ F}

/-- Genuine L2 geometry on a finite labelled source. -/
abbrev SnapshotHilbert (F : Finset (Vertex Prime Knot)) :=
  EuclideanSpace ℂ (SnapshotVertex F)

/-- Read zero outside a finite snapshot, without renumbering. -/
noncomputable def snapshotRead (F : Finset (Vertex Prime Knot))
    (ξ : SnapshotHilbert F) (i : Vertex Prime Knot) : ℂ := by
  classical
  exact if hi : i ∈ F then ξ ⟨i, hi⟩ else 0

@[simp] theorem snapshotRead_mem (F : Finset (Vertex Prime Knot))
    (ξ : SnapshotHilbert F) (i : SnapshotVertex F) :
    snapshotRead F ξ i.1 = ξ i := by
  classical
  simp [snapshotRead, i.property]

/-- Coordinate restriction along an inclusion of finite carriers. -/
noncomputable def snapshotRestrict {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (ξ : SnapshotHilbert G) : SnapshotHilbert F :=
  WithLp.toLp 2 (fun i => ξ ⟨i.1, hFG i.property⟩)

/-- Zero extension along an inclusion of finite carriers. -/
noncomputable def snapshotExtend {F G : Finset (Vertex Prime Knot)}
    (_hFG : F ⊆ G) (ξ : SnapshotHilbert F) : SnapshotHilbert G :=
  WithLp.toLp 2 (fun i => snapshotRead F ξ i.1)

@[simp] theorem snapshotRestrict_apply {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (ξ : SnapshotHilbert G) (i : SnapshotVertex F) :
    snapshotRestrict hFG ξ i = ξ ⟨i.1, hFG i.property⟩ := rfl

@[simp] theorem snapshotExtend_apply {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (ξ : SnapshotHilbert F) (i : SnapshotVertex G) :
    snapshotExtend hFG ξ i = snapshotRead F ξ i.1 := rfl

/-- Reading a zero-extended vector does not change its ambient coordinates. -/
theorem snapshotRead_extend {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (ξ : SnapshotHilbert F) (i : Vertex Prime Knot) :
    snapshotRead G (snapshotExtend hFG ξ) i = snapshotRead F ξ i := by
  classical
  by_cases hiF : i ∈ F
  · have hiG : i ∈ G := hFG hiF
    simp [snapshotRead, snapshotExtend, hiF, hiG]
  · by_cases hiG : i ∈ G
    · simp [snapshotRead, snapshotExtend, hiF, hiG]
    · simp [snapshotRead, hiF, hiG]

/-- Restriction is a left inverse of zero extension. -/
theorem snapshotRestrict_extend {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (ξ : SnapshotHilbert F) :
    snapshotRestrict hFG (snapshotExtend hFG ξ) = ξ := by
  apply PiLp.ext
  intro i
  simpa only [snapshotRestrict_apply, snapshotExtend_apply] using
    snapshotRead_mem F ξ i

theorem snapshotRestrict_refl (F : Finset (Vertex Prime Knot))
    (ξ : SnapshotHilbert F) :
    snapshotRestrict (subset_rfl : F ⊆ F) ξ = ξ := by
  apply PiLp.ext
  intro i
  rfl

theorem snapshotExtend_refl (F : Finset (Vertex Prime Knot))
    (ξ : SnapshotHilbert F) :
    snapshotExtend (subset_rfl : F ⊆ F) ξ = ξ := by
  apply PiLp.ext
  intro i
  exact snapshotRead_mem F ξ i

theorem snapshotRestrict_comp {F G H : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (hGH : G ⊆ H) (ξ : SnapshotHilbert H) :
    snapshotRestrict (hFG.trans hGH) ξ =
      snapshotRestrict hFG (snapshotRestrict hGH ξ) := by
  apply PiLp.ext
  intro i
  rfl

theorem snapshotExtend_comp {F G H : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (hGH : G ⊆ H) (ξ : SnapshotHilbert F) :
    snapshotExtend hGH (snapshotExtend hFG ξ) =
      snapshotExtend (hFG.trans hGH) ξ := by
  apply PiLp.ext
  intro i
  change snapshotRead G (snapshotExtend hFG ξ) i.1 = snapshotRead F ξ i.1
  exact snapshotRead_extend hFG ξ i.1

/-- Literal source weight, not the unweighted finite incidence matrix. -/
noncomputable def weightedEntry (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (i j : Vertex Prime Knot) : ℂ :=
  (edgeWeight s i j : ℂ) * ((2 : ℂ)⁻¹) ^ (code i + code j + 2)

theorem weightedEntry_symmetric (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (i j : Vertex Prime Knot) :
    weightedEntry s code i j = weightedEntry s code j i := by
  simp only [weightedEntry, edgeWeight_symmetric s i j]
  congr 1
  omega

/-- The original global pointwise representation restricted to F. -/
noncomputable def snapshotAct (F : Finset (Vertex Prime Knot))
    (a : Vertex Prime Knot → ℂ) (ξ : SnapshotHilbert F) : SnapshotHilbert F :=
  WithLp.toLp 2 (fun i => a i.1 * ξ i)

@[simp] theorem snapshotAct_apply (F : Finset (Vertex Prime Knot))
    (a : Vertex Prime Knot → ℂ) (ξ : SnapshotHilbert F) (i : SnapshotVertex F) :
    snapshotAct F a ξ i = a i.1 * ξ i := rfl

theorem snapshotRead_act (F : Finset (Vertex Prime Knot))
    (a : Vertex Prime Knot → ℂ) (ξ : SnapshotHilbert F)
    (i : Vertex Prime Knot) :
    snapshotRead F (snapshotAct F a ξ) i = a i * snapshotRead F ξ i := by
  classical
  by_cases hi : i ∈ F <;> simp [snapshotRead, snapshotAct, hi]

/-- Pointwise representation commutes with restriction. -/
theorem snapshotAct_restrict {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (a : Vertex Prime Knot → ℂ) (ξ : SnapshotHilbert G) :
    snapshotRestrict hFG (snapshotAct G a ξ) =
      snapshotAct F a (snapshotRestrict hFG ξ) := by
  apply PiLp.ext
  intro i
  rfl

/-- Pointwise representation commutes with zero extension. -/
theorem snapshotAct_extend {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (a : Vertex Prime Knot → ℂ) (ξ : SnapshotHilbert F) :
    snapshotAct G a (snapshotExtend hFG ξ) =
      snapshotExtend hFG (snapshotAct F a ξ) := by
  apply PiLp.ext
  intro i
  change a i.1 * snapshotRead F ξ i.1 =
    snapshotRead F (snapshotAct F a ξ) i.1
  exact (snapshotRead_act F a ξ i.1).symm

/-- The finite diagonal-representation compression identity. -/
theorem snapshotAct_compress {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (a : Vertex Prime Knot → ℂ) (ξ : SnapshotHilbert F) :
    snapshotRestrict hFG (snapshotAct G a (snapshotExtend hFG ξ)) =
      snapshotAct F a ξ := by
  rw [snapshotAct_extend, snapshotRestrict_extend]

/-- Both the original confining diagonal and weighted source incidence. -/
noncomputable def weightedFiniteDirac (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (ξ : SnapshotHilbert F) : SnapshotHilbert F :=
  WithLp.toLp 2 (fun i =>
    ((code i.1 + 1 : ℕ) : ℂ) * ξ i +
      ∑ j ∈ F, weightedEntry s code i.1 j * snapshotRead F ξ j)

@[simp] theorem weightedFiniteDirac_apply (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (ξ : SnapshotHilbert F) (i : SnapshotVertex F) :
    weightedFiniteDirac s code F ξ i =
      ((code i.1 + 1 : ℕ) : ℂ) * ξ i +
        ∑ j ∈ F, weightedEntry s code i.1 j * snapshotRead F ξ j := rfl

/-- Enlarging the summation set adds only zero terms to an extended vector. -/
theorem weightedSum_extend (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (ξ : SnapshotHilbert F) (i : Vertex Prime Knot) :
    (∑ j ∈ G, weightedEntry s code i j *
      snapshotRead G (snapshotExtend hFG ξ) j) =
      ∑ j ∈ F, weightedEntry s code i j * snapshotRead F ξ j := by
  classical
  calc
    (∑ j ∈ G, weightedEntry s code i j *
      snapshotRead G (snapshotExtend hFG ξ) j) =
        ∑ j ∈ G, weightedEntry s code i j * snapshotRead F ξ j := by
          apply Finset.sum_congr rfl
          intro j _
          rw [snapshotRead_extend hFG ξ j]
    _ = ∑ j ∈ F, weightedEntry s code i j * snapshotRead F ξ j := by
      symm
      apply Finset.sum_subset hFG
      intro j hjG hjF
      simp [snapshotRead, hjF]

/-- Exact compression of the weighted finite source operator for F ⊆ G. -/
theorem weightedFiniteDirac_compress (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (ξ : SnapshotHilbert F) :
    snapshotRestrict hFG (weightedFiniteDirac s code G
      (snapshotExtend hFG ξ)) = weightedFiniteDirac s code F ξ := by
  classical
  apply PiLp.ext
  intro i
  simp only [snapshotRestrict_apply, weightedFiniteDirac_apply,
    snapshotExtend_apply]
  rw [weightedSum_extend s code hFG ξ i.1]
  rw [snapshotRead_mem F ξ i]

/-- Restriction preserves subtraction. -/
theorem snapshotRestrict_sub {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (ξ η : SnapshotHilbert G) :
    snapshotRestrict hFG (ξ - η) =
      snapshotRestrict hFG ξ - snapshotRestrict hFG η := by
  apply PiLp.ext
  intro i
  simp [snapshotRestrict]

/-- Actual weighted Dirac commutator; the source diagonal is retained. -/
noncomputable def weightedFiniteCommutator (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (a : Vertex Prime Knot → ℂ) (ξ : SnapshotHilbert F) : SnapshotHilbert F :=
  weightedFiniteDirac s code F (snapshotAct F a ξ) -
    snapshotAct F a (weightedFiniteDirac s code F ξ)

/-- Exact weighted commutator compression along every finite inclusion. -/
theorem weightedFiniteCommutator_compress (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) {F G : Finset (Vertex Prime Knot)}
    (hFG : F ⊆ G) (a : Vertex Prime Knot → ℂ) (ξ : SnapshotHilbert F) :
    snapshotRestrict hFG (weightedFiniteCommutator s code G a
      (snapshotExtend hFG ξ)) = weightedFiniteCommutator s code F a ξ := by
  unfold weightedFiniteCommutator
  rw [snapshotRestrict_sub]
  rw [snapshotAct_extend hFG a ξ]
  rw [weightedFiniteDirac_compress s code hFG (snapshotAct F a ξ)]
  rw [snapshotAct_restrict hFG a (weightedFiniteDirac s code G
    (snapshotExtend hFG ξ))]
  rw [weightedFiniteDirac_compress s code hFG ξ]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
