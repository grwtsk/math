# leastGE_eq_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e168e34ce7c2455cd4d04106b9a5857e19c0fdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad6f9d8c-758b-18d5-58e7-dd8079aac92c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce5ca79a-b0c7-cfbd-e59b-eac5fcd312ad",
  "kind": "theorem",
  "lexical_name": "leastGE_eq_min",
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
  "slug": "leastge-eq-min--9e25d0d92254c8d364bd2780",
  "source": {
    "blob": "7e168e34ce7c2455cd4d04106b9a5857e19c0fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 69,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e25d0d92254c8d364bd2780c65ad61a85f52783f602ba16f2fe8d32aadecd6b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce5ca79a-b0c7-cfbd-e59b-eac5fcd312ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leastGE_eq_min (π : Ω → ℕ) (r : ℝ) (ω : Ω) {n : ℕ} (hπn : ∀ ω, π ω ≤ n) :
    leastGE f r (π ω) ω = min (π ω) (leastGE f r n ω) := by
  classical
  refine le_antisymm (le_min (leastGE_le _) (leastGE_mono (hπn ω) r ω)) ?_
  by_cases hle : π ω ≤ leastGE f r n ω
  · rw [min_eq_left hle, leastGE]
    by_cases h : ∃ j ∈ Set.Icc 0 (π ω), f j ω ∈ Set.Ici r
    · refine hle.trans (Eq.le ?_)
      rw [leastGE, ← hitting_eq_hitting_of_exists (hπn ω) h]
    · simp only [hitting, if_neg h, le_rfl]
  · rw [min_eq_right (not_le.1 hle).le, leastGE, leastGE, ←
      hitting_eq_hitting_of_exists (hπn ω) _]
    rw [not_le, leastGE, hitting_lt_iff _ (hπn ω)] at hle
    exact
      let ⟨j, hj₁, hj₂⟩ := hle
      ⟨j, ⟨hj₁.1, hj₁.2.le⟩, hj₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e168e34ce7c2455cd4d04106b9a5857e19c0fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
