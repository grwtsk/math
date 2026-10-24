# IsAddSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e9cf19b4cdbf6c8f75c05d327b8b1a7b3424fb543f11134ad709eb026621981",
  "kind": "structure",
  "lexical_name": "IsAddSubmonoid",
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
  "slug": "isaddsubmonoid--4e694ed1707442f013c1ecd6",
  "source": {
    "blob": "429bc4e199cf96b3ff1c543ec7f14b06f5596d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e694ed1707442f013c1ecd6ad7e74c4d2563e4e60632f67a332850bc9b6d1a7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e9cf19b4cdbf6c8f75c05d327b8b1a7b3424fb543f11134ad709eb026621981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsAddSubmonoid (s : Set A) : Prop where
  /-- The proposition that s contains 0. -/
  zero_mem : (0 : A) ∈ s
  /-- The proposition that s is closed under addition. -/
  add_mem {a b} : a ∈ s → b ∈ s → a + b ∈ s
#align is_add_submonoid IsAddSubmonoid

/-- `s` is a submonoid: a set containing 1 and closed under multiplication.
Note that this structure is deprecated, and the bundled variant `Submonoid M` should be
preferred. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Submonoid/Variantbefe8f0e08eb2a847df05b8b9a2ba1f613fdbb048361618f8434c584e02b323c.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `429bc4e199cf96b3ff1c543ec7f14b06f5596d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
