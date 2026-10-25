# infinite_pigeonhole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8db3882da37ef299a35ab3b999665ea50ea11f52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bdad3fb-fbba-6767-e9a6-d837349506f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcb5b566-e11b-3e61-4580-1c660cd4e54c",
  "kind": "theorem",
  "lexical_name": "infinite_pigeonhole",
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
  "slug": "infinite-pigeonhole--85c49b6b5afbff1b93af290c",
  "source": {
    "blob": "8db3882da37ef299a35ab3b999665ea50ea11f52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85c49b6b5afbff1b93af290c612012fb91fdb1a98bd1ac49f59eaf44c1ade9c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcb5b566-e11b-3e61-4580-1c660cd4e54c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infinite_pigeonhole {β α : Type u} (f : β → α) (h₁ : ℵ₀ ≤ #β) (h₂ : #α < (#β).ord.cof) :
    ∃ a : α, #(f ⁻¹' {a}) = #β := by
  have : ∃ a, #β ≤ #(f ⁻¹' {a}) := by
    by_contra! h
    apply mk_univ.not_lt
    rw [← preimage_univ, ← iUnion_of_singleton, preimage_iUnion]
    exact
      mk_iUnion_le_sum_mk.trans_lt
        ((sum_le_iSup _).trans_lt <| mul_lt_of_lt h₁ (h₂.trans_le <| cof_ord_le _) (iSup_lt h₂ h))
  obtain ⟨x, h⟩ := this
  refine ⟨x, h.antisymm' ?_⟩
  rw [le_mk_iff_exists_set]
  exact ⟨_, rfl⟩

/-- Pigeonhole principle for a cardinality below the cardinality of the domain -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8db3882da37ef299a35ab3b999665ea50ea11f52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
