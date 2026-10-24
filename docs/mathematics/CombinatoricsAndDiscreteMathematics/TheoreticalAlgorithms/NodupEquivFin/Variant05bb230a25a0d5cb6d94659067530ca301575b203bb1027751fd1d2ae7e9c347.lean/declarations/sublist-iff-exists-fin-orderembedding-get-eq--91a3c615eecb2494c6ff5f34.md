# sublist_iff_exists_fin_orderEmbedding_get_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98ff504a389be9dbdedf15ea5b8535afb33b1a8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b0bdc27-3b68-d296-5360-cb07a7b2a188",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9d155f9-a8d1-440d-0f26-5d06a040ac9e",
  "kind": "theorem",
  "lexical_name": "sublist_iff_exists_fin_orderEmbedding_get_eq",
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
  "slug": "sublist-iff-exists-fin-orderembedding-get-eq--91a3c615eecb2494c6ff5f34",
  "source": {
    "blob": "98ff504a389be9dbdedf15ea5b8535afb33b1a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91a3c615eecb2494c6ff5f34aa51d19b87ddc82d482fde35938ba463ae770cd6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9d155f9-a8d1-440d-0f26-5d06a040ac9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublist_iff_exists_fin_orderEmbedding_get_eq {l l' : List α} :
    l <+ l' ↔
      ∃ f : Fin l.length ↪o Fin l'.length,
        ∀ ix : Fin l.length, l.get ix = l'.get (f ix) := by
  rw [sublist_iff_exists_orderEmbedding_getElem?_eq]
  constructor
  · rintro ⟨f, hf⟩
    have h : ∀ {i : ℕ}, i < l.length → f i < l'.length := by
      intro i hi
      specialize hf i
      rw [getElem?_eq_getElem hi, eq_comm, getElem?_eq_some_iff] at hf
      obtain ⟨h, -⟩ := hf
      exact h
    refine ⟨OrderEmbedding.ofMapLEIff (fun ix => ⟨f ix, h ix.is_lt⟩) ?_, ?_⟩
    · simp
    · intro i
      apply Option.some_injective
      simpa [getElem?_eq_getElem i.2, getElem?_eq_getElem (h i.2)] using hf i
  · rintro ⟨f, hf⟩
    refine
      ⟨OrderEmbedding.ofStrictMono (fun i => if hi : i < l.length then f ⟨i, hi⟩ else i + l'.length)
          ?_,
        ?_⟩
    · intro i j h
      dsimp only
      split_ifs with hi hj hj
      · rwa [Fin.val_fin_lt, f.lt_iff_lt]
      · lia
      · exact absurd (h.trans hj) hi
      · simpa using h
    · grind

/-- An element `x : α` of `l : List α` is a duplicate iff it can be found
at two distinct indices `n m : ℕ` inside the list `l`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ff504a389be9dbdedf15ea5b8535afb33b1a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
