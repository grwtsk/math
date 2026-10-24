# integerJ_sub_corrected_abs_le_of_actual_row_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11bfa5bd-58de-3b2c-8346-4e437c1ab5c7",
  "kind": "theorem",
  "lexical_name": "integerJ_sub_corrected_abs_le_of_actual_row_bound",
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
  "slug": "integerj-sub-corrected-abs-le-of-actual-row-bound--61e6a86ff0cdeaec19fb07f2",
  "source": {
    "blob": "5c9e70e8dab1ea0967a8ba68557112bbadf17e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant40caf5fb9fe9d31e2d3315adc400e085bfa0c48d4d95e12e1d701365f27b0095.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61e6a86ff0cdeaec19fb07f21c19d56fad88dcedafd550f23e7c735b7564f16e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant40caf5fb9fe9d31e2d3315adc400e085bfa0c48d4d95e12e1d701365f27b0095.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11bfa5bd-58de-3b2c-8346-4e437c1ab5c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerJ_sub_corrected_abs_le_of_actual_row_bound (A : ℝ) (hA : 91 ≤ A)
    (hrow : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4) :
    |integerJ A - correctedCompleteOmega A| ≤ 960 * 67 / A ^ 3 := by
  rw [integerJ_eq_completeOmega_add_error A hA,
    completeOmega_eq_corrected_add_actualPeanoError A (by linarith)]
  have hid : correctedCompleteOmega A + actualPeanoCubicError A + completeOmegaError A -
      correctedCompleteOmega A = actualPeanoCubicError A + completeOmegaError A := by ring
  rw [hid]
  have ht := abs_add_le (actualPeanoCubicError A) (completeOmegaError A)
  have hp := actualPeanoCubicError_abs_le_of_actual_row_bound A (by linarith) hrow
  have he := completeOmegaError_abs_le A hA
  have hs : 640 * 67 / A ^ 3 + 320 * 67 / A ^ 3 = 960 * 67 / A ^ 3 := by ring
  rw [← hs]
  exact ht.trans (add_le_add hp he)

/-- The new combined numerical cost requires the real-scale cutoff 117. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant40caf5fb9fe9d31e2d3315adc400e085bfa0c48d4d95e12e1d701365f27b0095.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant40caf5fb9fe9d31e2d3315adc400e085bfa0c48d4d95e12e1d701365f27b0095.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c9e70e8dab1ea0967a8ba68557112bbadf17e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
