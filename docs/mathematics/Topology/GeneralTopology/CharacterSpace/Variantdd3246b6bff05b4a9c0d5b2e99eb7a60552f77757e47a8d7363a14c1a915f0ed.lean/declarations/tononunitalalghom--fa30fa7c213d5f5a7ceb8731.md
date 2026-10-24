# toNonUnitalAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7871efcc7991db36fb84c4fc2bc365d3020d7747d94162b6c59b2d3cc6168ccf",
  "kind": "def",
  "lexical_name": "toNonUnitalAlgHom",
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
  "slug": "tononunitalalghom--fa30fa7c213d5f5a7ceb8731",
  "source": {
    "blob": "27c77e64a8bf5cbbd7128a75e47cf648f45a8754",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/CharacterSpace/Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa30fa7c213d5f5a7ceb87318e9902ff4c55fa2afa91da3fe0dbb29c04dac91e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CharacterSpace/Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7871efcc7991db36fb84c4fc2bc365d3020d7747d94162b6c59b2d3cc6168ccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toNonUnitalAlgHom (φ : characterSpace 𝕜 A) : A →ₙₐ[𝕜] 𝕜 where
  toFun := (φ : A → 𝕜)
  map_mul' := map_mul φ
  map_smul' := map_smul φ
  map_zero' := map_zero φ
  map_add' := map_add φ

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CharacterSpace/Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CharacterSpace/Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27c77e64a8bf5cbbd7128a75e47cf648f45a8754` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
