# congrFullSubcategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:415faa92ddfbadd45be811389302535ee9a14941dbcc98d8893516d20de2e329",
  "kind": "def",
  "lexical_name": "congrFullSubcategory",
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
  "slug": "congrfullsubcategory--9baf272d24631bb86226d5e4",
  "source": {
    "blob": "3b21e986111928faefcdb7fd1e0243d5c98f9454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 76,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfc3e4e46043ff0775b47e593e07a48313842e4f2077fde0b1746ee8a1eee767c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9baf272d24631bb86226d5e4219caceb40ab249a085ead30cdbfef095d269a91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfc3e4e46043ff0775b47e593e07a48313842e4f2077fde0b1746ee8a1eee767c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:415faa92ddfbadd45be811389302535ee9a14941dbcc98d8893516d20de2e329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def congrFullSubcategory [Q.IsClosedUnderIsomorphisms] (h : Q.inverseImage e.functor = P) :
    P.FullSubcategory ≌ Q.FullSubcategory where
  functor := Q.lift (P.ι ⋙ e.functor) (fun ⟨X, hX⟩ ↦ by rwa [← h] at hX)
  inverse := P.lift (Q.ι ⋙ e.inverse) (fun ⟨Y, hY⟩ ↦ by
    rw [← h]
    exact Q.prop_of_iso (e.counitIso.app Y).symm hY)
  unitIso := (P.fullyFaithfulι.whiskeringRight _).preimageIso
    (P.ι.isoWhiskerLeft e.unitIso)
  counitIso := (Q.fullyFaithfulι.whiskeringRight _).preimageIso
    (Q.ι.isoWhiskerLeft e.counitIso)
  functor_unitIso_comp X :=
    ObjectProperty.hom_ext _ (e.functor_unit_comp X.obj)

end CategoryTheory.Equivalence
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfc3e4e46043ff0775b47e593e07a48313842e4f2077fde0b1746ee8a1eee767c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfc3e4e46043ff0775b47e593e07a48313842e4f2077fde0b1746ee8a1eee767c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b21e986111928faefcdb7fd1e0243d5c98f9454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
