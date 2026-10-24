/-
PointwiseArrayData — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5f4fddd752ee2ea8042f48d0ef34c60f3b4a29a81c1941534683f7bf9587c037
Organized SHA-256: d1205bd4dd2ac5ec02055e282c762cc20ab75ec02e4021cd11cf3954e705e8e7
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Finite Cell s by Fin k real-valued arrays with their exact pointwise zero/add/sub/scalar/constant functions, four operation instances, extensionality and value equations. No vector-space laws, tensor product, operator, norm, spectral or heat construction is introduced. Shapes and k may be zero. -/

import Folder.Carrier.Grid

/-!
# Folder.Spectral.Tensor

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.spectral_tensor
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteGridRealArrays.Variant5f4fddd752ee2ea8

open Folder

open Carrier

structure SpectralTensor (s : GridShape) (k : Nat) where
  value : Cell s → Fin k → ℝ


namespace SpectralTensor

@[ext]
theorem ext
    {s : GridShape}
    {k : Nat}
    {X Y : SpectralTensor s k}
    (h : ∀ c q, X.value c q = Y.value c q) :
    X = Y := by
  cases X
  cases Y
  congr
  funext c q
  exact h c q


def zero (s : GridShape) (k : Nat) : SpectralTensor s k where
  value := fun _ _ => 0


def add {s : GridShape} {k : Nat}
    (X Y : SpectralTensor s k) :
    SpectralTensor s k where
  value := fun c q => X.value c q + Y.value c q


def sub {s : GridShape} {k : Nat}
    (X Y : SpectralTensor s k) :
    SpectralTensor s k where
  value := fun c q => X.value c q - Y.value c q


def smul {s : GridShape} {k : Nat}
    (a : ℝ)
    (X : SpectralTensor s k) :
    SpectralTensor s k where
  value := fun c q => a * X.value c q


def constant (s : GridShape) {k : Nat}
    (a : Fin k → ℝ) :
    SpectralTensor s k where
  value := fun _ q => a q


instance {s : GridShape} {k : Nat} : Zero (SpectralTensor s k) :=
  ⟨zero s k⟩


instance {s : GridShape} {k : Nat} : Add (SpectralTensor s k) :=
  ⟨add⟩


instance {s : GridShape} {k : Nat} : Sub (SpectralTensor s k) :=
  ⟨sub⟩


instance {s : GridShape} {k : Nat} : SMul ℝ (SpectralTensor s k) :=
  ⟨smul⟩


@[simp]
theorem value_zero {s : GridShape} {k : Nat} (c : Cell s) (q : Fin k) :
    (0 : SpectralTensor s k).value c q = 0 :=
  rfl


@[simp]
theorem value_add {s : GridShape} {k : Nat}
    (X Y : SpectralTensor s k)
    (c : Cell s)
    (q : Fin k) :
    (X + Y).value c q = X.value c q + Y.value c q :=
  rfl


@[simp]
theorem value_sub {s : GridShape} {k : Nat}
    (X Y : SpectralTensor s k)
    (c : Cell s)
    (q : Fin k) :
    (X - Y).value c q = X.value c q - Y.value c q :=
  rfl


@[simp]
theorem value_smul {s : GridShape} {k : Nat}
    (a : ℝ)
    (X : SpectralTensor s k)
    (c : Cell s)
    (q : Fin k) :
    (a • X).value c q = a * X.value c q :=
  rfl


@[simp]
theorem value_constant {s : GridShape} {k : Nat}
    (a : Fin k → ℝ)
    (c : Cell s)
    (q : Fin k) :
    (constant s a).value c q = a q :=
  rfl


end SpectralTensor

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteGridRealArrays.Variant5f4fddd752ee2ea8
