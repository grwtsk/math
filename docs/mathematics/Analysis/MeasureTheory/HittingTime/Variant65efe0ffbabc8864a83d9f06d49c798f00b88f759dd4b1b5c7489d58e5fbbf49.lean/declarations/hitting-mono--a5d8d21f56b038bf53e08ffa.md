# hitting_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be0ad7517a91b7707a098018c45f3b548879b219",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff1b8d8b-ee33-3325-3bb8-fff84c702550",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dda87002-e5ee-cb09-aee0-3f7f49322902",
  "kind": "theorem",
  "lexical_name": "hitting_mono",
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
  "slug": "hitting-mono--a5d8d21f56b038bf53e08ffa",
  "source": {
    "blob": "be0ad7517a91b7707a098018c45f3b548879b219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 211,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5d8d21f56b038bf53e08ffa4dcaf0c26aac72501e87a44bdcceb41cfa225306",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dda87002-e5ee-cb09-aee0-3f7f49322902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hitting_mono {m₁ m₂ : ι} (hm : m₁ ≤ m₂) : hitting u s n m₁ ω ≤ hitting u s n m₂ ω := by
  by_cases h : ∃ j ∈ Set.Icc n m₁, u j ω ∈ s
  · exact (hitting_eq_hitting_of_exists hm h).le
  · simp_rw [hitting, if_neg h]
    split_ifs with h'
    · obtain ⟨j, hj₁, hj₂⟩ := h'
      refine' le_csInf ⟨j, hj₁, hj₂⟩ _
      by_contra hneg; push_neg at hneg
      obtain ⟨i, hi₁, hi₂⟩ := hneg
      exact h ⟨i, ⟨hi₁.1.1, hi₂.le⟩, hi₁.2⟩
    · exact hm
#align measure_theory.hitting_mono MeasureTheory.hitting_mono

end Inequalities

/-- A discrete hitting time is a stopping time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be0ad7517a91b7707a098018c45f3b548879b219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
