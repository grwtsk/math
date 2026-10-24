# isClosed_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0066a4d4-f2db-bda4-3168-6c1227d50a5a",
  "kind": "lemma",
  "lexical_name": "isClosed_range",
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
  "slug": "isclosed-range--fe6e3ed795b32666d34ddf6d",
  "source": {
    "blob": "fbf1b77f5ae632652ef3cc0021772266176bcba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 232,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe6e3ed795b32666d34ddf6dcc547372cfe3c3e962f61517ad14ccaca898840a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0066a4d4-f2db-bda4-3168-6c1227d50a5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_range (hf : f.HasLeftInverse) [IsTopologicalAddGroup F] :
    IsClosed (range f) := by
  -- `range f = ker (f ∘ g - id)` is closed since `f ∘ g - id` is continuous.
  rw [← f.range_toLinearMap, ← f.coe_range,
    f.range_eq_ker_of_leftInverse (hf.leftInverse_leftInverse)]
  exact ((f.comp hf.leftInverse) - (ContinuousLinearMap.id R F)).isClosed_ker

/-- Choice of a closed complement of `range f` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousInverse/Variant6f130ed962f4f4b6933045adb7f21a6499efe3574ea3000f65793ad36e991e5b.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf1b77f5ae632652ef3cc0021772266176bcba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
