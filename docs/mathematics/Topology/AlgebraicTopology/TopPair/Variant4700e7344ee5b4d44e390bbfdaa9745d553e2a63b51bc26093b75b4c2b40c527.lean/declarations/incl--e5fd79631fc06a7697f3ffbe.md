# incl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20ce8f25fd02264db6fbbc8aea04f98c7acc9a1bb30c8bf5653f9e6194b3ed67",
  "kind": "def",
  "lexical_name": "incl",
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
  "slug": "incl--e5fd79631fc06a7697f3ffbe",
  "source": {
    "blob": "457b46021488ec3d07cb3909e9b847d4a15adfb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 93,
    "path": "GRWTSK/Topology/AlgebraicTopology/TopPair/Variant4700e7344ee5b4d44e390bbfdaa9745d553e2a63b51bc26093b75b4c2b40c527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5fd79631fc06a7697f3ffbea0ced8ffe24d3e0d89ab97b3025b9d044b40c728",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/TopPair/Variant4700e7344ee5b4d44e390bbfdaa9745d553e2a63b51bc26093b75b4c2b40c527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20ce8f25fd02264db6fbbc8aea04f98c7acc9a1bb30c8bf5653f9e6194b3ed67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def incl : TopCat.{u} ⥤ TopPair.{u} where
  obj X := ofTopCat X
  map f := TopPair.ofHom f (𝟙 _) <| by ext x; induction x

/-- The functor from topological spaces to topological pairs that sends a space X to the identity
morphism on X. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/TopPair/Variant4700e7344ee5b4d44e390bbfdaa9745d553e2a63b51bc26093b75b4c2b40c527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/TopPair/Variant4700e7344ee5b4d44e390bbfdaa9745d553e2a63b51bc26093b75b4c2b40c527.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457b46021488ec3d07cb3909e9b847d4a15adfb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
