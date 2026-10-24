# filtered_core_main_norm_difference_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6b03adbcc0735f3e16aa7822db8a806846fce06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:faee97a9-95cc-3d41-f200-0e6de0404054",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac1255e8-ddf9-a0d0-2cde-3fa39c4b3a71",
  "kind": "theorem",
  "lexical_name": "filtered_core_main_norm_difference_le",
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
  "slug": "filtered-core-main-norm-difference-le--ccd36cde40d39bed36ca928b",
  "source": {
    "blob": "f6b03adbcc0735f3e16aa7822db8a806846fce06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 203,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccd36cde40d39bed36ca928bd05fc8bf7f51be6e55e3813fb51eb2c81af9f774",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac1255e8-ddf9-a0d0-2cde-3fa39c4b3a71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filtered_core_main_norm_difference_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    |‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ -
      ‖sourceMultiplier ε h hε hsmall hh (divisorMainVector X ε hX hε.le Y hY)‖| ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) := by
  let M : FullH →L[ℂ] FullH := sourceMultiplier ε h hε hsmall hh
  have he : M (coreResidualVector X ε hX Y) -
      M (divisorMainVector X ε hX hε.le Y hY) =
        -M (divisorRemainderVector ε hε.le Y hY) := by
    rw [mainVector_eq_add X ε hX hε.le Y hY, map_add]
    abel
  exact (abs_norm_sub_norm_le _ _).trans (by
    rw [he, norm_neg]
    exact sourceMultiplier_divisorRemainder_norm_le ε h hε hsmall hh Y hY)

end
end DivisorMainComparisonScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @DivisorMainComparisonScratch.divisorMainResidual
#print DivisorMainComparisonScratch.divisorMainResidual
#print axioms DivisorMainComparisonScratch.divisorMainResidual
#check @DivisorMainComparisonScratch.arithmeticResidual_eq_main_sub_remainder
#print DivisorMainComparisonScratch.arithmeticResidual_eq_main_sub_remainder
#print axioms DivisorMainComparisonScratch.arithmeticResidual_eq_main_sub_remainder
#check @DivisorMainComparisonScratch.divisorMainCore
#print DivisorMainComparisonScratch.divisorMainCore
#print axioms DivisorMainComparisonScratch.divisorMainCore
#check @DivisorMainComparisonScratch.divisorMainCore_memLp
#print DivisorMainComparisonScratch.divisorMainCore_memLp
#print axioms DivisorMainComparisonScratch.divisorMainCore_memLp
#check @DivisorMainComparisonScratch.divisorMainVector
#print DivisorMainComparisonScratch.divisorMainVector
#print axioms DivisorMainComparisonScratch.divisorMainVector
#check @DivisorMainComparisonScratch.filtered_core_main_norm_difference_le
#print DivisorMainComparisonScratch.filtered_core_main_norm_difference_le
#print axioms DivisorMainComparisonScratch.filtered_core_main_norm_difference_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant2035621161fdf21e4442711de1f981023e0443e56ff15bc3538555d88adfc45b.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6b03adbcc0735f3e16aa7822db8a806846fce06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
