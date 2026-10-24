# ofSubset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff678e893448ec57c84f70d0d9f1362af310f735275f631f0ef33e334f7c5134",
  "kind": "abbrev",
  "lexical_name": "ofSubset",
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
  "slug": "ofsubset--313eb62fcaf2c7ba16c32df1",
  "source": {
    "blob": "f059a383bf3f5c1c318d8c0cd013e49de406c272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 62,
    "path": "GRWTSK/Topology/AlgebraicTopology/TopPair/Variant092f50e13dacc13ff79dad27d3d29a94e6763b37dad4c60889e0e76437edaaed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:313eb62fcaf2c7ba16c32df12d34b3653a5577d47507d71a7e1043d86b9609dd",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/TopPair/Variant092f50e13dacc13ff79dad27d3d29a94e6763b37dad4c60889e0e76437edaaed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff678e893448ec57c84f70d0d9f1362af310f735275f631f0ef33e334f7c5134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofSubset {X : TopCat.{u}} (A : Set X) : TopPair.{u} := TopPair.of (A := ↧A)
  (X := X) (TopCat.ofHom { toFun := Subtype.val }) Topology.IsEmbedding.subtypeVal

/-- Constructs the topological pair `(X, ∅)` from `X : TopCat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/TopPair/Variant092f50e13dacc13ff79dad27d3d29a94e6763b37dad4c60889e0e76437edaaed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/TopPair/Variant092f50e13dacc13ff79dad27d3d29a94e6763b37dad4c60889e0e76437edaaed.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f059a383bf3f5c1c318d8c0cd013e49de406c272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
