# LocallyIntegrableOn.exists_nat_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b60c712bc50594e180911367dda57a671f24c5d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f694927-7f47-b046-82cf-026b04996d3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85e6d4e7-d831-063a-78b2-e404ca12e03f",
  "kind": "theorem",
  "lexical_name": "LocallyIntegrableOn.exists_nat_integrableOn",
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
  "slug": "locallyintegrableon-exists-nat-integrableon--b847551b63d2ec64b6154347",
  "source": {
    "blob": "b60c712bc50594e180911367dda57a671f24c5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b847551b63d2ec64b6154347c30588b091ba3894fb69d79c0a1d8e8d6b0d0736",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85e6d4e7-d831-063a-78b2-e404ca12e03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocallyIntegrableOn.exists_nat_integrableOn [SecondCountableTopology X]
    (hf : LocallyIntegrableOn f s μ) : ∃ u : ℕ → Set X,
    (∀ n, IsOpen (u n)) ∧ (s ⊆ ⋃ n, u n) ∧ (∀ n, IntegrableOn f (u n ∩ s) μ) := by
  rcases hf.exists_countable_integrableOn with ⟨T, T_count, T_open, sT, hT⟩
  let T' : Set (Set X) := insert ∅ T
  have T'_count : T'.Countable := Countable.insert ∅ T_count
  have T'_ne : T'.Nonempty := by simp only [T', insert_nonempty]
  rcases T'_count.exists_eq_range T'_ne with ⟨u, hu⟩
  refine ⟨u, ?_, ?_, ?_⟩
  · intro n
    have : u n ∈ T' := by rw [hu]; exact mem_range_self n
    rcases mem_insert_iff.1 this with h|h
    · rw [h]
      exact isOpen_empty
    · exact T_open _ h
  · intro x hx
    obtain ⟨v, hv, h'v⟩ : ∃ v, v ∈ T ∧ x ∈ v := by simpa only [mem_iUnion, exists_prop] using sT hx
    have : v ∈ range u := by rw [← hu]; exact subset_insert ∅ T hv
    obtain ⟨n, rfl⟩ : ∃ n, u n = v := by simpa only [mem_range] using this
    exact mem_iUnion_of_mem _ h'v
  · intro n
    have : u n ∈ T' := by rw [hu]; exact mem_range_self n
    rcases mem_insert_iff.1 this with h|h
    · simp only [h, empty_inter, integrableOn_empty]
    · exact hT _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LocallyIntegrable/Variant31f5145d2e44c763dd58700755668a58bf1997c11031f2daaa8b24c6c0a41f26.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60c712bc50594e180911367dda57a671f24c5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
