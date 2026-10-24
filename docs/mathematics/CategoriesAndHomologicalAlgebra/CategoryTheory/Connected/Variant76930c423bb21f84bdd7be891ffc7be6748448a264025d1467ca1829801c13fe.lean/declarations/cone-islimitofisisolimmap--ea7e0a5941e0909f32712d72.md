# Cone.isLimitOfIsIsoLimMapπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:160ab77402cad6b4c62cc33939b41aecde2d7afb5c21de3cef3ce88f2ca36b4b",
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
  "slug": "cone-islimitofisisolimmap--ea7e0a5941e0909f32712d72",
  "source": {
    "blob": "c69eb72152ad5c1b743ead1cd7c8aaaceb6ab384",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea7e0a5941e0909f32712d725318c0d05c7d9754b1137d906ed5d70f0b302993",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:160ab77402cad6b4c62cc33939b41aecde2d7afb5c21de3cef3ce88f2ca36b4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cone.isLimitOfIsIsoLimMapπ {F : J ⥤ C} [HasLimit F] (c : Cone F)
    [IsIso (limMap c.π)] : IsLimit c := by
  refine IsLimit.ofIsoLimit (limit.isLimit _) (Cones.ext ((asIso (limMap c.π)).symm ≪≫
    (limit.isLimit _).conePointUniqueUpToIso (isLimitConstCone J c.pt)) ?_)
  intro j
  simp only [limit.cone_x, Functor.const_obj_obj, limit.cone_π, Iso.trans_hom, Iso.symm_hom,
    asIso_inv, assoc, IsIso.eq_inv_comp, limMap_π]
  congr 1
  simp [← Iso.inv_comp_eq_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant76930c423bb21f84bdd7be891ffc7be6748448a264025d1467ca1829801c13fe.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c69eb72152ad5c1b743ead1cd7c8aaaceb6ab384` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
