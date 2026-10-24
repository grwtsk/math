# HasFPowerSeriesOnBall.eventually_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c05edb45-c22c-086b-e2b7-f09ff69e25a7",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesOnBall.eventually_eq_zero",
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
  "slug": "hasfpowerseriesonball-eventually-eq-zero--71eb48f42cd69a6c59d3454a",
  "source": {
    "blob": "5c88012ed4bccff4e09c30b984dfafcb75761ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 341,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantf19e893a23599d431e02be528b9e662b23198a2ee435437df226c4a9b7179066.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71eb48f42cd69a6c59d3454a82846d3947e7c7754eded60530a77cc0d0e0e2aa",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variantf19e893a23599d431e02be528b9e662b23198a2ee435437df226c4a9b7179066.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c05edb45-c22c-086b-e2b7-f09ff69e25a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesOnBall.eventually_eq_zero
    (hf : HasFPowerSeriesOnBall f (0 : FormalMultilinearSeries 𝕜 E F) x r) :
    ∀ᶠ z in 𝓝 x, f z = 0 := by
  filter_upwards [hf.eventually_hasSum_sub] with z hz using hz.unique hasSum_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variantf19e893a23599d431e02be528b9e662b23198a2ee435437df226c4a9b7179066.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantf19e893a23599d431e02be528b9e662b23198a2ee435437df226c4a9b7179066.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c88012ed4bccff4e09c30b984dfafcb75761ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
