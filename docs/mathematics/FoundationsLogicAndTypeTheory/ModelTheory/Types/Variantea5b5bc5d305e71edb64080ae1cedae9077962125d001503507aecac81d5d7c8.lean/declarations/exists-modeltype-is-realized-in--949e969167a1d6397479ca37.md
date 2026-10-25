# exists_modelType_is_realized_in

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79d58d84141ef94aad7e3f2de85a421842ba0f24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:452884d2-029f-0ce6-3659-c981d45e3abe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba95c4a6-9ad6-b306-6c36-0bd8074403a4",
  "kind": "theorem",
  "lexical_name": "exists_modelType_is_realized_in",
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
  "slug": "exists-modeltype-is-realized-in--949e969167a1d6397479ca37",
  "source": {
    "blob": "79d58d84141ef94aad7e3f2de85a421842ba0f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 241,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:949e969167a1d6397479ca3734d9df5dc149fea170dd7b0f26e78a77e6a6d095",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba95c4a6-9ad6-b306-6c36-0bd8074403a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_modelType_is_realized_in (p : T.CompleteType α) :
    ∃ M : Theory.ModelType.{u, v, max u v w} T, p ∈ T.realizedTypes M α := by
  obtain ⟨M⟩ := p.isMaximal.1
  refine ⟨(M.subtheoryModel p.subset).reduct (L.lhomWithConstants α), fun a => (L.con a : M), ?_⟩
  refine SetLike.ext fun φ => ?_
  simp only [CompleteType.mem_typeOf]
  refine
    (@Formula.realize_equivSentence_symm_con _
      ((M.subtheoryModel p.subset).reduct (L.lhomWithConstants α)) _ _ M.struc _ φ).trans
      (_root_.trans (_root_.trans ?_ (p.isMaximal.isComplete.realize_sentence_iff φ M))
        (p.isMaximal.mem_iff_models φ).symm)
  rfl

end

end Theory

end Language

end FirstOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d58d84141ef94aad7e3f2de85a421842ba0f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
