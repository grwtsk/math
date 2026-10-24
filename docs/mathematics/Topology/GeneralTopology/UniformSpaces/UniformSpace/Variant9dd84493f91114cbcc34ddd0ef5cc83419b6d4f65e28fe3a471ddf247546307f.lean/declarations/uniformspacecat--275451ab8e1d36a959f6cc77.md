# UniformSpaceCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b310dc495e4c2f39affe8d347a6499105951d36aad233c5fcebabbcec44ac325",
  "kind": "structure",
  "lexical_name": "UniformSpaceCat",
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
  "slug": "uniformspacecat--275451ab8e1d36a959f6cc77",
  "source": {
    "blob": "eba20c9a48ef18c4a8b84f9a36c4c711e2a45cd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant9dd84493f91114cbcc34ddd0ef5cc83419b6d4f65e28fe3a471ddf247546307f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:275451ab8e1d36a959f6cc773ec1d57ba20cd762215ebacc6c4cb401bfe31cea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant9dd84493f91114cbcc34ddd0ef5cc83419b6d4f65e28fe3a471ddf247546307f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b310dc495e4c2f39affe8d347a6499105951d36aad233c5fcebabbcec44ac325`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniformSpaceCat : Type (u + 1) where
  /-- Construct a bundled `UniformSpace` from the underlying type and the typeclass. -/
  of ::
  /-- The underlying uniform space. -/
  carrier : Type u
  [str : UniformSpace carrier]

attribute [instance] UniformSpaceCat.str

namespace UniformSpaceCat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant9dd84493f91114cbcc34ddd0ef5cc83419b6d4f65e28fe3a471ddf247546307f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant9dd84493f91114cbcc34ddd0ef5cc83419b6d4f65e28fe3a471ddf247546307f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba20c9a48ef18c4a8b84f9a36c4c711e2a45cd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
