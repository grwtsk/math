# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BilinearPacket.Variant29321df6600c51c4be71044bb0b3c9c2290ad3eb17d94382718e3b203af5ac2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da2288df812fac8b0c35c47d0d63ae4788fef9ce` · SHA-256 `b7b8c93e3e81a1d227d2bb949161b979674cf7b04739372d326c55b105dc8261`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIBilinearPacketFactorization.Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TypeIIBilinearPacketFactorization.Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:3aecf689b7793ca2052f430f/workspace/lib/Surface/Core/TypeII/BilinearPacket.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeWangZahlTTStar
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Data.Matrix.Basic
import Mathlib.Tactic

/-!
# Bipartite packet factorization for the conductor-three Type II term

Vaughan's Type II term is intrinsically bilinear.  This module therefore
keeps separate left and right coefficient spaces and factors the finite
cutoff matrix through two packet synthesis maps and an incidence operator.
There is deliberately no scalar functional which reads every packet atom:
such a readout would force the full Gram norm to grow with coefficient
energy.

Everything below is finite-dimensional algebra.  `exactFactorization` and
`typeII_eq_cutoffPairing` are exact identities, not estimates.  In
particular, the structure contains no Wang--Zahl bound, cross-block
correlation estimate, maximal estimate, or GRH authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TypeIIBilinearPacketFactorization.Variante2ca58d5b9c3a4afd6e6e8e311c5c7a2b6515dfa1e0252716ab877c00184c242

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators ComplexConjugate InnerProductSpace InnerProduct
open ComplexConjugate
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeWangZahlTTStar

/-! ## Canonical arithmetic coefficient functions -/

/-- The left Vaughan coefficient `chi_3(m) * Lambda(m)`, restricted to the
effective fourth-root Type II range. -/
@[expose]
def conductorThreeVaughanLeft (N : ℕ) (m : VaughanScaleIndex N) : ℂ :=
  if vaughanFourthRootCutoff N < m.1 then
    (((conductorThreeIntegerValue m.1 : ℝ) *
      ArithmeticFunction.vonMangoldt m.1 : ℝ) : ℂ)
  else 0

/-- The right Vaughan coefficient `chi_3(k) * b_U(k)`, restricted to the
effective fourth-root Type II range. -/
@[expose]
def conductorThreeVaughanRight (N : ℕ) (k : VaughanScaleIndex N) : ℂ :=
  if vaughanFourthRootCutoff N < k.1 then
    (((conductorThreeIntegerValue k.1 : ℝ) *
      vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1 : ℝ) : ℂ)
  else 0

/-! ## Exact matrix algebra -/

/-- The finite hyperbola cutoff matrix.  It contains only the prefix
condition `leftIndex * rightIndex <= x`; coefficient support is carried by
the two Vaughan vectors. -/
@[expose]
def typeIICutoffMatrix {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) (x : ℕ) :
    Matrix Left Right ℂ :=
  fun left right ↦ if leftIndex left * rightIndex right ≤ x then 1 else 0

