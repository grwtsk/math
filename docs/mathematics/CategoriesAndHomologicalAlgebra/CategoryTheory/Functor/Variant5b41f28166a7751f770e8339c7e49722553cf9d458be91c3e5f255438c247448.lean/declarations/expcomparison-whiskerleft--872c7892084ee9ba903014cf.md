# expComparison_whiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2c6b4e7523655eb2efc511e2c7d6f74cfd0505a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f3d9373-a77e-7d0b-d1ec-d587afdd2021",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb59b406-e3ac-b7f1-bbae-11867e1b3f75",
  "kind": "theorem",
  "lexical_name": "expComparison_whiskerLeft",
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
  "slug": "expcomparison-whiskerleft--872c7892084ee9ba903014cf",
  "source": {
    "blob": "f2c6b4e7523655eb2efc511e2c7d6f74cfd0505a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:872c7892084ee9ba903014cf74495ae741cebe9990f127a92f2ba542c4ce6872",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb59b406-e3ac-b7f1-bbae-11867e1b3f75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expComparison_whiskerLeft {A A' : C} (f : A' ⟶ A) :
    (expComparison F A).whiskerBottom (pre (F.map f)) =
      (expComparison F A').whiskerTop (pre f) := by
  unfold expComparison pre
  have vcomp1 := mateEquiv_conjugateEquiv_vcomp
    (exp.adjunction A) (exp.adjunction (F.obj A)) (exp.adjunction (F.obj A'))
    ((prodComparisonNatIso F A).inv) (((curriedTensor D).map (F.map f)))
  have vcomp2 := conjugateEquiv_mateEquiv_vcomp
    (exp.adjunction A) (exp.adjunction A') (exp.adjunction (F.obj A'))
    (((curriedTensor C).map f)) ((prodComparisonNatIso F A').inv)
  rw [← vcomp1, ← vcomp2]
  unfold TwoSquare.whiskerLeft TwoSquare.whiskerRight
  congr 1
  apply congr_arg
  ext B
  simp only [Functor.comp_obj, tensorLeft_obj, prodComparisonNatIso_inv, asIso_inv,
    NatTrans.comp_app, whiskerLeft_app, curriedTensor_map_app, NatIso.isIso_inv_app,
    whiskerRight_app, IsIso.eq_inv_comp, prodComparisonNatTrans_app]
  rw [← prodComparison_inv_natural_whiskerRight F f]
  simp

/-- The functor `F` is cartesian closed (ie preserves exponentials) if each natural transformation
`exp_comparison F A` is an isomorphism
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5b41f28166a7751f770e8339c7e49722553cf9d458be91c3e5f255438c247448.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2c6b4e7523655eb2efc511e2c7d6f74cfd0505a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
