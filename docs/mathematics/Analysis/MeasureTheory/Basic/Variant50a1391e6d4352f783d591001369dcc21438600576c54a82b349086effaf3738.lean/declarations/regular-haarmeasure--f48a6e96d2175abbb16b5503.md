# regular_haarMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:faf62b5cf5c0ab87a65a16ccad194e7819f17bce88a0e58a266cf73715d47659",
  "kind": "instance",
  "lexical_name": "regular_haarMeasure",
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
  "slug": "regular-haarmeasure--f48a6e96d2175abbb16b5503",
  "source": {
    "blob": "c9c997c21c09b5ae81fc02d229959045b3f34503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 651,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f48a6e96d2175abbb16b550328901153ee659800d183019114c5400557d9e1ce",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:faf62b5cf5c0ab87a65a16ccad194e7819f17bce88a0e58a266cf73715d47659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance regular_haarMeasure {K₀ : PositiveCompacts G} : (haarMeasure K₀).Regular := by
  haveI : LocallyCompactSpace G := K₀.locallyCompactSpace_of_group
  apply Regular.smul
  rw [ENNReal.inv_ne_top]
  exact haarContent_outerMeasure_self_pos.ne'
#align measure_theory.measure.regular_haar_measure MeasureTheory.Measure.regular_haarMeasure
#align measure_theory.measure.regular_add_haar_measure MeasureTheory.Measure.regular_addHaarMeasure

/-- The Haar measure is sigma-finite in a second countable group. -/
@[to_additive "The additive Haar measure is sigma-finite in a second countable group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c997c21c09b5ae81fc02d229959045b3f34503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
