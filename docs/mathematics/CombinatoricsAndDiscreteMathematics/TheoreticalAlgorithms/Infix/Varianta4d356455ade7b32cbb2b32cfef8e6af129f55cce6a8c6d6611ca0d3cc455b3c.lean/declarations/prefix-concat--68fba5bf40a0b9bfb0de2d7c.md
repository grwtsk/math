# prefix_concat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ce0d4beb79bdd5d2fe955568d0a94be2dc8af10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:862b0cb9-8419-60d5-d5f1-37f76bb38c92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5504583-136c-9b41-4244-34b3e683131b",
  "kind": "theorem",
  "lexical_name": "prefix_concat",
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
  "slug": "prefix-concat--68fba5bf40a0b9bfb0de2d7c",
  "source": {
    "blob": "2ce0d4beb79bdd5d2fe955568d0a94be2dc8af10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Varianta4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68fba5bf40a0b9bfb0de2d7c44a43a0371d3a51488bb4e1ce99f72186be5168e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Varianta4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5504583-136c-9b41-4244-34b3e683131b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefix_concat (a : α) (l) : l <+: concat l a := by simp
#align list.prefix_concat List.prefix_concat

#align list.infix_cons List.infix_cons
#align list.infix_concat List.infix_concat
#align list.is_prefix.trans List.isPrefix.trans
#align list.is_suffix.trans List.isSuffix.trans
#align list.is_infix.trans List.isInfix.trans
#align list.is_infix.sublist List.isInfix.sublist
#align list.is_infix.subset List.isInfix.subset
#align list.is_prefix.sublist List.isPrefix.sublist
#align list.is_prefix.subset List.isPrefix.subset
#align list.is_suffix.sublist List.isSuffix.sublist
#align list.is_suffix.subset List.isSuffix.subset
#align list.reverse_suffix List.reverse_suffix
#align list.reverse_prefix List.reverse_prefix
#align list.reverse_infix List.reverse_infix

alias ⟨_, isSuffix.reverse⟩ := reverse_prefix
#align list.is_suffix.reverse List.isSuffix.reverse

alias ⟨_, isPrefix.reverse⟩ := reverse_suffix
#align list.is_prefix.reverse List.isPrefix.reverse

alias ⟨_, isInfix.reverse⟩ := reverse_infix
#align list.is_infix.reverse List.isInfix.reverse

#align list.is_infix.length_le List.isInfix.length_le
#align list.is_prefix.length_le List.isPrefix.length_le
#align list.is_suffix.length_le List.isSuffix.length_le
#align list.infix_nil_iff List.infix_nil
#align list.prefix_nil_iff List.prefix_nil
#align list.suffix_nil_iff List.suffix_nil

alias ⟨eq_nil_of_infix_nil, _⟩ := infix_nil
#align list.eq_nil_of_infix_nil List.eq_nil_of_infix_nil

alias ⟨eq_nil_of_prefix_nil, _⟩ := prefix_nil
#align list.eq_nil_of_prefix_nil List.eq_nil_of_prefix_nil

alias ⟨eq_nil_of_suffix_nil, _⟩ := suffix_nil
#align list.eq_nil_of_suffix_nil List.eq_nil_of_suffix_nil

#align list.infix_iff_prefix_suffix List.infix_iff_prefix_suffix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Varianta4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Varianta4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ce0d4beb79bdd5d2fe955568d0a94be2dc8af10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
