/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCompactSchurReturn

/-!
# Raw coordinate binding for the radius-two compact Schur seed

The Cauchy seed uses the two pairs `(m,F)` and `(u,m*G)`, with
squared physical mode nodes. The raw tape stores `m*G` as the
second dual coordinate. Positivity of the physical mode permits
recovering that coordinate from the normalized coefficient `G`.
The diagonal reserve is the only added matrix term.

The exact coordinate equalities are input here. Establishing them
for a concrete serialized seed and checking its literal scalar
comparison remain separate obligations. Independent mathematical
review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCompactSeedBinding

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurIntegerReplay StructuredSchurCompactReplay StructuredSchurNearestEven
open StructuredSchurPivotResidual
open RadiusTwoCandidateSeed RadiusTwoSeedError RadiusTwoCompactSchurReturn

/-- Exact equality of the five decoded fields pays the initial matrix identity
in the compact radius-two high-floor return. -/
theorem decodedSeed_add_reserve_eq_candidateMatrix
    (tape : Tape 2 399936) (seed : Fin 399936 → GridRow 2)
    (c : Coefficients (Fin 399936))
    (hNodes : ∀ i, tape.node i = (65 + (i.val : ℤ))^2)
    (hDiag : ∀ i, c.diag i = decodeGenerator (seed i).diag + 1/10)
    (hMode : ∀ i, decodeGenerator ((seed i).v 0) = (mode 400000 i : ℝ))
    (hFirst : ∀ i, c.first i = decodeGenerator ((seed i).u 0))
    (hSignal : ∀ i, c.signal i = decodeGenerator ((seed i).v 1))
    (hSecond : ∀ i, c.normalizedSecond i =
      decodeGenerator ((seed i).u 1) / (mode 400000 i : ℝ)) :
    decodedSeed tape seed + (1/10 : ℝ) • (1 : Matrix (Fin 399936) (Fin 399936) ℝ) =
      candidateMatrix c := by
  let m (i : Fin 399936) : ℝ := mode 400000 i
  have hPhysical (i : Fin 399936) : m i = 65 + (i.val : ℝ) := by
    have hi : mode 400000 i = 65+i.val := by
      change 64+i.val+1 = 65+i.val
      omega
    simp only [m, hi, Nat.cast_add, Nat.cast_ofNat]
  have hNodeEq : (fun i => (tape.node i : ℝ)) = fun i => (m i)^2 := by
    funext i
    rw [hNodes i, hPhysical i]
    push_cast
    rfl
  have hV : (fun i l => decodeGenerator ((seed i).v l)) =
      fun i (l : Fin 2) => if l = 0 then m i else c.signal i := by
    funext i l
    fin_cases l
    · simpa using hMode i
    · simpa using (hSignal i).symm
  have hU : (fun i l => decodeGenerator ((seed i).u l)) =
      fun i (l : Fin 2) => if l = 0 then c.first i else m i * c.normalizedSecond i := by
    funext i l
    fin_cases l
    · simpa using (hFirst i).symm
    · have hm : m i ≠ 0 := by rw [hPhysical i]; positivity
      have hG : c.normalizedSecond i = decodeGenerator ((seed i).u 1) / m i := hSecond i
      change decodeGenerator ((seed i).u 1) = m i * c.normalizedSecond i
      rw [hG]
      field_simp [hm]
  change cauchyMatrix (fun i => (tape.node i : ℝ)) (fun i => decodeGenerator (seed i).diag)
      (fun i l => decodeGenerator ((seed i).v l)) (fun i l => decodeGenerator ((seed i).u l)) +
      (1/10 : ℝ) • (1 : Matrix (Fin 399936) (Fin 399936) ℝ) =
        seedMatrix m c.diag c.first c.signal c.normalizedSecond
  rw [hNodeEq, hV, hU, seedMatrix]
  ext i j
  by_cases hij : i = j
  · subst j
    simp [cauchyMatrix, hDiag i]
  · simp [cauchyMatrix, hij]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCompactSeedBinding
