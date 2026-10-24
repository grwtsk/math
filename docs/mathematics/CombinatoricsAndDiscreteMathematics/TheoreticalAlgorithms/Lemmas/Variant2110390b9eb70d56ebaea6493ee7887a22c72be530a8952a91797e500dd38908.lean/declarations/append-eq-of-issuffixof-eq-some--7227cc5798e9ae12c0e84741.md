# append_eq_of_isSuffixOf?_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5c42261-6a22-8e15-4c81-b43c309bce57",
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
  "slug": "append-eq-of-issuffixof-eq-some--7227cc5798e9ae12c0e84741",
  "source": {
    "blob": "d4dea1180e1b3da3d5f9f5853c45064e1ce50349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 691,
    "line": 669,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2110390b9eb70d56ebaea6493ee7887a22c72be530a8952a91797e500dd38908.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7227cc5798e9ae12c0e847412aae1a53b4b18d8a15d780e01ae5cf32edf12a21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2110390b9eb70d56ebaea6493ee7887a22c72be530a8952a91797e500dd38908.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5c42261-6a22-8e15-4c81-b43c309bce57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–691.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2110390b9eb70d56ebaea6493ee7887a22c72be530a8952a91797e500dd38908.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2110390b9eb70d56ebaea6493ee7887a22c72be530a8952a91797e500dd38908.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4dea1180e1b3da3d5f9f5853c45064e1ce50349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
