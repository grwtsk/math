# tendsto_neg_atBot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82a4ec212388bd1f51132e1cd21f05b2bec4b6e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 921,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c97755b-4133-4199-47a2-3b8eaf9f2b9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41b023f7-0cff-7782-ab72-3d89a55ade84",
  "kind": "theorem",
  "lexical_name": "tendsto_neg_atBot_iff",
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
  "slug": "tendsto-neg-atbot-iff--9cfeb89e6e6c8a88a13f507c",
  "source": {
    "blob": "82a4ec212388bd1f51132e1cd21f05b2bec4b6e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 931,
    "line": 921,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cfeb89e6e6c8a88a13f507cd51822f35c5eace4fae1f8899640a98faa1d99e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41b023f7-0cff-7782-ab72-3d89a55ade84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 921–931.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_neg_atBot_iff : Tendsto (fun x => -f x) l atBot ↔ Tendsto f l atTop :=
  (OrderIso.neg β).tendsto_atTop_iff
#align filter.tendsto_neg_at_bot_iff Filter.tendsto_neg_atBot_iff

end OrderedGroup

section StrictOrderedSemiring

variable [StrictOrderedSemiring α] {l : Filter β} {f g : β → α}

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean#L921).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a4ec212388bd1f51132e1cd21f05b2bec4b6e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
