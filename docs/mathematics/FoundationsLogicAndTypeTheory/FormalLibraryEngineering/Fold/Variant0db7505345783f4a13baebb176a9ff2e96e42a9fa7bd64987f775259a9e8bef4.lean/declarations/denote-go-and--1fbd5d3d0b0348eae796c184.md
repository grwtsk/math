# denote_go_and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1734354b02af7ea275ad0ee081417f0ebb2285d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2f8427d-bea1-72a2-a3bb-5ff3be5db4c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:852ed222-f57c-96a7-8c6c-48e176234016",
  "kind": "theorem",
  "lexical_name": "denote_go_and",
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
  "slug": "denote-go-and--1fbd5d3d0b0348eae796c184",
  "source": {
    "blob": "f1734354b02af7ea275ad0ee081417f0ebb2285d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fbd5d3d0b0348eae796c18472a657bec702e7b53e6296fdfd62ae976d9ecc2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:852ed222-f57c-96a7-8c6c-48e176234016`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_go_and {aig : AIG α} (acc : AIG.Ref aig) (curr : Nat)
    (hcurr : curr ≤ len) (input : RefVec aig len) :
    ⟦
      (go aig acc curr len input mkAndCached).aig,
      (go aig acc curr len input mkAndCached).ref,
      assign
    ⟧
      =
    (
      ⟦aig, acc, assign⟧
        ∧
      (∀ (idx : Nat) (hidx1 : idx < len), curr ≤ idx → ⟦aig, input.get idx hidx1, assign⟧)
    ) := by
  generalize hgo : go aig acc curr len input mkAndCached = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    rw [← hgo]
    rw [denote_go_and]
    · simp only [denote_projected_entry, denote_mkAndCached, Bool.and_eq_true, get_cast,
        eq_iff_iff]
      constructor
      · intro h
        rcases h with ⟨⟨h1, h2⟩, h3⟩
        constructor
        · assumption
        · intro idx hidx1 hidx2
          cases Nat.eq_or_lt_of_le hidx2 with
          | inl heq => simpa [heq] using h2
          | inr hlt =>
            specialize h3 idx hidx1 (by omega)
            rw [← h3]
            rw [AIG.LawfulOperator.denote_mem_prefix (f := AIG.mkAndCached)]
            · simp
            · simp [Ref.hgate]
      · simp only [and_imp]
        intro hacc hrest
        constructor
        · simp [hacc, hrest]
        · intro idx hidx1 hidx2
          specialize hrest idx hidx1 (by omega)
          rw [← hrest]
          rw [AIG.LawfulOperator.denote_mem_prefix (f := AIG.mkAndCached)]
          · simp
          · simp [Ref.hgate]
    · omega
  · rw [← hgo]
    simp only [eq_iff_iff, iff_self_and]
    omega
termination_by len - curr

end fold

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variant0db7505345783f4a13baebb176a9ff2e96e42a9fa7bd64987f775259a9e8bef4.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1734354b02af7ea275ad0ee081417f0ebb2285d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
