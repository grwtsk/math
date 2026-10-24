# moving_density_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8447613e-addc-616a-37d8-fd03099f27ca",
  "kind": "theorem",
  "lexical_name": "moving_density_intervalIntegrable",
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
  "slug": "moving-density-intervalintegrable--d692af6a77fc679ceded74e2",
  "source": {
    "blob": "06a53c52c600a3544fcd86a1279e8bfea18c2485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant756002140d460b5ed0a4ce1c4ff0a8e3c4ea0753d45a67eb4312500f0e38562f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d692af6a77fc679ceded74e29b0b6e75a8a24a745f7bdbbed10d061b5d0106f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant756002140d460b5ed0a4ce1c4ff0a8e3c4ea0753d45a67eb4312500f0e38562f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8447613e-addc-616a-37d8-fd03099f27ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem moving_density_intervalIntegrable {A l b : ℝ} (hA : 91 ≤ A)
    (hl : Real.log 7 ≤ l) (hlb : l ≤ b) (hb : b ≤ 2 * A) :
    IntervalIntegrable (fun t => actualClosedMangoldtIncrement t (2 * A) *
      (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))) volume l b := by
  have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
  have hfull := actualMovingCriticalIncrement_intervalIntegrable (by linarith : 1 ≤ A)
  have hi := hfull.mono_set (by
    rw [uIcc_of_le (by linarith : Real.log (7 : ℝ) ≤ 2 * A), uIcc_of_le hlb]
    exact Icc_subset_Icc hl hb)
  apply hi.congr
  intro t _
  dsimp only
  ring

/-- Full original covariance equals the complete pre-edge source plus drift and jumps minus head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant756002140d460b5ed0a4ce1c4ff0a8e3c4ea0753d45a67eb4312500f0e38562f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant756002140d460b5ed0a4ce1c4ff0a8e3c4ea0753d45a67eb4312500f0e38562f.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a53c52c600a3544fcd86a1279e8bfea18c2485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
