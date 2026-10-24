# Complete source: GRWTSK.Algebra.GroupTheory.FiniteCommonJTransport.Variantb9e73482274e9129072ffe566c3398086dfbe2deca1f3cd88d042ac4e751d415

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23eb42b83bf307c454f4a1811c2ef5aa4e74dc04` · SHA-256 `d4aeefbfeda18da7bdea76d76be93078f956edaca6a0a62f4cbaeb475d030feb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.OrderedProductConjugation.Variantdad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.OrderedProductConjugation.Variantdad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754","mathematical_subject":"Algebra.Groups","original_sha256":"dad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/PositiveAtlas/Spectral/FiniteCommonJTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Spectral.JacobiCocycle
import Mathlib.Tactic

/-!
# Finite common-generator transport and explicit gauge order

The existing `orderedProduct` adds the last traversed edge on the left.
Conjugation preserves that order; inversion reverses it. The inverse-loop law
requires commuting transports, as supplied by the explicit common-J rotation
matrices. Forward gauge changes use the target gauge on the left and the
inverse source gauge on the right; only pure chart changes telescope to identity.

Real and rational matrix loops below are algebraic demonstrations. No edge is
claimed to arise from divisor refinement, no Gram geometry is replaced by a
Euclidean coefficient norm, and no arithmetic holonomy or RH bound is inferred.
The gauge identities alone provide no condition-number or growth control.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Algebra.GroupTheory.OrderedProductConjugation.Variantdad336ee3ed256a7e72d7385a01ab2834de4bba4c82e2e647435fadc87061754

set_option autoImplicit false

namespace FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransport

open FormalResearch.PositiveAtlas.Spectral

universe u v

/-- Conjugation transports each edge in its original traversal order. -/
theorem orderedProduct_conjugation {G : Type u} [Group G]
    (A : ℕ → G) (H : G) (n k : ℕ) :
    orderedProduct (fun i => H * A i * H⁻¹) n k =
      H * orderedProduct A n k * H⁻¹ := by
  have he : gaugeTransfer A (fun _ => H⁻¹) = (fun i => H * A i * H⁻¹) := by
    funext i
    simp [gaugeTransfer]
  rw [← he]
  simpa using orderedProduct_gaugeTransfer A (fun _ => H⁻¹) n k

/-- A fixed edge commutes with a finite product of edges that commute with it. -/
theorem commute_orderedProduct {G : Type u} [Monoid G]
    (A : ℕ → G) (g : G) (h : ∀ i, Commute g (A i)) (n k : ℕ) :
    Commute g (orderedProduct A n k) := by
  induction k with
  | zero => exact Commute.one_right _
  | succ k ih => exact (h (n + k)).mul_right ih

/-- Commuting edges are the extra hypothesis permitting same-order inversion. -/
theorem orderedProduct_inverse_commuting {G : Type u} [Group G]
    (A : ℕ → G) (h : ∀ i j, Commute (A i) (A j)) (n k : ℕ) :
    orderedProduct (fun i => (A i)⁻¹) n k = (orderedProduct A n k)⁻¹ := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [orderedProduct_succ, orderedProduct_succ, ih, mul_inv_rev]
    exact (commute_orderedProduct A (A (n + k)) (h (n + k)) n k).inv_inv.eq

/-- A common commuting family with edgewise inverse conjugation has inverse loop transport. -/
theorem orderedProduct_sign_inverse {G : Type u} [Group G]
    (A : ℕ → G) (T : G) (hcomm : ∀ i j, Commute (A i) (A j))
    (hflip : ∀ i, T * A i * T⁻¹ = (A i)⁻¹) (n k : ℕ) :
    T * orderedProduct A n k * T⁻¹ = (orderedProduct A n k)⁻¹ := by
  rw [← orderedProduct_conjugation]
  have he : (fun i => T * A i * T⁻¹) = fun i => (A i)⁻¹ := funext hflip
  rw [he]
  exact orderedProduct_inverse_commuting A hcomm n k

/-- In a noncommuting group, conjugation still retains the two factors' order. -/
theorem conjugation_preserves_order {G : Type u} [Group G] (T A B : G) :
    T * (B * A) * T⁻¹ = (T * B * T⁻¹) * (T * A * T⁻¹) := by
  simp [mul_assoc]

/-- Inversion always reverses the two factors, independently of conjugation. -/
theorem inversion_reverses_order {G : Type u} [Group G] (A B : G) :
    (B * A)⁻¹ = A⁻¹ * B⁻¹ := mul_inv_rev _ _

