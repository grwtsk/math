# criticalMangoldtWork_eq_head_add_remaining

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10684156-d4df-3e59-8077-a7523a896c5b",
  "kind": "theorem",
  "lexical_name": "criticalMangoldtWork_eq_head_add_remaining",
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
  "slug": "criticalmangoldtwork-eq-head-add-remaining--1844d7465ac6a5a4b8c8a5ab",
  "source": {
    "blob": "6c839ae457d5288d0f1a9ef7d2f0138d4d21a85d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9e4f64be5bc94a5592bbSourceFirstAtomSignedWork/Variant8b2017fca6b9145630e1c871b713352948267d8076708a3c4de2ab77710537e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1844d7465ac6a5a4b8c8a5ab930a3e35bcafa930b797359ad23b78e78b0413f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9e4f64be5bc94a5592bbSourceFirstAtomSignedWork/Variant8b2017fca6b9145630e1c871b713352948267d8076708a3c4de2ab77710537e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10684156-d4df-3e59-8077-a7523a896c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalMangoldtWork_eq_head_add_remaining (A : ℝ) (hA : 1 ≤ A) :
    criticalMangoldtWork A = firstAtomHeadWork A + remainingAtomWork A := by
  have hp : 0 < A := by linarith
  have hb : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hi0 := mangoldtLogError_mul_deriv_intervalIntegrable 0 (Real.log 2) hb
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)
  have hi1 := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A)
    (by linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)])
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)
  exact (intervalIntegral.integral_add_adjacent_intervals hi0 hi1).symm

/-- A future signed remaining-tail witness pays only the fixed head budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9e4f64be5bc94a5592bbSourceFirstAtomSignedWork/Variant8b2017fca6b9145630e1c871b713352948267d8076708a3c4de2ab77710537e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9e4f64be5bc94a5592bbSourceFirstAtomSignedWork/Variant8b2017fca6b9145630e1c871b713352948267d8076708a3c4de2ab77710537e1.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c839ae457d5288d0f1a9ef7d2f0138d4d21a85d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
