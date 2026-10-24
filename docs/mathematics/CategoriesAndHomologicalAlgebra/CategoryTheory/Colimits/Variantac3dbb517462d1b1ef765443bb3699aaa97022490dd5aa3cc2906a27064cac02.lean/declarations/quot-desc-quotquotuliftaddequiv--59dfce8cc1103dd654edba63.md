# Quot.desc_quotQuotUliftAddEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdd1bbb4-9dfc-447c-8ef6-e19b72b4ef2a",
  "kind": "lemma",
  "lexical_name": "Quot.desc_quotQuotUliftAddEquiv",
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
  "slug": "quot-desc-quotquotuliftaddequiv--59dfce8cc1103dd654edba63",
  "source": {
    "blob": "5fd9ec92be411800742200d67562dc53230598cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59dfce8cc1103dd654edba63facf39344802203d3d48c0bb8ff8a8efdd7f1609",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdd1bbb4-9dfc-447c-8ef6-e19b72b4ef2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Quot.desc_quotQuotUliftAddEquiv [DecidableEq J] (c : Cocone F) :
    (Quot.desc (F ⋙ uliftFunctor.{u'}) (uliftFunctor.{u'}.mapCocone c)).comp
    (quotQuotUliftAddEquiv F).toAddMonoidHom =
    AddEquiv.ulift.symm.toAddMonoidHom.comp (Quot.desc F c) := by
  refine Quot.addMonoidHom_ext _ (fun j a ↦ ?_)
  dsimp
  simp only [quotToQuotUlift_ι, Functor.comp_obj, uliftFunctor_obj, ι_desc,
    Functor.const_obj_obj, AddMonoidHom.coe_comp, AddMonoidHom.coe_coe, Function.comp_apply, ι_desc]
  erw [Quot.ι_desc]
  rfl

/-- (implementation detail) A morphism of commutative additive groups `Quot F →+ A`
induces a cocone on `F` as long as the universes work out.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantac3dbb517462d1b1ef765443bb3699aaa97022490dd5aa3cc2906a27064cac02.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd9ec92be411800742200d67562dc53230598cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
