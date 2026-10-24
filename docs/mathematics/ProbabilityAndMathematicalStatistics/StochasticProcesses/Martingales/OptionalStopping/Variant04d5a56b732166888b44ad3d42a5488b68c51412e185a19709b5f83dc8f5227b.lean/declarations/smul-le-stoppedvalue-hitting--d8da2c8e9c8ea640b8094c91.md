# smul_le_stoppedValue_hitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca1b4e8edfa5c4c386991e04ea1b34e01bd03203",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4d730e4-6c32-24b1-5b58-054a9b6096be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d09f9677-b051-0e9c-a37d-53e77375e2cc",
  "kind": "theorem",
  "lexical_name": "smul_le_stoppedValue_hitting",
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
  "slug": "smul-le-stoppedvalue-hitting--d8da2c8e9c8ea640b8094c91",
  "source": {
    "blob": "ca1b4e8edfa5c4c386991e04ea1b34e01bd03203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 106,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8da2c8e9c8ea640b8094c912cd0e489eeb72983b5ba7d0b9712f509feb6ce0b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d09f9677-b051-0e9c-a37d-53e77375e2cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_le_stoppedValue_hitting [IsFiniteMeasure μ] (hsub : Submartingale f 𝒢 μ) {ε : ℝ≥0}
    (n : ℕ) : ε • μ {ω | (ε : ℝ) ≤ (range (n + 1)).sup' nonempty_range_succ fun k => f k ω} ≤
    ENNReal.ofReal (∫ ω in {ω | (ε : ℝ) ≤ (range (n + 1)).sup' nonempty_range_succ fun k => f k ω},
      stoppedValue f (hitting f {y : ℝ | ↑ε ≤ y} 0 n) ω ∂μ) := by
  have hn : Set.Icc 0 n = {k | k ≤ n} := by ext x; simp
  have : ∀ ω, ((ε : ℝ) ≤ (range (n + 1)).sup' nonempty_range_succ fun k => f k ω) →
      (ε : ℝ) ≤ stoppedValue f (hitting f {y : ℝ | ↑ε ≤ y} 0 n) ω := by
    intro x hx
    simp_rw [le_sup'_iff, mem_range, Nat.lt_succ_iff] at hx
    refine stoppedValue_hitting_mem ?_
    simp only [Set.mem_setOf_eq, exists_prop, hn]
    exact
      let ⟨j, hj₁, hj₂⟩ := hx
      ⟨j, hj₁, hj₂⟩
  have h := setIntegral_ge_of_const_le (measurableSet_le measurable_const
    (Finset.measurable_range_sup'' fun n _ => (hsub.stronglyMeasurable n).measurable.le (𝒢.le n)))
      (measure_ne_top _ _) this (Integrable.integrableOn (hsub.integrable_stoppedValue
        (hitting_isStoppingTime hsub.adapted measurableSet_Ici) hitting_le))
  rw [ENNReal.le_ofReal_iff_toReal_le, ENNReal.toReal_smul]
  · exact h
  · exact ENNReal.mul_ne_top (by simp) (measure_ne_top _ _)
  · exact le_trans (mul_nonneg ε.coe_nonneg ENNReal.toReal_nonneg) h

/-- **Doob's maximal inequality**: Given a non-negative submartingale `f`, for all `ε : ℝ≥0`,
we have `ε • μ {ε ≤ f* n} ≤ ∫ ω in {ε ≤ f* n}, f n` where `f* n ω = max_{k ≤ n}, f k ω`.

In some literature, the Doob's maximal inequality refers to what we call Doob's Lp inequality
(which is a corollary of this lemma and will be proved in an upcoming PR). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca1b4e8edfa5c4c386991e04ea1b34e01bd03203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
