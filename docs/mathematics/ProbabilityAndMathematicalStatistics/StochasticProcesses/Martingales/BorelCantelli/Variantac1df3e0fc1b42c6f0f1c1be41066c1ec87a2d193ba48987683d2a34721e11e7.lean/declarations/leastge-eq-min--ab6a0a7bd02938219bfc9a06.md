# leastGE_eq_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:087edd0d-f812-ae30-6052-c8e02ab75f9f",
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
  "slug": "leastge-eq-min--ab6a0a7bd02938219bfc9a06",
  "source": {
    "blob": "f131dccc62d498aae4427b38d0096dfd40cfbfd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab6a0a7bd02938219bfc9a0675510956f91755a7446e01b3435aed8eca3063ff",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:087edd0d-f812-ae30-6052-c8e02ab75f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leastGE_eq_min (π : Ω → ℕ) (r : ℝ) (ω : Ω) {n : ℕ} (hπn : ∀ ω, π ω ≤ n) :
    leastGE f r (π ω) ω = min (π ω) (leastGE f r n ω) := by
  classical
  refine' le_antisymm (le_min (leastGE_le _) (leastGE_mono (hπn ω) r ω)) _
  by_cases hle : π ω ≤ leastGE f r n ω
  · rw [min_eq_left hle, leastGE]
    by_cases h : ∃ j ∈ Set.Icc 0 (π ω), f j ω ∈ Set.Ici r
    · refine' hle.trans (Eq.le _)
      rw [leastGE, ← hitting_eq_hitting_of_exists (hπn ω) h]
    · simp only [hitting, if_neg h, le_rfl]
  · rw [min_eq_right (not_le.1 hle).le, leastGE, leastGE, ←
      hitting_eq_hitting_of_exists (hπn ω) _]
    rw [not_le, leastGE, hitting_lt_iff _ (hπn ω)] at hle
    exact
      let ⟨j, hj₁, hj₂⟩ := hle
      ⟨j, ⟨hj₁.1, hj₁.2.le⟩, hj₂⟩
#align measure_theory.least_ge_eq_min MeasureTheory.leastGE_eq_min

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantac1df3e0fc1b42c6f0f1c1be41066c1ec87a2d193ba48987683d2a34721e11e7.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f131dccc62d498aae4427b38d0096dfd40cfbfd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
