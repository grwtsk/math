/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCompactSchurReturn

/-!
# Reciprocal generator scaling of the radius-two compact seed

The archived seed uses the pairs `(m/512, 512*F)` and
`(512*u, (m*G)/512)` in the original squared-node order. Reciprocal
scaling preserves each skew numerator. The diagonal reserve restores
the source candidate's diagonal.

The normalized source coefficients are defined directly from the
five decoded fields. Only the literal node and first primal mode
equalities are needed for the initial matrix identity. Comparisons
to the literal source coefficients remain separate. Independent
mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCompactGaugeBinding

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurIntegerReplay StructuredSchurCompactReplay StructuredSchurNearestEven
open StructuredSchurPivotResidual
open RadiusTwoCandidateSeed RadiusTwoSeedError RadiusTwoCompactSchurReturn

/-- A nonzero scale on each primal generator cancels with the reciprocal
scale on its dual generator. -/
theorem cauchyMatrix_pairScale {ι σ : Type*} [DecidableEq ι] [Fintype σ]
    (node diag : ι → ℝ) (v u : ι → σ → ℝ) (factor : σ → ℝ)
    (hFactor : ∀ l, factor l ≠ 0) :
    cauchyMatrix node diag (fun i l => factor l * v i l)
      (fun i l => u i l / factor l) = cauchyMatrix node diag v u := by
  have hMul (i j : ι) (l : σ) :
      (factor l * v i l) * (u j l / factor l) = v i l * u j l := by
    rw [div_eq_mul_inv]
    calc
      _ = factor l * (factor l)⁻¹ * (v i l * u j l) := by ring
      _ = _ := by rw [mul_inv_cancel₀ (hFactor l), one_mul]
  have hNum (i j : ι) :
      numerator (fun l => factor l * v i l) (fun l => u i l / factor l)
        (fun l => factor l * v j l) (fun l => u j l / factor l) =
          numerator (v i) (u i) (v j) (u j) := by
    simp only [numerator, hMul, mul_comm (u i _ / factor _) (factor _ * v j _),
      mul_comm (u i _) (v j _)]
  ext i j
  simp only [cauchyMatrix, hNum]

private theorem mode_eq (i : Fin 399936) : mode 400000 i = 65+i.val := by
  change 64+i.val+1 = 65+i.val
  omega

/-- Exact physical first-generator decoding from the raw integer mode grid. -/
theorem firstPrimal_of_rawGrid (seed : Fin 399936 → GridRow 2)
    (hRaw : ∀ i, (seed i).v 0 = (65 + (i.val : ℤ)) * 2^31) (i : Fin 399936) :
    decodeGenerator ((seed i).v 0) = (mode 400000 i : ℝ) / 512 := by
  rw [hRaw i, decodeGenerator, generatorScale, mode_eq]
  push_cast
  ring

/-- Decode the archived generator pairs into the normalized candidate gauge. -/
def coefficientsFromRaw (seed : Fin 399936 → GridRow 2) : Coefficients (Fin 399936) :=
  ⟨fun i => decodeGenerator (seed i).diag + 1/10,
   fun i => decodeGenerator ((seed i).u 0) / 512,
   fun i => decodeGenerator ((seed i).v 1) / 512,
   fun i => 512 * decodeGenerator ((seed i).u 1) / (mode 400000 i : ℝ)⟩

/-- The archived coordinate gauge supplies the exact initial matrix identity
used by the compact high-floor return. -/
theorem decodedSeed_add_reserve_eq_rawCandidate
    (tape : Tape 2 399936) (seed : Fin 399936 → GridRow 2)
    (hNodes : ∀ i, tape.node i = (65 + (i.val : ℤ))^2)
    (hMode : ∀ i, decodeGenerator ((seed i).v 0) = (mode 400000 i : ℝ) / 512) :
    decodedSeed tape seed + (1/10 : ℝ) • (1 : Matrix (Fin 399936) (Fin 399936) ℝ) =
      candidateMatrix (coefficientsFromRaw seed) := by
  let m (i : Fin 399936) : ℝ := mode 400000 i
  let c := coefficientsFromRaw seed
  let v (i : Fin 399936) (l : Fin 2) := if l = 0 then m i else c.signal i
  let u (i : Fin 399936) (l : Fin 2) := if l = 0 then c.first i else m i * c.normalizedSecond i
  let factor (l : Fin 2) : ℝ := if l = 0 then 1/512 else 512
  have hPhysical (i : Fin 399936) : m i = 65 + (i.val : ℝ) := by
    simp only [m, mode_eq, Nat.cast_add, Nat.cast_ofNat]
  have hFactor (l : Fin 2) : factor l ≠ 0 := by
    fin_cases l <;> norm_num [factor]
  have hNodeEq : (fun i => (tape.node i : ℝ)) = fun i => (m i)^2 := by
    funext i
    rw [hNodes i, hPhysical i]
    push_cast
    rfl
  have hV : (fun i l => decodeGenerator ((seed i).v l)) = fun i l => factor l * v i l := by
    funext i l
    fin_cases l
    · change decodeGenerator ((seed i).v 0) = (1/512) * m i
      rw [hMode i]
      change m i / 512 = (1/512) * m i
      ring
    · change decodeGenerator ((seed i).v 1) = 512 * (decodeGenerator ((seed i).v 1) / 512)
      ring
  have hU : (fun i l => decodeGenerator ((seed i).u l)) = fun i l => u i l / factor l := by
    funext i l
    fin_cases l
    · change decodeGenerator ((seed i).u 0) = (decodeGenerator ((seed i).u 0) / 512) / (1/512)
      ring
    · change decodeGenerator ((seed i).u 1) =
        m i * (512 * decodeGenerator ((seed i).u 1) / m i) / 512
      have hm : m i ≠ 0 := by rw [hPhysical i]; positivity
      field_simp [hm]
  change cauchyMatrix (fun i => (tape.node i : ℝ)) (fun i => decodeGenerator (seed i).diag)
      (fun i l => decodeGenerator ((seed i).v l)) (fun i l => decodeGenerator ((seed i).u l)) +
      (1/10 : ℝ) • (1 : Matrix (Fin 399936) (Fin 399936) ℝ) =
        seedMatrix m c.diag c.first c.signal c.normalizedSecond
  rw [hNodeEq, hV, hU, cauchyMatrix_pairScale _ _ v u factor hFactor]
  ext i j
  by_cases hij : i = j
  · subst j
    simp [seedMatrix, cauchyMatrix, c, coefficientsFromRaw]
  · simp [seedMatrix, cauchyMatrix, hij, v, u]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCompactGaugeBinding
