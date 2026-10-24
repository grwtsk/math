# colimitCoyonedaHomIsoLimitUnop_π_apply

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
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e095add7cda5ea5132c94a7d09fc82d183d819c60f8886e764624dd51bd38d1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e913013-5a05-265e-64ef-3ef297cc467b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f36f9a5-a7af-feeb-b32e-c0e3d43fc895",
  "kind": "lemma",
  "lexical_name": "colimitCoyonedaHomIsoLimitUnop_π_apply",
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
  "slug": "colimitcoyonedahomisolimitunop-apply--941a9d4377cf45418b13d09b",
  "source": {
    "blob": "dd6c8e825b93ab267dd57460e6e99674e71824c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 287,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variante095add7cda5ea5132c94a7d09fc82d183d819c60f8886e764624dd51bd38d1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:941a9d4377cf45418b13d09ba700f3824ed91acfbc2679c4fa6d4d650deb4356",
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

Occurrence: `result:5f36f9a5-a7af-feeb-b32e-c0e3d43fc895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma colimitCoyonedaHomIsoLimitUnop_π_apply (f : colimit (D ⋙ coyoneda) ⟶ F) (i : I) :
    dsimp% limit.π (D.unop ⋙ F ⋙ uliftFunctor.{u₁}) i ((colimitCoyonedaHomIsoLimitUnop D F).hom f) =
      ⟨f.app (D.obj (op i)).unop
          ((colimit.ι (D ⋙ coyoneda) ⟨i⟩).app (D.obj (op i)).unop (𝟙 (D.obj (op i)).unop))⟩ :=
  haveI : HasColimit (D.unop.op ⋙ coyoneda) :=
    inferInstanceAs <| HasColimit (D ⋙ coyoneda)
  colimitCoyonedaHomIsoLimit'_π_apply _ _ _ _

end ProCoyonedaCovariantUnop

section IndYonedaContravariant

variable (D : I ⥤ Cᵒᵖ) (F : Cᵒᵖ ⥤ Type u₂)
variable [HasColimit (D.leftOp ⋙ yoneda)] [HasLimitsOfShape I (Type (max u₁ u₂))]

/-- Ind-Yoneda lemma: morphisms from colimit of yoneda of diagram `D` to `F` is limit of `F`
evaluated at `D`. This version is for contravariant diagrams, see `colimitYonedaHomIsoLimit` for a
covariant version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variante095add7cda5ea5132c94a7d09fc82d183d819c60f8886e764624dd51bd38d1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variante095add7cda5ea5132c94a7d09fc82d183d819c60f8886e764624dd51bd38d1a.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6c8e825b93ab267dd57460e6e99674e71824c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
