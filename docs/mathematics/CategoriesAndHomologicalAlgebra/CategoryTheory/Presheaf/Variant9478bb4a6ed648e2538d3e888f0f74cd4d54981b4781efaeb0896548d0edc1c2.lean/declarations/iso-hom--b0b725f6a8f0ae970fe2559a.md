# iso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47bd60363da690f7e27bc25067405aa240b44d53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5ab53df-0f36-f570-307b-41c2abc29a2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:300def0b-2c75-a3df-e14e-63ae46ec7695",
  "kind": "theorem",
  "lexical_name": "iso_hom",
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
  "slug": "iso-hom--b0b725f6a8f0ae970fe2559a",
  "source": {
    "blob": "47bd60363da690f7e27bc25067405aa240b44d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0b725f6a8f0ae970fe2559ae2126d7c843c2857d47b0678fcde0ec618d9610e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:300def0b-2c75-a3df-e14e-63ae46ec7695`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iso_hom [IsFiltered (CostructuredArrow yoneda A)] : (iso A K).hom = limit.post K A := by
  -- We will have to use `ι_colimitLimitIso_limit_π` eventually, so let's start by
  -- transforming the goal into something from a colimit to a limit so that we can apply
  -- `limit.hom_ext` and `colimit.hom_ext`.
  dsimp [iso, -Iso.app_hom]
  simp only [Category.assoc]
  rw [Eq.comm, ← Iso.inv_comp_eq, ← Iso.inv_comp_eq]
  refine limit.hom_ext (fun j => colimit.hom_ext (fun i => ?_))
  simp only [Category.assoc]
  -- `simp` is not too helpful here because we will need to apply `NatTrans.comp_app_assoc`
  -- backwards at certain points, so we rewrite the term manually.
  rw [HasLimit.isoOfNatIso_hom_π, HasLimit.isoOfNatIso_hom_π_assoc, limit.post_π,
    colimitObjIsoColimitCompEvaluation_ι_inv_assoc (CostructuredArrow.proj yoneda A ⋙ yoneda),
    Iso.app_inv, ← NatTrans.comp_app_assoc, colimit.comp_coconePointUniqueUpToIso_inv,
    Presheaf.tautologicalCocone_ι_app, HasColimit.ι_isoOfNatIso_hom_assoc,
    HasLimit.isoOfNatIso_hom_π_assoc, HasColimit.ι_isoOfNatIso_hom_assoc,
    HasColimit.ι_isoOfNatIso_hom_assoc, HasColimit.ι_isoOfNatIso_hom_assoc,
    ι_colimitLimitIso_limit_π_assoc, isoAux_hom_app, ← NatTrans.comp_app_assoc,
    ← NatTrans.comp_app_assoc, Category.assoc, HasLimit.isoOfNatIso_hom_π,
    preservesLimitIso_hom_π_assoc, Iso.symm_hom,
    ← NatTrans.comp_app_assoc, HasColimit.ι_isoOfNatIso_hom,
    ← NatTrans.comp_app_assoc, Category.assoc,
    ι_colimitCompWhiskeringLeftIsoCompColimit_hom,
    NatTrans.comp_app, Category.assoc, isoWhiskerLeft_hom, NatTrans.comp_app, Category.assoc,
    ← NatTrans.comp_app, ← whiskerLeft_comp, colimit.comp_coconePointUniqueUpToIso_hom]
  have := i.hom.naturality (limit.π K j)
  dsimp only [yoneda_obj_obj, Functor.const_obj_obj] at this
  rw [← this]
  ext
  simp [flipFunctorToInterchange, functorToInterchangeIso, functorToInterchange]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9478bb4a6ed648e2538d3e888f0f74cd4d54981b4781efaeb0896548d0edc1c2.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47bd60363da690f7e27bc25067405aa240b44d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
