# GevreyProfile.abs_iteratedDeriv_le_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b25425c-acd1-a283-b513-8ec3830e9900",
  "kind": "lemma",
  "lexical_name": "GevreyProfile.abs_iteratedDeriv_le_indicator",
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
  "slug": "gevreyprofile-abs-iteratedderiv-le-indicator--559baba5b1de835b1fbdd53e",
  "source": {
    "blob": "52b7f6d2bfef7d2c4c681ff0d256003749e77ca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:559baba5b1de835b1fbdd53e0b69e4ceeb4b34ff919f0e20cc6abf84bb48bb78",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b25425c-acd1-a283-b513-8ec3830e9900`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GevreyProfile.abs_iteratedDeriv_le_indicator (hϱ : GevreyProfile s A B ϱ) {k : ℕ}
    (hk : 1 ≤ k) (x : ℝ) :
    |iteratedDeriv k ϱ x| ≤ (Set.Ioo (0:ℝ) 1).indicator (fun _ => B * A ^ k * (k : ℝ) ^ (s * k)) x := by
  by_cases hx : x ∈ Set.Ioo (0:ℝ) 1
  · rw [Set.indicator_of_mem hx]; exact hϱ.bound k hk x
  · rw [Set.indicator_of_notMem hx, hϱ.iteratedDeriv_eq_zero hk hx, abs_zero]

/-- `iteratedDeriv` commutes with the coercion ℝ → ℂ for smooth functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Varianta2ecb95e2c24457cd2f4a06c64f29ddcaaf0127d5a9b92dd90bcb860899ba0a7.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52b7f6d2bfef7d2c4c681ff0d256003749e77ca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
