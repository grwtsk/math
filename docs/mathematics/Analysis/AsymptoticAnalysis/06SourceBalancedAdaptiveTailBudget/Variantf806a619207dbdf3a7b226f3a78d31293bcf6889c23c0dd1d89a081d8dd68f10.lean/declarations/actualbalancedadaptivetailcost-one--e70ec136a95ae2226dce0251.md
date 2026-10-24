# actualBalancedAdaptiveTailCost_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4dbbb41-ccd5-7450-70a9-6443f72332a7",
  "kind": "theorem",
  "lexical_name": "actualBalancedAdaptiveTailCost_one",
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
  "slug": "actualbalancedadaptivetailcost-one--e70ec136a95ae2226dce0251",
  "source": {
    "blob": "9da33cae2705a2936ae263728b2c6411ffe8c3bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 91,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e70ec136a95ae2226dce0251733f661ea0917daf653028ef54cbc57ac914d7b0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4dbbb41-ccd5-7450-70a9-6443f72332a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBalancedAdaptiveTailCost_one (A0 Q : ℝ) (hQ : 91 ≤ Q) :
    actualBalancedAdaptiveTailCost A0 1 Q = 1800000 * A0 := by
  have hlog4 : (5 / 4 : ℝ) ≤ Real.log 4 := by
    have he : Real.log (4 : ℝ) = 2 * Real.log 2 := by
      rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.log_pow]
      norm_num
    rw [he]
    linarith [Real.log_two_gt_d9]
  have hlogQ : (5 / 4 : ℝ) ≤ Real.log Q := hlog4.trans
    (Real.log_le_log (by norm_num : (0 : ℝ) < 4) (by linarith))
  have hn : Real.log (1 : ℝ) + 2 - (8 / 5 : ℝ) * Real.log Q ≤ 0 := by
    rw [Real.log_one]
    nlinarith
  rw [actualBalancedAdaptiveTailCost, max_eq_left hn]
  norm_num
  ring

/-- One constructed actual witness retains local/sixth contracts and the refined tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/06SourceBalancedAdaptiveTailBudget/Variantf806a619207dbdf3a7b226f3a78d31293bcf6889c23c0dd1d89a081d8dd68f10.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da33cae2705a2936ae263728b2c6411ffe8c3bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