/-- The target-left/source-inverse-right gauge convention for a traversed edge. -/
def forwardGauge {G : Type u} [Group G] (A H : ℕ → G) (i : ℕ) : G :=
  H (i + 1) * A i * (H i)⁻¹

/-- The forward gauge convention telescopes to the literal two path endpoints. -/
theorem orderedProduct_forwardGauge {G : Type u} [Group G]
    (A H : ℕ → G) (n k : ℕ) :
    orderedProduct (forwardGauge A H) n k =
      H (n + k) * orderedProduct A n k * (H n)⁻¹ := by
  have he : forwardGauge A H = gaugeTransfer A (fun i => (H i)⁻¹) := by
    funext i
    simp [forwardGauge, gaugeTransfer]
  rw [he]
  simpa using orderedProduct_gaugeTransfer A (fun i => (H i)⁻¹) n k

/-- Site-based gauges act along an independently supplied site path. -/
def siteGauge {G : Type u} {V : Type v} [Group G]
    (A : ℕ → G) (p : ℕ → V) (H : V → G) : ℕ → G :=
  forwardGauge A (H ∘ p)

/-- For a closed site path, the loop changes only by basepoint conjugation. -/
theorem site_loop_gauge {G : Type u} {V : Type v} [Group G]
    (A : ℕ → G) (p : ℕ → V) (H : V → G) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (siteGauge A p H) n k =
      H (p n) * orderedProduct A n k * (H (p n))⁻¹ := by
  rw [siteGauge, orderedProduct_forwardGauge]
  simp only [Function.comp_apply, hp]

/-- Identity edge assignments remain identity at every finite depth. -/
theorem orderedProduct_identity {G : Type u} [Monoid G] (n k : ℕ) :
    orderedProduct (fun _ => (1 : G)) n k = 1 := by
  induction k with
  | zero => rfl
  | succ k ih => simp [orderedProduct_succ, ih]

/-- Pure chart changes have no independently specified connection. -/
def chartEdges {G : Type u} [Group G] (g : ℕ → G) (i : ℕ) : G :=
  g (i + 1) * (g i)⁻¹

/-- Pure chart products telescope exactly, with no commutativity assumption. -/
theorem orderedProduct_chartEdges {G : Type u} [Group G] (g : ℕ → G) (n k : ℕ) :
    orderedProduct (chartEdges g) n k = g (n + k) * (g n)⁻¹ := by
  have he : chartEdges g = forwardGauge (fun _ => (1 : G)) g := by
    funext i
    simp [chartEdges, forwardGauge]
  rw [he, orderedProduct_forwardGauge, orderedProduct_identity, mul_one]

/-- Closed pure chart changes telescope to identity and cannot generate residual rotation. -/
theorem chart_loop_identity {G : Type u} {V : Type v} [Group G]
    (p : ℕ → V) (g : V → G) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (chartEdges (g ∘ p)) n k = 1 := by
  rw [orderedProduct_chartEdges]
  simp [hp]

/-- Canonical two-plane common-J rotation matrix, over either real or rational coefficients. -/
def rotationMatrix {R : Type u} [CommRing R] (c s : R) : Matrix (Fin 2) (Fin 2) R :=
  !![c, s; -s, c]

