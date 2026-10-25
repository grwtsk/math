# map_equiv_removeNone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b618a05d0cce89464ef8694bf5c95464bb7614a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fddd209-fb31-4335-2716-1f88fa5ca816",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee57babf-d38a-c5f4-b907-7b1a0a120801",
  "kind": "theorem",
  "lexical_name": "map_equiv_removeNone",
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
  "slug": "map-equiv-removenone--3047c075b99af2a5f799a883",
  "source": {
    "blob": "8b618a05d0cce89464ef8694bf5c95464bb7614a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3047c075b99af2a5f799a883946b19102dd64af047b56901a4ad0ad8da92e9e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee57babf-d38a-c5f4-b907-7b1a0a120801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_equiv_removeNone {α : Type*} [DecidableEq α] (σ : Perm (Option α)) :
    (removeNone σ).optionCongr = swap none (σ none) * σ := by
  ext1 x
  have : Option.map (⇑(removeNone σ)) x = (swap none (σ none)) (σ x) := by
    cases' x with x
    · simp
    · cases h : σ (some _)
      · simp [removeNone_none _ h]
      · have hn : σ (some x) ≠ none := by simp [h]
        have hσn : σ (some x) ≠ σ none := σ.injective.ne (by simp)
        simp [removeNone_some _ ⟨_, h⟩, ← h, swap_apply_of_ne_of_ne hn hσn]
  simpa using this
#align map_equiv_remove_none map_equiv_removeNone

/-- Permutations of `Option α` are equivalent to fixing an
`Option α` and permuting the remaining with a `Perm α`.
The fixed `Option α` is swapped with `none`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant8c55c47f8ed5ad397c5e8217578e9b21a1d6172dbfe17fca21baa994abff2cb4.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b618a05d0cce89464ef8694bf5c95464bb7614a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
