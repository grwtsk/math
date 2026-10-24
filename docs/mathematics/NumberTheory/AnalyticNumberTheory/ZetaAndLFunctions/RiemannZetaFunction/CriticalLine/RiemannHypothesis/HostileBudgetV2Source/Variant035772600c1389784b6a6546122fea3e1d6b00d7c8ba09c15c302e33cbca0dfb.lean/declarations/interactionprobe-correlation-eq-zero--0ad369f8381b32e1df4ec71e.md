# interactionProbe_correlation_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47e2a1af-3290-be3c-1b2a-29aa2f2c2b02",
  "kind": "theorem",
  "lexical_name": "interactionProbe_correlation_eq_zero",
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
  "slug": "interactionprobe-correlation-eq-zero--0ad369f8381b32e1df4ec71e",
  "source": {
    "blob": "9c4a3b3ced22c7db678dce54ea200aeef2dd3556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 254,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad369f8381b32e1df4ec71e690b8976715d62599ec4761845cf2592eeccb419",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47e2a1af-3290-be3c-1b2a-29aa2f2c2b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interactionProbe_correlation_eq_zero (ε : ℝ) {n : ℕ} (hn : 3 ≤ n) :
    (⟪interactionProbe ε, translation (Real.log n) (interactionProbe ε)⟫_ℂ).re = 0 := by
  have hnR : (3 : ℝ) ≤ n := by exact_mod_cast hn
  have hn0 : (0 : ℝ) < n := by linarith
  have hl : Real.log (3 : ℝ) ≤ Real.log n :=
    Real.log_le_log (by norm_num) hnR
  have hdiv : Real.log (3 / 2 : ℝ) = Real.log 3 - Real.log 2 :=
    Real.log_div (by norm_num) (by norm_num)
  have hs := probeScale_gap
  have h2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  rw [interactionProbe_correlation]
  have hz (t : ℝ) (ht : 2 * probeScale ≤ t) :
      sourceCorrelation explicitSecondDerivative probeScale t = 0 :=
    sourceCorrelation_eq_zero_of_two_mul_le_abs probeScale t probeScale_pos
      (ht.trans (le_abs_self t))
  rw [hz (Real.log n) (by linarith),
    hz (Real.log n - Real.log 2) (by linarith),
    hz (Real.log n + Real.log 2) (by linarith)]
  ring

/-- At the first prime the entire nonzero coefficient is the signed mixed channel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileBudgetV2Source/Variant035772600c1389784b6a6546122fea3e1d6b00d7c8ba09c15c302e33cbca0dfb.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c4a3b3ced22c7db678dce54ea200aeef2dd3556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
