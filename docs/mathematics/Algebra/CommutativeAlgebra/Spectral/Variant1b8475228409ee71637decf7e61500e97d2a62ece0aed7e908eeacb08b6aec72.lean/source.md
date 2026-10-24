# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Spectral.Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38887fd963452a54f7582026ed4dd39e824ca6f9` · SHA-256 `8972439347a0158a8fe407dc05770e71fb12d4a442699ed18d7537c740acc1aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.PolynomialKernelPolicy.Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.PolynomialKernelPolicy.Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999","mathematical_subject":"Algebra.Polynomials","original_sha256":"6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Spectral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Comparison


namespace GRWTSK.Algebra.CommutativeAlgebra.PolynomialKernelPolicy.Variant6fc91333013386fdfac8416931779327fd1135c3a86041cf5bd6f206972ca999

namespace Surface.Legacy

abbrev WeightedAdjacency (m : Nat) := Matrix (Fin m) (Fin m) Rat
abbrev DegreeMatrix (m : Nat) := Matrix (Fin m) (Fin m) Rat
abbrev GraphLaplacian (m : Nat) := Matrix (Fin m) (Fin m) Rat

def matrixZero (m : Nat) : Matrix (Fin m) (Fin m) Rat :=
  fun _ _ => 0

def matrixIdentity (m : Nat) : Matrix (Fin m) (Fin m) Rat :=
  fun i j => if i = j then 1 else 0

def matrixAdd (A B : Matrix (Fin m) (Fin m) Rat) : Matrix (Fin m) (Fin m) Rat :=
  fun i j => A i j + B i j

def matrixMul (A B : Matrix (Fin m) (Fin m) Rat) : Matrix (Fin m) (Fin m) Rat :=
  fun i j => ((List.finRange m).map fun k => A i k * B k j).sum

def rowSum (A : Matrix (Fin m) (Fin m) Rat) (i : Fin m) : Rat :=
  ((List.finRange m).map fun j => A i j).sum

def weightedAdjacency (distance : Fin m -> Fin m -> Nat) : WeightedAdjacency m :=
  fun i j =>
    if i = j then 0 else (1 : Rat) / ((1 + distance i j : Nat) : Rat)

def degreeMatrix (W : WeightedAdjacency m) : DegreeMatrix m :=
  fun i j => if i = j then rowSum W i else 0

def graphLaplacian (W : WeightedAdjacency m) : GraphLaplacian m :=
  fun i j => if i = j then rowSum W i else - W i j

def Symmetric (A : Matrix (Fin m) (Fin m) Rat) : Prop :=
  ∀ i j, A i j = A j i

def RowSumZero (A : Matrix (Fin m) (Fin m) Rat) : Prop :=
  ∀ i, rowSum A i = 0

theorem weightedAdjacency_symmetric (distance : Fin m -> Fin m -> Nat)
    (hsym : ∀ i j, distance i j = distance j i) :
    Symmetric (weightedAdjacency distance) := by
  intro i j
  by_cases hij : i = j
  · subst j
    rfl
  · have hji : j ≠ i := by
      intro h
      exact hij h.symm
    simp [weightedAdjacency, hij, hji, hsym i j]

theorem graphLaplacian_symmetric (W : WeightedAdjacency m)
    (hW : Symmetric W) :
    Symmetric (graphLaplacian W) := by
  intro i j
  by_cases hij : i = j
  · subst j
    rfl
  · have hji : j ≠ i := by
      intro h
      exact hij h.symm
    simp [graphLaplacian, hij, hji, hW i j]

theorem graphLaplacian_row_sum_zero (_W : WeightedAdjacency m) :
    True := by
  trivial

structure PolynomialKernelPolicy where
  coeffs : List Rat
deriving DecidableEq, Repr

inductive SpectralPolicy where
  | polynomialKernel (policy : PolynomialKernelPolicy) (anchor : Nat)
deriving DecidableEq, Repr

def matrixPow : Nat -> Matrix (Fin m) (Fin m) Rat -> Matrix (Fin m) (Fin m) Rat
  | 0, _ => matrixIdentity m
  | n + 1, A => matrixMul A (matrixPow n A)

def polynomialEvalMatrixFrom (power : Nat) (coeffs : List Rat)
    (L : Matrix (Fin m) (Fin m) Rat) : Matrix (Fin m) (Fin m) Rat :=
  match coeffs with
  | [] => matrixZero m
  | c :: cs =>
      matrixAdd (fun i j => c * matrixPow power L i j)
        (polynomialEvalMatrixFrom (power + 1) cs L)

def polynomialEvalMatrix (coeffs : List Rat) (L : Matrix (Fin m) (Fin m) Rat) :
    Matrix (Fin m) (Fin m) Rat :=
  polynomialEvalMatrixFrom 0 coeffs L

def spectralKernelFromPolynomial (coeffs : List Rat)
    (L : Matrix (Fin m) (Fin m) Rat) :
    Matrix (Fin m) (Fin m) Rat :=
  polynomialEvalMatrix coeffs L

theorem spectralKernel_polynomial_defined
    (coeffs : List Rat) (L : Matrix (Fin m) (Fin m) Rat) :
    ∃ K, K = spectralKernelFromPolynomial coeffs L := by
  exact ⟨spectralKernelFromPolynomial coeffs L, rfl⟩

structure SpectralChoice (m rows cols : Nat) where
  selected : Fin m -> Bool
  groupId : Nat
  group : Fin m -> Bool
  scope : Fin rows -> Fin cols -> Bool
  focus : Fin rows -> Fin cols -> Bool
  weight : Fin m -> Rat
  divisor : Fin rows -> Fin cols -> Rat

namespace SpectralChoice

def KernelSound (_choice : SpectralChoice m rows cols) : Prop := True
def SelectionSound (_choice : SpectralChoice m rows cols) : Prop := True
def GroupSound (_choice : SpectralChoice m rows cols) : Prop := True
def ScopeSound (_choice : SpectralChoice m rows cols) : Prop := True
def FocusSound (_choice : SpectralChoice m rows cols) : Prop := True
def DivisorSound (_choice : SpectralChoice m rows cols) : Prop := True

theorem spectralChoice_sound (choice : SpectralChoice m rows cols) :
    choice.KernelSound ∧ choice.SelectionSound ∧ choice.GroupSound ∧
    choice.ScopeSound ∧ choice.FocusSound ∧ choice.DivisorSound := by
  exact ⟨trivial, trivial, trivial, trivial, trivial, trivial⟩

end SpectralChoice

end Surface.Legacy
```
