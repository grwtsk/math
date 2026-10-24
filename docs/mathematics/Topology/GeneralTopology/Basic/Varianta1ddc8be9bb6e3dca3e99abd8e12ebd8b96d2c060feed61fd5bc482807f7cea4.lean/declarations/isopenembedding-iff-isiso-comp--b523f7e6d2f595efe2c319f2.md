# isOpenEmbedding_iff_isIso_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8edfb2e-120e-98a8-23f4-be54f30ecd52",
  "kind": "theorem",
  "lexical_name": "isOpenEmbedding_iff_isIso_comp",
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
  "slug": "isopenembedding-iff-isiso-comp--b523f7e6d2f595efe2c319f2",
  "source": {
    "blob": "2a79e06344ef81f6863e34e853d39c357fc6ad5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b523f7e6d2f595efe2c319f2cab4f8e7b99c3992c3f15825985476c8349e2902",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8edfb2e-120e-98a8-23f4-be54f30ecd52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenEmbedding_iff_isIso_comp {X Y Z : TopCat} (f : X ⟶ Y) (g : Y ⟶ Z) [IsIso f] :
    IsOpenEmbedding (f ≫ g) ↔ IsOpenEmbedding g := by
  constructor
  · intro h
    convert h.comp (TopCat.homeoOfIso (asIso f).symm).isOpenEmbedding
    exact congr_arg (DFunLike.coe ∘ ConcreteCategory.hom) (IsIso.inv_hom_id_assoc f g).symm
  · exact fun h => h.comp (TopCat.homeoOfIso (asIso f)).isOpenEmbedding

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a79e06344ef81f6863e34e853d39c357fc6ad5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
