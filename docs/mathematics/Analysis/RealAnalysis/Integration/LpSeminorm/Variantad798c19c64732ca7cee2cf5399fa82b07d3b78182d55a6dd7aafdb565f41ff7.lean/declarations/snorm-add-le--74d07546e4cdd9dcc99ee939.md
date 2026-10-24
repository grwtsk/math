# snorm'_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59925fec-2db5-05eb-58ed-0af4113225aa",
  "kind": "theorem",
  "lexical_name": "snorm'_add_le",
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
  "slug": "snorm-add-le--74d07546e4cdd9dcc99ee939",
  "source": {
    "blob": "a628aac6b054467a684f1afb2f7cb9d4406c69d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 780,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74d07546e4cdd9dcc99ee939949bde707c71ab974b32e3033d883be81aa79df1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59925fec-2db5-05eb-58ed-0af4113225aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 780–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snorm'_add_le {f g : α → E} (hf : AEStronglyMeasurable f μ) (hg : AEStronglyMeasurable g μ)
    (hq1 : 1 ≤ q) : snorm' (f + g) q μ ≤ snorm' f q μ + snorm' g q μ :=
  calc
    (∫⁻ a, (‖(f + g) a‖₊ : ℝ≥0∞) ^ q ∂μ) ^ (1 / q) ≤
        (∫⁻ a, ((fun a => (‖f a‖₊ : ℝ≥0∞)) + fun a => (‖g a‖₊ : ℝ≥0∞)) a ^ q ∂μ) ^ (1 / q) := by
      refine' ENNReal.rpow_le_rpow _ (by simp [le_trans zero_le_one hq1] : 0 ≤ 1 / q)
      refine' lintegral_mono fun a => ENNReal.rpow_le_rpow _ (le_trans zero_le_one hq1)
      simp only [Pi.add_apply, ← ENNReal.coe_add, ENNReal.coe_le_coe, nnnorm_add_le]
    _ ≤ snorm' f q μ + snorm' g q μ := ENNReal.lintegral_Lp_add_le hf.ennnorm hg.ennnorm hq1
#align measure_theory.snorm'_add_le MeasureTheory.snorm'_add_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantad798c19c64732ca7cee2cf5399fa82b07d3b78182d55a6dd7aafdb565f41ff7.lean#L780).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a628aac6b054467a684f1afb2f7cb9d4406c69d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
