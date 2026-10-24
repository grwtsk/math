# ordinate_kernel_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e05be5e-241a-11bf-37b0-610b08ee057a",
  "kind": "theorem",
  "lexical_name": "ordinate_kernel_integral",
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
  "slug": "ordinate-kernel-integral--b7cb4ac91555f3b43ffaadbf",
  "source": {
    "blob": "b2fc37a9dd523e0df3dc371663f898c0ab4bb7a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7cb4ac91555f3b43ffaadbf534a1dc3ff39f68d337b5611e0778d6fab7b779a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e05be5e-241a-11bf-37b0-610b08ee057a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordinate_kernel_integral {a : ℝ} (ha : 0 < a) :
    (∫ x : ℝ in Ioi a, ordinateKernel x) = 1/a^6 := by
  have he : (∫ x : ℝ in Ioi a, ordinateKernel x) =
      6 * ∫ x : ℝ in Ioi a, x^(-7 : ℝ) := by
    rw [← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro x hx
    change 6/x^7 = 6*x^(-7 : ℝ)
    rw [negative_seven_real_power (ha.trans hx)]
    ring
  rw [he, integral_Ioi_rpow_of_lt (by norm_num : (-7 : ℝ) < -1) ha]
  norm_num only
  rw [Real.rpow_neg ha.le]
  simp only [Real.rpow_ofNat]
  ring

/-- The lower limit is the maximum of the scale cutoff and actual ordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2fc37a9dd523e0df3dc371663f898c0ab4bb7a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
