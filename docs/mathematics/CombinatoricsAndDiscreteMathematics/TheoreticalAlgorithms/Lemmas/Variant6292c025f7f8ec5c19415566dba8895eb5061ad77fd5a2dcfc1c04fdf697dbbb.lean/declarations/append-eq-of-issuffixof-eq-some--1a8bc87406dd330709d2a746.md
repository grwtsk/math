# append_eq_of_isSuffixOf?_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5da35a018fd4bc6264539fedb73a10c0f68f7691",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 661,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62713155-95e8-b0e8-83b5-658404aa4251",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:531c9ca8-892a-32e3-6871-4364b5d4753b",
  "kind": "theorem",
  "lexical_name": "append_eq_of_isSuffixOf?_eq_some",
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
  "slug": "append-eq-of-issuffixof-eq-some--1a8bc87406dd330709d2a746",
  "source": {
    "blob": "5da35a018fd4bc6264539fedb73a10c0f68f7691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 661,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a8bc87406dd330709d2a746b781886d8dc697b68499db019333b4dd3f6639e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:531c9ca8-892a-32e3-6871-4364b5d4753b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem append_eq_of_isSuffixOf?_eq_some [BEq α] [LawfulBEq α] {xs ys zs : List α}
    (h : xs.isSuffixOf? ys = some zs) : zs ++ xs = ys := by simp_all

/-! ### deprecations -/

@[deprecated (since := "2024-10-21")] alias modifyNth_nil := modify_nil
@[deprecated (since := "2024-10-21")] alias modifyNth_zero_cons := modify_zero_cons
@[deprecated (since := "2024-10-21")] alias modifyNth_succ_cons := modify_succ_cons
@[deprecated (since := "2024-10-21")] alias modifyNthTail_id := modifyTailIdx_id
@[deprecated (since := "2024-10-21")] alias eraseIdx_eq_modifyNthTail := eraseIdx_eq_modifyTailIdx
@[deprecated (since := "2024-10-21")] alias getElem?_modifyNth := getElem?_modify
@[deprecated (since := "2024-10-21")] alias length_modifyNthTail := length_modifyTailIdx
@[deprecated (since := "2024-10-21")] alias modifyNthTail_add := modifyTailIdx_add
@[deprecated (since := "2024-10-21")] alias exists_of_modifyNthTail := exists_of_modifyTailIdx
@[deprecated (since := "2024-10-21")] alias length_modifyNth := length_modify
@[deprecated (since := "2024-10-21")] alias getElem?_modifyNth_eq := getElem?_modify_eq
@[deprecated (since := "2024-10-21")] alias exists_of_modifyNth := exists_of_modify
@[deprecated (since := "2024-10-21")] alias modifyNthTail_eq_take_drop := modifyTailIdx_eq_take_drop
@[deprecated (since := "2024-10-21")] alias modifyNth_eq_take_drop := modify_eq_take_drop
@[deprecated (since := "2024-10-21")] alias modifyNth_eq_take_cons_drop := modify_eq_take_cons_drop
@[deprecated (since := "2024-10-21")] alias set_eq_modifyNth := set_eq_modify
@[deprecated (since := "2024-10-21")] alias modifyNth_eq_set_get? := modify_eq_set_get?
@[deprecated (since := "2024-10-21")] alias modifyNth_eq_set_get := modify_eq_set_get
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant6292c025f7f8ec5c19415566dba8895eb5061ad77fd5a2dcfc1c04fdf697dbbb.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5da35a018fd4bc6264539fedb73a10c0f68f7691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
