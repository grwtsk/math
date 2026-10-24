# actual_one_tail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66b7f6cb7ded7ef95b0bdbc1e8dfee2c45c20f2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7b5fe38b52b1148a37000423d87331083dc177c74bf2371fe68b933e239e0d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9bddd11-f4dc-bf42-e44d-00b02852d3f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85905ec4-6b94-d52c-dadb-1133a26b9fc1",
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
  "slug": "actual-one-tail-norm-le--56363edf93319b5194f4a878",
  "source": {
    "blob": "66b7f6cb7ded7ef95b0bdbc1e8dfee2c45c20f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudget/Variantd7b5fe38b52b1148a37000423d87331083dc177c74bf2371fe68b933e239e0d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56363edf93319b5194f4a87854a7d6a50d1afdf6b096df4841a2eaf297466702",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudget/Variantd7b5fe38b52b1148a37000423d87331083dc177c74bf2371fe68b933e239e0d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85905ec4-6b94-d52c-dadb-1133a26b9fc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–117.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudget/Variantd7b5fe38b52b1148a37000423d87331083dc177c74bf2371fe68b933e239e0d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudget/Variantd7b5fe38b52b1148a37000423d87331083dc177c74bf2371fe68b933e239e0d4.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b7f6cb7ded7ef95b0bdbc1e8dfee2c45c20f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
