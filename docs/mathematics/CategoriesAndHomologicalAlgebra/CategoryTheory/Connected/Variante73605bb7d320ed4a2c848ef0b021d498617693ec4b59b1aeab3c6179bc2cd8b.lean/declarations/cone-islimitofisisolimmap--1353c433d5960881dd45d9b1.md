# Cone.isLimitOfIsIsoLimMapπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f221537ca16c6f52de50456d6e710b7d48099f28fb6acf1be83717272767847",
  "kind": "def",
  "lexical_name": "Cone.isLimitOfIsIsoLimMapπ",
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
  "slug": "cone-islimitofisisolimmap--1353c433d5960881dd45d9b1",
  "source": {
    "blob": "29d88f3e587bbbe9a625b733d56bd259b4e36718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1353c433d5960881dd45d9b145d6659bb050b3d834e1bdc7e3649fcc1d911fbb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f221537ca16c6f52de50456d6e710b7d48099f28fb6acf1be83717272767847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cone.isLimitOfIsIsoLimMapπ {F : J ⥤ C} [HasLimit F] (c : Cone F)
    [IsIso (limMap c.π)] : IsLimit c := by
  refine IsLimit.ofIsoLimit (limit.isLimit _) (Cone.ext ((asIso (limMap c.π)).symm ≪≫
    (limit.isLimit _).conePointUniqueUpToIso (isLimitConstCone J c.pt)) ?_)
  intro j
  simp only [limit.cone_x, limit.cone_π, Iso.trans_hom, Iso.symm_hom,
    asIso_inv, assoc, IsIso.eq_inv_comp, limMap_π]
  congr 1
  simp [← Iso.inv_comp_eq_id]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d88f3e587bbbe9a625b733d56bd259b4e36718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
