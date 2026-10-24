# map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e7bc967-63d6-b878-b017-44845f5c801c",
  "kind": "lemma",
  "lexical_name": "map_comp",
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
  "slug": "map-comp--f4d682359d4a77e8f0ba96ac",
  "source": {
    "blob": "91f630b519f2e64e96f097f563565af04254b2c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d682359d4a77e8f0ba96ac4dabe45af51aea1d834a712fdfe1ff9e3d6e8191",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e7bc967-63d6-b878-b017-44845f5c801c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_comp (f : S →+* T) (g : R →+* S) (s : ConstructibleSetData R) :
    s.map (f.comp g) = (s.map g).map f := by
  simp [map, image_image, Function.comp_def, BasicConstructibleSetData.map_comp']

/-- Given the data of a constructible set `s`, namely finitely many tuples `(f, g₁, ..., gₙ)` such
that `s = ⋃ (f, g₁, ..., gₙ), V(g₁, ..., gₙ) \ V(f)`, return `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f630b519f2e64e96f097f563565af04254b2c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
