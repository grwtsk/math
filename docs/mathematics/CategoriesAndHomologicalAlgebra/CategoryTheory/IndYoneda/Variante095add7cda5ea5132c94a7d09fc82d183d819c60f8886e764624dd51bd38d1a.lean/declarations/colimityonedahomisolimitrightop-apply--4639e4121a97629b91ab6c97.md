# colimitYonedaHomIsoLimitRightOp_π_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd6c8e825b93ab267dd57460e6e99674e71824c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e095add7cda5ea5132c94a7d09fc82d183d819c60f8886e764624dd51bd38d1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21163bd9-77a7-d581-161f-5cff5ded76ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:597b0f3d-6de8-e9c9-7c57-e4ac9373b5eb",
  "kind": "lemma",
  "lexical_name": "colimitYonedaHomIsoLimitRightOp_π_apply",
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
  "slug": "colimityonedahomisolimitrightop-apply--4639e4121a97629b91ab6c97",
  "source": {
    "blob": "dd6c8e825b93ab267dd57460e6e99674e71824c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 339,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variante095add7cda5ea5132c94a7d09fc82d183d819c60f8886e764624dd51bd38d1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4639e4121a97629b91ab6c971109a9cb9926a6e5a0010a9b907939a64a01b75f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variante095add7cda5ea5132c94a7d09fc82d183d819c60f8886e764624dd51bd38d1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:597b0f3d-6de8-e9c9-7c57-e4ac9373b5eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma colimitYonedaHomIsoLimitRightOp_π_apply (f : colimit (D ⋙ yoneda) ⟶ F) (i : I) :
    dsimp% limit.π (D.rightOp ⋙ F ⋙ uliftFunctor.{u₁}) i
      ((colimitYonedaHomIsoLimitRightOp D F).hom f) = ⟨f.app (op (D.obj (op i)))
        ((colimit.ι (D ⋙ yoneda) (op i)).app (op (D.obj (op i))) (𝟙 (D.obj (op i))))⟩ :=
  haveI : HasColimit (D.rightOp.leftOp ⋙ yoneda) :=
    inferInstanceAs <| HasColimit (D ⋙ yoneda)
  colimitYonedaHomIsoLimit'_π_apply _ _ _ _

end IndYonedaContravariantRightOp

end Limits

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variante095add7cda5ea5132c94a7d09fc82d183d819c60f8886e764624dd51bd38d1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variante095add7cda5ea5132c94a7d09fc82d183d819c60f8886e764624dd51bd38d1a.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6c8e825b93ab267dd57460e6e99674e71824c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
