# exists_lt_of_tendsto_atTop

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
      "line": 584,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:875fc2d2-99af-bb4d-d1c0-d8044218b68e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad9682fb-5463-33b8-81a7-de1a8131d70c",
  "kind": "theorem",
  "lexical_name": "exists_lt_of_tendsto_atTop",
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
  "slug": "exists-lt-of-tendsto-attop--907de259645a980f684b89c3",
  "source": {
    "blob": "82a4ec212388bd1f51132e1cd21f05b2bec4b6e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 584,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:907de259645a980f684b89c37811c9c9e6d065272bd4082daeefb33994f614b1",
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

Occurrence: `result:ad9682fb-5463-33b8-81a7-de1a8131d70c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_of_tendsto_atTop [SemilatticeSup α] [Preorder β] [NoMaxOrder β] {u : α → β}
    (h : Tendsto u atTop atTop) (a : α) (b : β) : ∃ a' ≥ a, b < u a' := by
  cases' exists_gt b with b' hb'
  rcases exists_le_of_tendsto_atTop h a b' with ⟨a', ha', ha''⟩
  exact ⟨a', ha', lt_of_lt_of_le hb' ha''⟩
#align filter.exists_lt_of_tendsto_at_top Filter.exists_lt_of_tendsto_atTop

-- @[nolint ge_or_gt] -- Porting note: restore attribute
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a4ec212388bd1f51132e1cd21f05b2bec4b6e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
