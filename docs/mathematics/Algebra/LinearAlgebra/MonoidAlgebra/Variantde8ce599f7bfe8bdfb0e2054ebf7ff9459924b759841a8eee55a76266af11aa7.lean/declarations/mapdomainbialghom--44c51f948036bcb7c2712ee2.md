# mapDomainBialgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70490d27116235078dac257c4cd7e596f11feadb2d4b06676f5398fa5a4c7039",
  "kind": "def",
  "lexical_name": "mapDomainBialgHom",
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
  "slug": "mapdomainbialghom--44c51f948036bcb7c2712ee2",
  "source": {
    "blob": "b86ceec29761fe05ad3d75a9c52624730b44d309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44c51f948036bcb7c2712ee20810db3ead1d06b8d5e21e84524f43723f82f3ed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70490d27116235078dac257c4cd7e596f11feadb2d4b06676f5398fa5a4c7039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapDomainBialgHom (f : M →* N) : MonoidAlgebra R M →ₐc[R] MonoidAlgebra R N :=
  .ofAlgHom (mapDomainAlgHom R R f) (by ext; simp) (by ext; simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MonoidAlgebra/Variantde8ce599f7bfe8bdfb0e2054ebf7ff9459924b759841a8eee55a76266af11aa7.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b86ceec29761fe05ad3d75a9c52624730b44d309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
