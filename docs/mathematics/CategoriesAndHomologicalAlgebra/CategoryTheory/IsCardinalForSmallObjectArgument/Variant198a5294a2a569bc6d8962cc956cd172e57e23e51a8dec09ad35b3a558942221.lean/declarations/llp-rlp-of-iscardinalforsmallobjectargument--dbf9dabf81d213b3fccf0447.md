# llp_rlp_of_isCardinalForSmallObjectArgument'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f80c421802e7f500905cd4c1907d43f29dcac2c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/198a5294a2a569bc6d8962cc956cd172e57e23e51a8dec09ad35b3a558942221.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be691e2f-b4eb-8524-af67-f54f44b43d94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99ad4776-81bc-4a3e-a3f6-779be5035bf5",
  "kind": "lemma",
  "lexical_name": "llp_rlp_of_isCardinalForSmallObjectArgument'",
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
  "slug": "llp-rlp-of-iscardinalforsmallobjectargument--dbf9dabf81d213b3fccf0447",
  "source": {
    "blob": "f80c421802e7f500905cd4c1907d43f29dcac2c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 479,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant198a5294a2a569bc6d8962cc956cd172e57e23e51a8dec09ad35b3a558942221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbf9dabf81d213b3fccf044764b8746e1e1edaeac2bc60b5d65cda0766a9c196",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant198a5294a2a569bc6d8962cc956cd172e57e23e51a8dec09ad35b3a558942221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99ad4776-81bc-4a3e-a3f6-779be5035bf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma llp_rlp_of_isCardinalForSmallObjectArgument' :
    I.rlp.llp = (transfiniteCompositionsOfShape
      (coproducts.{w} I).pushouts κ.ord.ToType).retracts := by
  refine le_antisymm ?_
    (retracts_transfiniteCompositionsOfShape_pushouts_coproducts_le_llp_rlp I κ.ord.ToType)
  intro X Y f hf
  have sq : CommSq (ιObj I κ f) f (πObj I κ f) (𝟙 _) := ⟨by simp⟩
  have := hf _ (rlp_πObj I κ f)
  refine ⟨_, _, _, ?_, transfiniteCompositionsOfShape_ιObj I κ f⟩
  exact
    { i := Arrow.homMk (𝟙 _) sq.lift
      r := Arrow.homMk (𝟙 _) (πObj I κ f) }

omit κ in
attribute [local instance] Cardinal.fact_isRegular_aleph0
  Cardinal.orderBotAleph0OrdToType in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant198a5294a2a569bc6d8962cc956cd172e57e23e51a8dec09ad35b3a558942221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant198a5294a2a569bc6d8962cc956cd172e57e23e51a8dec09ad35b3a558942221.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f80c421802e7f500905cd4c1907d43f29dcac2c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
