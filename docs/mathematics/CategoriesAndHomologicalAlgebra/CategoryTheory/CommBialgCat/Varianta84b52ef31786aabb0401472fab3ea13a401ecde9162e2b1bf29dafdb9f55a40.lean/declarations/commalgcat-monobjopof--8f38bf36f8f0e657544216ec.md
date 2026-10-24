# CommAlgCat.monObjOpOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:071ce2427f3ddf06aaa91cd4a9fa87046eec1cefc39df80f94b6aee8079359a8",
  "kind": "instance",
  "lexical_name": "CommAlgCat.monObjOpOf",
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
  "slug": "commalgcat-monobjopof--8f38bf36f8f0e657544216ec",
  "source": {
    "blob": "89bc7b984487d018df21946afc2eb97ed4d967a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Varianta84b52ef31786aabb0401472fab3ea13a401ecde9162e2b1bf29dafdb9f55a40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f38bf36f8f0e657544216ec4c8d2ed7dd332ea1d0fe8b4f520d659130e6f006",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Varianta84b52ef31786aabb0401472fab3ea13a401ecde9162e2b1bf29dafdb9f55a40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:071ce2427f3ddf06aaa91cd4a9fa87046eec1cefc39df80f94b6aee8079359a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CommAlgCat.monObjOpOf {A : Type u} [CommRing A] [Bialgebra R A] :
    MonObj (op <| CommAlgCat.of R A) where
  one := (CommAlgCat.ofHom <| counitAlgHom R A).op
  mul := (CommAlgCat.ofHom <| comulAlgHom R A).op
  one_mul := by ext; exact Coalgebra.rTensor_counit_comul _
  mul_one := by ext; exact Coalgebra.lTensor_counit_comul _
  mul_assoc := by ext; exact (Coalgebra.coassoc_symm_apply _).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Varianta84b52ef31786aabb0401472fab3ea13a401ecde9162e2b1bf29dafdb9f55a40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Varianta84b52ef31786aabb0401472fab3ea13a401ecde9162e2b1bf29dafdb9f55a40.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bc7b984487d018df21946afc2eb97ed4d967a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
