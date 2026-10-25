# mk_diff_add_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:161d1a30-44f8-6386-6181-58a7b504a959",
  "kind": "theorem",
  "lexical_name": "mk_diff_add_mk",
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
  "slug": "mk-diff-add-mk--8f5469099b3e389b0b7ceb5e",
  "source": {
    "blob": "24a656c167f3993ac71f2f5558c4692fb8598fc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2255,
    "line": 2251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantbc078d238dab837ccce977f1182409092dc43188f896a91e74d35f79cec69ce3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f5469099b3e389b0b7ceb5ebdab7283c47709a65223b3765f067403c5b8de75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantbc078d238dab837ccce977f1182409092dc43188f896a91e74d35f79cec69ce3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:161d1a30-44f8-6386-6181-58a7b504a959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2251–2255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_diff_add_mk {S T : Set α} (h : T ⊆ S) : #(S \ T : Set α) + #T = #S := by
  refine (mk_union_of_disjoint <| ?_).symm.trans <| by rw [diff_union_of_subset h]
  exact disjoint_sdiff_self_left
#align cardinal.mk_diff_add_mk Cardinal.mk_diff_add_mk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantbc078d238dab837ccce977f1182409092dc43188f896a91e74d35f79cec69ce3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantbc078d238dab837ccce977f1182409092dc43188f896a91e74d35f79cec69ce3.lean#L2251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24a656c167f3993ac71f2f5558c4692fb8598fc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
