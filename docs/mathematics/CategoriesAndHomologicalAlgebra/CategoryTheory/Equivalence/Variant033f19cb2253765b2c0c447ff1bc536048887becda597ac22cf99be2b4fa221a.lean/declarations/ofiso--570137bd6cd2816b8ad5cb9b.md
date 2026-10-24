# ofIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcdf261a9221bf2fae7d81f0cb45fb6bd31360a7ee8fa86806e974b9f2fa5589",
  "kind": "def",
  "lexical_name": "ofIso",
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
  "slug": "ofiso--570137bd6cd2816b8ad5cb9b",
  "source": {
    "blob": "81ca4832acfaa4ea6a654f8c6f0c1431ca70109b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 615,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant033f19cb2253765b2c0c447ff1bc536048887becda597ac22cf99be2b4fa221a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:570137bd6cd2816b8ad5cb9b1ad350d3ba85760a4e440b7c6baacbfb29b1cb3c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant033f19cb2253765b2c0c447ff1bc536048887becda597ac22cf99be2b4fa221a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcdf261a9221bf2fae7d81f0cb45fb6bd31360a7ee8fa86806e974b9f2fa5589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIso {F G : C ⥤ D} (e : F ≅ G) (hF : IsEquivalence F) : IsEquivalence G
    where
  inverse := hF.inverse
  unitIso := hF.unitIso ≪≫ NatIso.hcomp e (Iso.refl hF.inverse)
  counitIso := NatIso.hcomp (Iso.refl hF.inverse) e.symm ≪≫ hF.counitIso
  functor_unitIso_comp X := by
    dsimp [NatIso.hcomp]
    erw [id_comp, F.map_id, comp_id]
    apply (cancel_epi (e.hom.app X)).mp
    slice_lhs 1 2 => rw [← e.hom.naturality]
    slice_lhs 2 3 => rw [← NatTrans.vcomp_app', e.hom_inv_id]
    simp only [NatTrans.id_app, id_comp, comp_id, F.map_comp, assoc]
    erw [hF.counitIso.hom.naturality]
    slice_lhs 1 2 => rw [functor_unitIso_comp]
    simp only [Functor.id_map, id_comp]
#align category_theory.is_equivalence.of_iso CategoryTheory.IsEquivalence.ofIso

/-- Compatibility of `ofIso` with the composition of isomorphisms of functors -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant033f19cb2253765b2c0c447ff1bc536048887becda597ac22cf99be2b4fa221a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant033f19cb2253765b2c0c447ff1bc536048887becda597ac22cf99be2b4fa221a.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ca4832acfaa4ea6a654f8c6f0c1431ca70109b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
