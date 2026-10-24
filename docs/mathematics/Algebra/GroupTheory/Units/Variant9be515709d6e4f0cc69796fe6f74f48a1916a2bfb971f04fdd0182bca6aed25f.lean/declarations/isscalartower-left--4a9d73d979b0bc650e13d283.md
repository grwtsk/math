# isScalarTower'_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cb5c2a9ca45251d6978ce564393275d0c0d74f4bbbba56ef3a39d4e82a1d3c5",
  "kind": "instance",
  "lexical_name": "isScalarTower'_left",
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
  "slug": "isscalartower-left--4a9d73d979b0bc650e13d283",
  "source": {
    "blob": "87779bcf1a5dec6f799df147bfe9894ca9a5bb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 133,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant9be515709d6e4f0cc69796fe6f74f48a1916a2bfb971f04fdd0182bca6aed25f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a9d73d979b0bc650e13d283fdbf55e867d40aaef38334accc02a4ff50d3c685",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant9be515709d6e4f0cc69796fe6f74f48a1916a2bfb971f04fdd0182bca6aed25f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cb5c2a9ca45251d6978ce564393275d0c0d74f4bbbba56ef3a39d4e82a1d3c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isScalarTower'_left [Group G] [Monoid M] [MulAction G M] [SMul M α] [SMul G α]
    [SMulCommClass G M M] [IsScalarTower G M M] [IsScalarTower G M α] :
    IsScalarTower G Mˣ α where smul_assoc g m := smul_assoc g (m : M)

-- Just to prove this transfers a particularly useful instance.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant9be515709d6e4f0cc69796fe6f74f48a1916a2bfb971f04fdd0182bca6aed25f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant9be515709d6e4f0cc69796fe6f74f48a1916a2bfb971f04fdd0182bca6aed25f.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87779bcf1a5dec6f799df147bfe9894ca9a5bb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