/-- Sesquilinear pairing of two coefficient vectors through a matrix.  The
conjugation matches Mathlib's convention that the complex inner product is
conjugate-linear in its first argument. -/
@[expose]
def typeIIMatrixPairing {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (left : EuclideanSpace ℂ Left) (matrix : Matrix Left Right ℂ)
    (right : EuclideanSpace ℂ Right) : ℂ :=
  ∑ l : Left, ∑ r : Right, conj (left l) * matrix l r * right r

@[surface_novel, surface_published]
theorem typeIIMatrixPairing_add {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (left : EuclideanSpace ℂ Left) (A B : Matrix Left Right ℂ)
    (right : EuclideanSpace ℂ Right) :
    typeIIMatrixPairing left (A + B) right =
      typeIIMatrixPairing left A right +
        typeIIMatrixPairing left B right := by
  simp only [typeIIMatrixPairing, Matrix.add_apply, mul_add,
    add_mul, Finset.sum_add_distrib]

@[surface_novel, surface_published]
theorem typeIIMatrixPairing_sum {Index Left Right : Type*}
    [Fintype Index] [Fintype Left] [Fintype Right]
    (left : EuclideanSpace ℂ Left) (matrices : Index → Matrix Left Right ℂ)
    (right : EuclideanSpace ℂ Right) :
    typeIIMatrixPairing left (∑ index, matrices index) right =
      ∑ index, typeIIMatrixPairing left (matrices index) right := by
  classical
  simp only [typeIIMatrixPairing, Matrix.sum_apply,
    Finset.mul_sum, Finset.sum_mul]
  calc
    (∑ l, ∑ r, ∑ index,
        conj (left l) * matrices index l r * right r) =
      ∑ l, ∑ index, ∑ r,
        conj (left l) * matrices index l r * right r := by
          apply Fintype.sum_congr
          intro l
          exact Finset.sum_comm
    _ = ∑ index, ∑ l, ∑ r,
        conj (left l) * matrices index l r * right r :=
      Finset.sum_comm

/-! ## Bilinear packet factorization -/

/-- An exact bipartite factorization of the fixed Type II cutoff matrix.

`Left` and `Right` are finite copies of the canonical scale index, recorded
by equivalences so that coefficient provenance is explicit.  The packet
spaces are complex Hilbert spaces.  `packetMatrix + residualMatrix` is
required to equal the literal cutoff matrix entry by entry.

The final field is the finite arithmetic reindexing from the already checked
Vaughan prefix to the cutoff pairing.  It is an equality and carries no
analytic estimate.
-/
structure TypeIIBilinearPacketFactorization
    (N : ℕ) (Left Right LeftPacketSpace RightPacketSpace : Type*)
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace] where
  leftIndex : Left ≃ VaughanScaleIndex N
  rightIndex : Right ≃ VaughanScaleIndex N

  leftCoefficient : EuclideanSpace ℂ Left
  rightCoefficient : EuclideanSpace ℂ Right

  leftCoefficient_identification : ∀ left,
    leftCoefficient left = conductorThreeVaughanLeft N (leftIndex left)
  rightCoefficient_identification : ∀ right,
    rightCoefficient right = conductorThreeVaughanRight N (rightIndex right)

  leftSynthesis :
    EuclideanSpace ℂ Left →L[ℂ] LeftPacketSpace
  rightSynthesis :
    EuclideanSpace ℂ Right →L[ℂ] RightPacketSpace

  incidence : ℕ → RightPacketSpace →L[ℂ] LeftPacketSpace
  residualMatrix : ℕ → Matrix Left Right ℂ

  exactFactorization : ∀ x left right,
    typeIICutoffMatrix
        (fun l ↦ (leftIndex l).1) (fun r ↦ (rightIndex r).1) x
        left right =
      ⟪leftSynthesis (EuclideanSpace.single left 1),
        incidence x (rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ +
      residualMatrix x left right

  typeII_eq_cutoffPairing : ∀ x, x ≤ 2 * N →
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      -typeIIMatrixPairing leftCoefficient
        (typeIICutoffMatrix
          (fun l ↦ (leftIndex l).1) (fun r ↦ (rightIndex r).1) x)
        rightCoefficient

/-- Matrix of the factorized packet incidence operator in the canonical
single-coordinate bases. -/
@[expose]
def TypeIIBilinearPacketFactorization.packetMatrix
    {N : ℕ} {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    (factorization : TypeIIBilinearPacketFactorization N Left Right
      LeftPacketSpace RightPacketSpace)
    (x : ℕ) : Matrix Left Right ℂ :=
  fun left right ↦
    ⟪factorization.leftSynthesis (EuclideanSpace.single left 1),
      factorization.incidence x
        (factorization.rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ

/-- The intrinsic packet pairing.  Unlike a uniform scalar readout, this
retains the two Vaughan coefficient vectors and the localized incidence
operator between their separate packet spaces. -/
@[expose]
def TypeIIBilinearPacketFactorization.packetPairing
    {N : ℕ} {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    (factorization : TypeIIBilinearPacketFactorization N Left Right
      LeftPacketSpace RightPacketSpace)
    (x : ℕ) : ℂ :=
  ⟪∑ left : Left, factorization.leftCoefficient left •
      factorization.leftSynthesis (EuclideanSpace.single left 1),
    factorization.incidence x
      (∑ right : Right, factorization.rightCoefficient right •
        factorization.rightSynthesis (EuclideanSpace.single right 1))⟫_ℂ

/-- The packet matrix pairing is exactly the intrinsic Hilbert-space
pairing.  This is a finite expansion, not a norm estimate. -/
@[surface_novel, surface_published]
theorem TypeIIBilinearPacketFactorization.matrixPairing_packetMatrix
    {N : ℕ} {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    (factorization : TypeIIBilinearPacketFactorization N Left Right
      LeftPacketSpace RightPacketSpace)
    (x : ℕ) :
    typeIIMatrixPairing factorization.leftCoefficient
        (factorization.packetMatrix x) factorization.rightCoefficient =
      factorization.packetPairing x := by
  classical
  rw [packetPairing]
  simp only [map_sum, map_smul, sum_inner, inner_sum, inner_smul_left,
    inner_smul_right, typeIIMatrixPairing, packetMatrix, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro l _
  apply Finset.sum_congr rfl
  intro r _
  ring

/-- Exact packet-pairing plus residual decomposition of the fixed Vaughan
Type II prefix.  The theorem is purely algebraic; bounding either term is the
open analytic work. -/
@[surface_novel, surface_published]
theorem typeII_eq_packetPairing_add_residual
    {N : ℕ} {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    (factorization : TypeIIBilinearPacketFactorization N Left Right
      LeftPacketSpace RightPacketSpace)
    (x : ℕ) (hx : x ≤ 2 * N) :
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      -factorization.packetPairing x -
        typeIIMatrixPairing factorization.leftCoefficient
          (factorization.residualMatrix x) factorization.rightCoefficient := by
  rw [factorization.typeII_eq_cutoffPairing x hx]
  have hmatrix :
      typeIICutoffMatrix
          (fun l ↦ (factorization.leftIndex l).1)
          (fun r ↦ (factorization.rightIndex r).1) x =
        factorization.packetMatrix x + factorization.residualMatrix x := by
    ext left right
    exact factorization.exactFactorization x left right
  rw [hmatrix, typeIIMatrixPairing_add,
    factorization.matrixPairing_packetMatrix]
  ring

end

end Surface.Core.TypeII
```
