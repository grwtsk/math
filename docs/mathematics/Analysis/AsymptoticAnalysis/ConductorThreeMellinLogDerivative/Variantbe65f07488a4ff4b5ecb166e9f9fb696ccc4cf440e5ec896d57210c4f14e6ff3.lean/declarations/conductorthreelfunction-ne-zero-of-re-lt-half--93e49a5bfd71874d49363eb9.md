# conductorThreeLFunction_ne_zero_of_re_lt_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "318e08dfc8b50fabc6eb0f843f58534e97cd8517",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07cf359f-7c7b-6ba6-9318-482e30047368",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ee340ff-8455-d834-985a-36aa77bf8558",
  "kind": "theorem",
  "lexical_name": "conductorThreeLFunction_ne_zero_of_re_lt_half",
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
  "slug": "conductorthreelfunction-ne-zero-of-re-lt-half--93e49a5bfd71874d49363eb9",
  "source": {
    "blob": "318e08dfc8b50fabc6eb0f843f58534e97cd8517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 380,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93e49a5bfd71874d49363eb9174a25e67717f707fd013638e88fa4b48a7d1e72",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ee340ff-8455-d834-985a-36aa77bf8558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeLFunction_ne_zero_of_re_lt_half
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ}
    (hs0 : 0 < s.re) (hsHalf : s.re < (1 / 2 : ℝ)) :
    DirichletCharacter.LFunction conductorThreeCharacter s ≠ 0 := by
  intro hLs
  have hGammaS : DirichletCharacter.gammaFactor conductorThreeCharacter s ≠ 0 := by
    rw [conductorThreeCharacter_odd.gammaFactor_def]
    apply Gammaℝ_ne_zero_of_re_pos
    simp only [add_re, one_re]
    linarith
  have hCompletedS :
      DirichletCharacter.completedLFunction conductorThreeCharacter s = 0 := by
    have hRelation :=
      DirichletCharacter.LFunction_eq_completed_div_gammaFactor
        conductorThreeCharacter s (Or.inr (by norm_num : 3 ≠ 1))
    rw [hLs] at hRelation
    have hDiv : DirichletCharacter.completedLFunction
        conductorThreeCharacter s /
          DirichletCharacter.gammaFactor conductorThreeCharacter s = 0 :=
      hRelation.symm
    exact (div_eq_zero_iff.mp hDiv).resolve_right hGammaS
  have hFE :=
    conductorThreeCharacter_isPrimitive.completedLFunction_one_sub (1 - s)
  rw [sub_sub_cancel, conductorThreeCharacter_inv] at hFE
  have hCompletedReflect :
      DirichletCharacter.completedLFunction conductorThreeCharacter (1 - s) = 0 := by
    rw [hCompletedS] at hFE
    have hProduct :
        (3 : ℂ) ^ ((1 - s) - 1 / 2) *
            DirichletCharacter.rootNumber conductorThreeCharacter *
              DirichletCharacter.completedLFunction conductorThreeCharacter (1 - s) = 0 :=
      hFE.symm
    have hpow : (3 : ℂ) ^ ((1 - s) - 1 / 2) ≠ 0 :=
      Complex.cpow_ne_zero_iff.mpr (Or.inl (by norm_num))
    exact (mul_eq_zero.mp hProduct).resolve_left
      (mul_ne_zero hpow conductorThreeRootNumber_ne_zero)
  have hLReflect :
      DirichletCharacter.LFunction conductorThreeCharacter (1 - s) = 0 := by
    rw [DirichletCharacter.LFunction_eq_completed_div_gammaFactor
      conductorThreeCharacter (1 - s) (Or.inr (by norm_num : 3 ≠ 1)),
      hCompletedReflect, zero_div]
  have hReflectHalf : (1 / 2 : ℝ) < (1 - s).re := by
    simp only [sub_re, one_re]
    linarith
  exact (conductorThreeLFunction_ne_zero_of_half_lt_re hHalf hReflectHalf)
    hLReflect

/-- The half-plus-epsilon twisted Chebyshev estimate implies conductor-three
GRH.  The right half is excluded by the Mellin ODE; the left half is excluded
by the primitive self-dual functional equation. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318e08dfc8b50fabc6eb0f843f58534e97cd8517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
