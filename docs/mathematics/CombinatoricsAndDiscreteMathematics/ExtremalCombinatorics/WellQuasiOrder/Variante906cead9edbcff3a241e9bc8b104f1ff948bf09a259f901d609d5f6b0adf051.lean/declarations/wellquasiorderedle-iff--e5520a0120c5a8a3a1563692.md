# wellQuasiOrderedLE_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2a7ebd133d31952a2d2b654fb30c7596e551f0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a1df923-1933-e22c-f0f2-112fa5584c2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81ea170c-8e9b-c610-1eb2-5159e4ff8976",
  "kind": "theorem",
  "lexical_name": "wellQuasiOrderedLE_iff",
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
  "slug": "wellquasiorderedle-iff--e5520a0120c5a8a3a1563692",
  "source": {
    "blob": "b2a7ebd133d31952a2d2b654fb30c7596e551f0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variante906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5520a0120c5a8a3a156369274b57007c7545c3de306157b4d169f3d663437e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variante906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81ea170c-8e9b-c610-1eb2-5159e4ff8976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellQuasiOrderedLE_iff :
    WellQuasiOrderedLE α ↔ WellFoundedLT α ∧ ∀ s : Set α, IsAntichain (· ≤ ·) s → s.Finite := by
  refine ⟨fun h ↦ ⟨h.to_wellFoundedLT, fun s ↦ h.finite_of_isAntichain⟩,
    fun ⟨hwf, hc⟩ ↦ ⟨fun f ↦ ?_⟩⟩
  obtain ⟨g, h1 | h2⟩ := exists_increasing_or_nonincreasing_subseq (· > ·) f
  · exfalso
    apply RelEmbedding.not_wellFounded_of_decreasing_seq _ hwf.wf
    exact (RelEmbedding.ofMonotone _ h1).swap
  · contrapose! hc
    refine ⟨Set.range (f ∘ g), ?_, ?_⟩
    · rintro _ ⟨m, rfl⟩ _ ⟨n, rfl⟩ _ hf
      obtain h | rfl | h := lt_trichotomy m n
      · exact hc _ _ (g.strictMono h) hf
      · contradiction
      · exact h2 _ _ h (lt_of_le_not_le hf (hc _ _ (g.strictMono h)))
    · refine Set.infinite_range_of_injective fun m n (hf : f (g m) = f (g n)) ↦ ?_
      obtain h | rfl | h := lt_trichotomy m n <;>
        (first | rfl | cases (hf ▸ hc _ _ (g.strictMono h)) le_rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variante906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/WellQuasiOrder/Variante906cead9edbcff3a241e9bc8b104f1ff948bf09a259f901d609d5f6b0adf051.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a7ebd133d31952a2d2b654fb30c7596e551f0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
