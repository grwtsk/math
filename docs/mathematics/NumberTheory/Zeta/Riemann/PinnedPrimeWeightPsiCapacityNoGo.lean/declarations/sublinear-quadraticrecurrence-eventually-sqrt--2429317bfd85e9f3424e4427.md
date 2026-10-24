# sublinear_quadraticRecurrence_eventually_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b6f87d7-9762-8641-42e4-036f06b7d72c",
  "kind": "theorem",
  "lexical_name": "sublinear_quadraticRecurrence_eventually_sqrt",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "sublinear-quadraticrecurrence-eventually-sqrt--2429317bfd85e9f3424e4427",
  "source": {
    "blob": "357478698ed48a67786102f47fc43b358a63910f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2429317bfd85e9f3424e442776ec7e8696487edc376cf707b8c8266441eb4cdf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b6f87d7-9762-8641-42e4-036f06b7d72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublinear_quadraticRecurrence_eventually_sqrt
    (E : ℕ → ℝ) {K H : ℝ}
    (hK : 0 ≤ K) (hH : 0 ≤ H)
    (hE : ∀ j, 0 ≤ E j)
    (hsmall : SublinearDyadicEnvelope E)
    (hrec : SquareRootForcedQuadraticRecurrence E K H) :
    ∃ M : ℝ, 0 ≤ M ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        E j ≤ M * Real.sqrt (dyadicScale j : ℝ) := by
  let δ : ℝ := 1 / (2 * (K + 1))
  have hKone : 0 < K + 1 := by linarith
  have hδ : 0 < δ := by
    dsimp [δ]
    exact div_pos (by norm_num : (0 : ℝ) < 1)
      (mul_pos (by norm_num) hKone)
  obtain ⟨jsmall, hsmallStages⟩ := hsmall δ hδ
  obtain ⟨jrec, hrecStages⟩ := hrec
  let j₀ : ℕ := max jsmall jrec
  let M : ℝ := E j₀ + 2 * H
  have hM : 0 ≤ M := by
    dsimp [M]
    nlinarith [hE j₀, hH]
  have hMtwoH : 2 * H ≤ M := by
    dsimp [M]
    linarith [hE j₀]
  refine ⟨M, hM, j₀, ?_⟩
  intro j hj
  induction j, hj using Nat.le_induction with
  | base =>
      have hXone : (1 : ℝ) ≤ (dyadicScale j₀ : ℝ) := by
        exact_mod_cast
          (Nat.one_le_iff_ne_zero.mpr
            (Nat.ne_of_gt (GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j₀)))
      have hsqrt : 1 ≤ Real.sqrt (dyadicScale j₀ : ℝ) := by
        simpa using Real.sqrt_le_sqrt hXone
      have hE0 := hE j₀
      have hEM : E j₀ ≤ M := by
        dsimp [M]
        linarith
      exact hEM.trans (by
        nlinarith [mul_nonneg hM (sub_nonneg.mpr hsqrt)])
  | succ j hj ih =>
      let X : ℝ := (dyadicScale j : ℝ)
      have hX : 0 < X := by
        dsimp [X]
        exact_mod_cast GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j
      have hsmallj : E j ≤ δ * X := by
        exact hsmallStages j (by
          dsimp [j₀] at hj
          omega)
      have hδid : 2 * (K + 1) * δ = 1 := by
        dsimp [δ]
        field_simp [hKone.ne']
      have htwice : 2 * (K + 1) * E j ≤ X := by
        calc
          2 * (K + 1) * E j
              ≤ 2 * (K + 1) * (δ * X) :=
            mul_le_mul_of_nonneg_left hsmallj (by positivity)
          _ = X := by
            rw [← mul_assoc, hδid, one_mul]
      have hKsmall : 2 * K * E j ≤ X := by
        nlinarith [htwice, hE j]
      have hmul :
          (2 * K * E j) * E j ≤ X * E j :=
        mul_le_mul_of_nonneg_right hKsmall (hE j)
      have hquad :
          K * (E j)^2 / X ≤ E j / 2 := by
        apply (div_le_iff₀ hX).2
        nlinarith [hmul]
      have hstep :
          E (j + 1) ≤
            K * (E j)^2 / X + H * Real.sqrt X := by
        simpa [X] using hrecStages j (by
          dsimp [j₀] at hj
          omega)
      have hrootMono :
          Real.sqrt X ≤ Real.sqrt (dyadicScale (j + 1) : ℝ) := by
        apply Real.sqrt_le_sqrt
        dsimp [X]
        rw [dyadicScale_succ_eq_two_mul]
        push_cast
        have hp : 0 ≤ (dyadicScale j : ℝ) := by positivity
        linarith
      calc
        E (j + 1)
            ≤ K * (E j)^2 / X +
                H * Real.sqrt X := hstep
        _ ≤ E j / 2 + H * Real.sqrt X :=
          add_le_add hquad le_rfl
        _ ≤ (M / 2 + H) * Real.sqrt X := by
          have hroot0 : 0 ≤ Real.sqrt X := Real.sqrt_nonneg X
          dsimp [X] at ih ⊢
          nlinarith
        _ ≤ M * Real.sqrt X :=
          mul_le_mul_of_nonneg_right (by linarith [hMtwoH])
            (Real.sqrt_nonneg X)
        _ ≤ M * Real.sqrt (dyadicScale (j + 1) : ℝ) :=
          mul_le_mul_of_nonneg_left hrootMono hM

/-- A prime-jump certificate requires arbitrarily large adjacent integer
targets inside the SAME next octave whose psi errors have an arbitrarily
large difference.  Bertrand plus psi(p)-psi(p-1)=log(p) supplies this in
classical arithmetic; the Lean constructor is a separate replay obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiCapacityNoGo.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357478698ed48a67786102f47fc43b358a63910f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