/-- The exact common-J coefficient composition uses the last traversed edge on the left. -/
theorem rotationMatrix_comp {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R) :
    rotationMatrix c₂ s₂ * rotationMatrix c₁ s₁ =
      rotationMatrix (c₂ * c₁-s₂ * s₁) (c₂ * s₁ + s₂ * c₁) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [rotationMatrix, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- All matrices with the same canonical generator commute. -/
theorem rotationMatrix_commute {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R) :
    Commute (rotationMatrix c₂ s₂) (rotationMatrix c₁ s₁) := by
  change _ * _ = _ * _
  rw [rotationMatrix_comp, rotationMatrix_comp]
  congr 1 <;> ring

/-- The two-plane generator has square minus identity. -/
theorem commonJ_square {R : Type u} [CommRing R] :
    rotationMatrix (0 : R) 1 * rotationMatrix 0 1 = -1 := by
  rw [rotationMatrix_comp]
  ext i j
  fin_cases i <;> fin_cases j <;> simp [rotationMatrix]

/-- Composition preserves the real/rational unit-circle coefficient constraint. -/
theorem circle_composition {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R)
    (h₂ : c₂ ^ 2 + s₂ ^ 2 = 1) (h₁ : c₁ ^ 2 + s₁ ^ 2 = 1) :
    (c₂ * c₁-s₂ * s₁) ^ 2 + (c₂ * s₁ + s₂ * c₁) ^ 2 = 1 := by
  calc
    _ = (c₂ ^ 2 + s₂ ^ 2) * (c₁ ^ 2 + s₁ ^ 2) := by ring
    _ = 1 := by rw [h₂, h₁, one_mul]

/-- Reversing a unit-circle edge negates only its sine coordinate. -/
theorem circle_reverse {R : Type u} [CommRing R] (c s : R) (h : c ^ 2 + s ^ 2 = 1) :
    c ^ 2 + (-s) ^ 2 = 1 := by simpa using h

/-- Unit-circle rotations multiply their reversed edge to identity. -/
theorem rotationMatrix_reverse {R : Type u} [CommRing R] (c s : R)
    (h : c ^ 2 + s ^ 2 = 1) : rotationMatrix c s * rotationMatrix c (-s) = 1 := by
  rw [rotationMatrix_comp]
  have hc : c * c-s * (-s) = 1 := by
    calc
      _ = c ^ 2 + s ^ 2 := by ring
      _ = 1 := h
  have hs : c * (-s) + s * c = 0 := by ring
  rw [hc, hs]
  ext i j
  fin_cases i <;> fin_cases j <;> simp [rotationMatrix]

/-- The exact reverse edge makes the common-J matrix a unit. -/
def rotationUnit {R : Type u} [CommRing R] (c s : R) (h : c ^ 2 + s ^ 2 = 1) :
    (Matrix (Fin 2) (Fin 2) R)ˣ where
  val := rotationMatrix c s
  inv := rotationMatrix c (-s)
  val_inv := rotationMatrix_reverse c s h
  inv_val := by
    simpa only [neg_neg] using rotationMatrix_reverse c (-s) (circle_reverse c s h)

/-- Unit-circle common-J transports commute in the actual unit group. -/
theorem rotationUnit_commute {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R)
    (h₂ : c₂ ^ 2 + s₂ ^ 2 = 1) (h₁ : c₁ ^ 2 + s₁ ^ 2 = 1) :
    Commute (rotationUnit c₂ s₂ h₂) (rotationUnit c₁ s₁ h₁) := by
  apply Units.ext
  exact (rotationMatrix_commute c₂ s₂ c₁ s₁).eq


/-- The common-J matrix really is the stated linear combination of identity and J. -/
theorem rotationMatrix_eq_commonJ {R : Type u} [CommRing R] (c s : R) :
    rotationMatrix c s = c • (1 : Matrix (Fin 2) (Fin 2) R) +
      s • rotationMatrix 0 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [rotationMatrix]

/-- Inversion of a unit-circle edge is exactly its sine-reversed edge. -/
theorem rotationUnit_reverse {R : Type u} [CommRing R] (c s : R) (h : c ^ 2 + s ^ 2 = 1) :
    (rotationUnit c s h)⁻¹ = rotationUnit c (-s) (circle_reverse c s h) := by
  apply Units.ext
  rfl

/-- The canonical sign flip on the two-plane; it exchanges the two coordinates. -/
def flipMatrix {R : Type u} [CommRing R] : Matrix (Fin 2) (Fin 2) R := !![0, 1; 1, 0]

/-- The sign flip is its own inverse as an actual matrix unit. -/
def flipUnit {R : Type u} [CommRing R] : (Matrix (Fin 2) (Fin 2) R)ˣ where
  val := flipMatrix
  inv := flipMatrix
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [flipMatrix, Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [flipMatrix, Matrix.mul_apply, Fin.sum_univ_two]

/-- The sign conjugation reverses the common generator, not the factor order. -/
theorem flip_rotation_inverse {R : Type u} [CommRing R] (c s : R)
    (h : c ^ 2 + s ^ 2 = 1) :
    flipUnit * rotationUnit c s h * flipUnit⁻¹ = (rotationUnit c s h)⁻¹ := by
  apply Units.ext
  change flipMatrix * rotationMatrix c s * flipMatrix = rotationMatrix c (-s)
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [flipMatrix, rotationMatrix, Matrix.mul_apply, Fin.sum_univ_two]

/-- Finite same-J loops obey the inverse law because their actual factors commute. -/
theorem commonJ_loop_inverse {R : Type u} [CommRing R] (c s : ℕ → R)
    (h : ∀ i, (c i) ^ 2 + (s i) ^ 2 = 1) (n k : ℕ) :
    flipUnit * orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k * flipUnit⁻¹ =
      (orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k)⁻¹ :=
  orderedProduct_sign_inverse _ flipUnit
    (fun i j => rotationUnit_commute _ _ _ _ (h i) (h j))
    (fun i => flip_rotation_inverse _ _ (h i)) n k

/-- Exact rational unit-circle edge, supplied arbitrarily for an algebraic demonstration. -/
def rationalEdge : (Matrix (Fin 2) (Fin 2) ℚ)ˣ := rotationUnit (3 / 5) (4 / 5) (by norm_num)

/-- An assigned edge followed by its reverse has identity transport,
with the reverse on the left. -/
theorem rational_reverse_loop_identity :
    orderedProduct (fun i => if i = 0 then rationalEdge else rationalEdge⁻¹) 0 2 = 1 := by
  simp [orderedProduct]

/-- Two arbitrarily assigned rational edges can have nonidentity residual rotation. -/
theorem rational_two_edge_loop_nonidentity :
    orderedProduct (fun _ => rationalEdge) 0 2 ≠ 1 := by
  intro h
  have he := congrArg (fun g : (Matrix (Fin 2) (Fin 2) ℚ)ˣ => (g : Matrix (Fin 2) (Fin 2) ℚ) 0 1) h
  norm_num [orderedProduct, rationalEdge, rotationUnit, rotationMatrix,
    Matrix.mul_apply, Fin.sum_univ_two] at he

/-- Upper shear fixture: this is not a common-J circle rotation. -/
def hostileUpper : (Matrix (Fin 2) (Fin 2) ℚ)ˣ where
  val := !![1, 1; 0, 1]
  inv := !![1, -1; 0, 1]
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]

/-- Lower shear fixture, deliberately outside the common-J family. -/
def hostileLower : (Matrix (Fin 2) (Fin 2) ℚ)ˣ where
  val := !![1, 0; 1, 1]
  inv := !![1, 0; -1, 1]
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]

/-- The shear sign flip is an involutive diagonal unit. -/
def hostileSign : (Matrix (Fin 2) (Fin 2) ℚ)ˣ where
  val := !![1, 0; 0, -1]
  inv := !![1, 0; 0, -1]
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]

/-- First hostile edge individually obeys sign conjugation to inverse. -/
theorem hostileUpper_sign_inverse :
    hostileSign * hostileUpper * hostileSign⁻¹ = hostileUpper⁻¹ := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [hostileSign, hostileUpper, Matrix.mul_apply, Fin.sum_univ_two]

/-- Second hostile edge individually obeys the same inverse conjugation law. -/
theorem hostileLower_sign_inverse :
    hostileSign * hostileLower * hostileSign⁻¹ = hostileLower⁻¹ := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [hostileSign, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]

/-- Hostile fixture: individual sign-inverse laws do not imply the product law. -/
theorem noncommuting_sign_loop_fails :
    hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ ≠
      (hostileLower * hostileUpper)⁻¹ := by
  intro h
  have he := congrArg (fun g : (Matrix (Fin 2) (Fin 2) ℚ)ˣ => (g : Matrix (Fin 2) (Fin 2) ℚ) 0 0) h
  norm_num [mul_inv_rev, hostileSign, hostileUpper, hostileLower,
    Matrix.mul_apply, Fin.sum_univ_two] at he

/-- The same two edges have a checked, explicit noncommutativity obstruction. -/
theorem hostile_edges_noncommute : ¬ Commute hostileUpper hostileLower := by
  intro h
  have he := congrArg
    (fun g : (Matrix (Fin 2) (Fin 2) ℚ)ˣ => (g : Matrix (Fin 2) (Fin 2) ℚ) 0 0) h.eq
  norm_num [hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two] at he

/-- The canonical sign flip is involutive, so its inverse is itself. -/
theorem flipUnit_inverse {R : Type u} [CommRing R] :
    (flipUnit : (Matrix (Fin 2) (Fin 2) R)ˣ)⁻¹ = flipUnit := by
  apply Units.ext
  rfl

/-- Literal `T W T` syntax agrees with inverse loop transport for common-J factors. -/
theorem commonJ_loop_sign_conjugation {R : Type u} [CommRing R] (c s : ℕ → R)
    (h : ∀ i, (c i) ^ 2 + (s i) ^ 2 = 1) (n k : ℕ) :
    flipUnit * orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k * flipUnit =
      (orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k)⁻¹ := by
  simpa only [flipUnit_inverse] using commonJ_loop_inverse c s h n k

/-- The explicit common generator is reversed by canonical sign conjugation. -/
theorem flip_commonJ_reverse {R : Type u} [CommRing R] :
    flipMatrix * rotationMatrix (0 : R) 1 * flipMatrix = -rotationMatrix 0 1 := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [flipMatrix, rotationMatrix, Matrix.mul_apply, Fin.sum_univ_two]

end FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransport
```
