# complete_tail_abs_le_exact_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e199df0f-4388-9186-5271-e3b8000000b0",
  "kind": "theorem",
  "lexical_name": "complete_tail_abs_le_exact_mean",
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
  "slug": "complete-tail-abs-le-exact-mean--6c41a4d63d22f052957a2150",
  "source": {
    "blob": "c1bf56a8b4acc129ad7c93b6e90f1e921394b2d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c41a4d63d22f052957a2150b93f50780353457e74237f21088a8d35747200ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e199df0f-4388-9186-5271-e3b8000000b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_tail_abs_le_exact_mean (M1 R A : ℝ) (hR : 40 ≤ R)
    (hA : calibratedRadius R ≤ A) (hmean : actualF7MeanBound M1 R) :
    |completeXiTail A| ≤
      (Real.sqrt (tailEnergyCoefficient (calibratedRadius R)) +
        2 * tailEnergyCoefficient (calibratedRadius R) / A) * M1 := by
  have hAR : R ≤ A := (le_max_right _ _).trans hA
  have hA40 := hR.trans hAR
  have hp : 0 < A := by linarith
  have hQ : (1 : ℝ) ≤ calibratedRadius R := by
    have h : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
    linarith
  have hm := hmean (2 * A) (by linarith)
  calc
    _ ≤ exactWeightBudget (calibratedRadius R) A *
        (∫ t in Real.log 7..2 * A, |actualF7 t|) :=
      complete_tail_abs_le_exact_weighted_mass _ _ hQ hA hA40
    _ ≤ exactWeightBudget (calibratedRadius R) A * (M1 * (2 * A)) :=
      mul_le_mul_of_nonneg_left hm (exactWeightBudget_nonneg _ _ hp)
    _ = _ := by
      unfold exactWeightBudget
      field_simp [hp.ne']
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactEnergyMeanConsumer/Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1bf56a8b4acc129ad7c93b6e90f1e921394b2d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
