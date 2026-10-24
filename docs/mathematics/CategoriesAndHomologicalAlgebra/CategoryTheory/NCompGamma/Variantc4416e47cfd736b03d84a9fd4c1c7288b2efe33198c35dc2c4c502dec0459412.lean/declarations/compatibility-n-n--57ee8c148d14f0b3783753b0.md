# compatibility_Γ₂N₁_Γ₂N₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cf38b6883706ffcd27b66ee45786c3dbf83d868c8d2bde1ad3a9655c1cd8924",
  "kind": "def",
  "lexical_name": "compatibility_Γ₂N₁_Γ₂N₂",
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
  "slug": "compatibility-n-n--57ee8c148d14f0b3783753b0",
  "source": {
    "blob": "613ee2aabf79d0d9b14293d00abc8f4b93ea9a1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57ee8c148d14f0b3783753b0f9aecf2435980204963fa6b50722912345e60230",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cf38b6883706ffcd27b66ee45786c3dbf83d868c8d2bde1ad3a9655c1cd8924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compatibility_Γ₂N₁_Γ₂N₂ : toKaroubi (SimplicialObject C) ⋙ N₂ ⋙ Γ₂ ≅ N₁ ⋙ Γ₂ :=
  eqToIso (by rw [← Functor.assoc, compatibility_N₁_N₂])
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.compatibility_Γ₂N₁_Γ₂N₂ AlgebraicTopology.DoldKan.compatibility_Γ₂N₁_Γ₂N₂

-- porting note: no @[simp] attribute because this would trigger a timeout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantc4416e47cfd736b03d84a9fd4c1c7288b2efe33198c35dc2c4c502dec0459412.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `613ee2aabf79d0d9b14293d00abc8f4b93ea9a1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
