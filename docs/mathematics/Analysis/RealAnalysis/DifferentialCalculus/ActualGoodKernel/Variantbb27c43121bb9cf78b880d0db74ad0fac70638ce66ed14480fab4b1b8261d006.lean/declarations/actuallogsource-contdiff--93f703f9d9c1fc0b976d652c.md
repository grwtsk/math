# actualLogSource_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:788d29d6-22f2-86da-9957-3bfbb5f428d8",
  "kind": "theorem",
  "lexical_name": "actualLogSource_contDiff",
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
  "slug": "actuallogsource-contdiff--93f703f9d9c1fc0b976d652c",
  "source": {
    "blob": "6046b03ecc61afa5f11d3a77f8bfecc44ec5bb29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93f703f9d9c1fc0b976d652c79627fc72d97575c6779b43350d361c397c7ba18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:788d29d6-22f2-86da-9957-3bfbb5f428d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogSource_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualLogSource A) := by
  apply contDiff_iff_contDiffAt.mpr
  intro x
  by_cases hx : 0 < x
  · have hl : ContDiffAt ℝ 1 Real.log x := Real.contDiffAt_log.mpr hx.ne'
    have he : ContDiffAt ℝ 1 (fun y : ℝ => Real.exp (-Real.log y / 2)) x := by
      fun_prop
    have hf := (normalizedTest_contDiff A hA).contDiffAt.comp x hl
    apply (he.mul hf).congr_of_eventuallyEq
    filter_upwards [Ioi_mem_nhds hx] with y hy
    change 0 < y at hy
    simp only [actualLogSource,positiveLogLift,if_pos hy,Function.comp_apply]
  · have hx' : x < Real.exp (-A) := lt_of_le_of_lt (le_of_not_gt hx) (Real.exp_pos _)
    apply (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq
    filter_upwards [Iio_mem_nhds hx'] with y hy
    exact actualLogSource_zero_outside hA (Or.inl hy.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6046b03ecc61afa5f11d3a77f8bfecc44ec5bb29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
