# regular_haarMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29dbb7098e862f290057025c9585a4259d68e6e63901f789b7f947d82c5a8f2b",
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
  "slug": "regular-haarmeasure--015c70fa7799d6b84f3d92fc",
  "source": {
    "blob": "5855ddc898674ffb401916a573479432f4bd6f33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 643,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:015c70fa7799d6b84f3d92fced553fb1246a5a223e71b10dd7fdb6682a2433d8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29dbb7098e862f290057025c9585a4259d68e6e63901f789b7f947d82c5a8f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–652.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5855ddc898674ffb401916a573479432f4bd6f33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
