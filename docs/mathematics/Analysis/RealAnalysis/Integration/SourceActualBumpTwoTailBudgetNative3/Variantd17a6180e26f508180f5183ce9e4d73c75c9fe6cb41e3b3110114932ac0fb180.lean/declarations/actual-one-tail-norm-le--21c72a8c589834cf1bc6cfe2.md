# actual_one_tail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:897d2462-09e0-a9f1-3ae3-3a1a0ae9c07d",
  "kind": "theorem",
  "lexical_name": "actual_one_tail_norm_le",
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
  "slug": "actual-one-tail-norm-le--21c72a8c589834cf1bc6cfe2",
  "source": {
    "blob": "d22df24fcdf2a2a8b5b8ea165087104ce04bd3b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21c72a8c589834cf1bc6cfe2604bf59ec42c328fcad1772fdf4ef43e334895e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:897d2462-09e0-a9f1-3ae3-3a1a0ae9c07d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_one_tail_norm_le (A c T ε : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (hT : 1 ≤ T) (hε : |ε| = 1) :
    ‖∫ t in Ioi T, actualRightBumpDensity A c (ε * t)‖ ≤
      actualRightBumpTailNumerator A c / (5 * T ^ 5) := by
  have hi := actual_one_tail_integrable A c T ε hA hc hT hε
  have hM := sixth_power_tail_integrable T hT (actualRightBumpTailNumerator A c)
  calc
    _ ≤ ∫ t in Ioi T, ‖actualRightBumpDensity A c (ε * t)‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t in Ioi T, actualRightBumpTailNumerator A c / t ^ 6 := by
      apply integral_mono_ae hi.norm hM
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have hgt : T < t := ht
      have ht0 : 0 ≤ t := by linarith
      have ht1 : 1 ≤ |ε * t| := by
        rw [abs_mul, hε, one_mul, abs_of_nonneg ht0]
        linarith
      simpa only [abs_mul, hε, one_mul, abs_of_nonneg ht0] using
        actualRightBumpDensity_norm_le A c (ε * t) hA hc ht1
    _ = _ := sixth_power_tail_integral T hT _

/-- Genuine original positive and negative high-frequency tails, with both signs preserved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative3/Variantd17a6180e26f508180f5183ce9e4d73c75c9fe6cb41e3b3110114932ac0fb180.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d22df24fcdf2a2a8b5b8ea165087104ce04bd3b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
