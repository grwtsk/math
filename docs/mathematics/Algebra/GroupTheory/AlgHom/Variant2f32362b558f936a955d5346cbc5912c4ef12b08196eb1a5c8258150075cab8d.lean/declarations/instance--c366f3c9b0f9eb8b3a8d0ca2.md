# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1992ee2e20bea53ce1b9a4986f330ea388ef9759e7aad3fcfb39b17f3621433",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c366f3c9b0f9eb8b3a8d0ca2",
  "source": {
    "blob": "ec539d09a6b2f3126edbb7af5f202de3a91e2fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 76,
    "path": "GRWTSK/Algebra/GroupTheory/AlgHom/Variant2f32362b558f936a955d5346cbc5912c4ef12b08196eb1a5c8258150075cab8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c366f3c9b0f9eb8b3a8d0ca205176eccef7706ca8d702a8f4be499e9db2efcfe",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AlgHom/Variant2f32362b558f936a955d5346cbc5912c4ef12b08196eb1a5c8258150075cab8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1992ee2e20bea53ce1b9a4986f330ea388ef9759e7aad3fcfb39b17f3621433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : GradedFunLike (𝒜 →ₐᵍ[R] ℬ) 𝒜 ℬ where
  map_mem f := f.map_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AlgHom/Variant2f32362b558f936a955d5346cbc5912c4ef12b08196eb1a5c8258150075cab8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AlgHom/Variant2f32362b558f936a955d5346cbc5912c4ef12b08196eb1a5c8258150075cab8d.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec539d09a6b2f3126edbb7af5f202de3a91e2fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
