# tilted_mul_apply_eq_ofReal_integral_cgf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba064979-c110-3174-d07c-13b043aec42b",
  "kind": "lemma",
  "lexical_name": "tilted_mul_apply_eq_ofReal_integral_cgf'",
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
  "slug": "tilted-mul-apply-eq-ofreal-integral-cgf--9dd16121509a9a10459fb186",
  "source": {
    "blob": "976fbb290e49552030e2c21cfd16c8b672e24482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dd16121509a9a10459fb1865baef61c832666e8393f8bb5d52420312a5e4c57",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba064979-c110-3174-d07c-13b043aec42b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tilted_mul_apply_eq_ofReal_integral_cgf' {s : Set Ω} (hs : MeasurableSet s)
    (ht : Integrable (fun ω ↦ exp (t * X ω)) μ) :
    μ.tilted (t * X ·) s = ENNReal.ofReal (∫ a in s, exp (t * X a - cgf X μ t) ∂μ) := by
  rcases eq_zero_or_neZero μ with rfl | hμ
  · simp
  · simp_rw [tilted_mul_apply_eq_ofReal_integral_mgf' hs, exp_sub]
    rwa [exp_cgf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant8b6bc64bf6dfe3d55295d96bd677d7717ccf77b26270e592eaa30fa113c2f56d.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `976fbb290e49552030e2c21cfd16c8b672e24482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
