# IsBasis.contract_isBasis_of_isBasis'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eebb258ff1a858db4d643c0458a98390dc5dea6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab6d7214-e4f1-a3ef-e279-75648023efc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29aa8e11-f92a-c1a6-f3c2-a2354a580757",
  "kind": "lemma",
  "lexical_name": "IsBasis.contract_isBasis_of_isBasis'",
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
  "slug": "isbasis-contract-isbasis-of-isbasis--c364704ad02d7261a8324211",
  "source": {
    "blob": "7eebb258ff1a858db4d643c0458a98390dc5dea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 290,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c364704ad02d7261a8324211af61ef504e20d66d0987312b8f65a6eb0d5bd3ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29aa8e11-f92a-c1a6-f3c2-a2354a580757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBasis.contract_isBasis_of_isBasis' (h : M.IsBasis I X) (hJC : M.IsBasis' J C)
    (h_ind : M.Indep (I \ C ∪ J)) : (M ／ C).IsBasis (I \ C) (X \ C) := by
  have hIX := h.subset
  have hJCss := hJC.subset
  rw [hJC.contract_eq_contract_delete, delete_isBasis_iff]
  refine ⟨contract_isBasis_union_union (h_ind.isBasis_of_subset_of_subset_closure ?_ ?_) ?_ ?_, ?_⟩
  rotate_left
  · rw [closure_union_congr_right hJC.closure_eq_closure, sdiff_union_self,
      closure_union_congr_left h.closure_eq_closure]
    exact subset_closure_of_subset' _ (by tauto_set)
      (union_subset (sdiff_subset.trans h.subset_ground) hJC.indep.subset_ground)
  all_goals tauto_set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eebb258ff1a858db4d643c0458a98390dc5dea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
