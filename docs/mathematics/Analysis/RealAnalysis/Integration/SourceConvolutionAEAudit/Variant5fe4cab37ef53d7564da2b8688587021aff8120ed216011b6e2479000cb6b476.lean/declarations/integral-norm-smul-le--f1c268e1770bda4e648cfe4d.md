# integral_norm_smul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c56567ac-9932-3be5-c81f-343a5a85b591",
  "kind": "theorem",
  "lexical_name": "integral_norm_smul_le",
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
  "slug": "integral-norm-smul-le--f1c268e1770bda4e648cfe4d",
  "source": {
    "blob": "0fc6a7f6d151be2063ef640de560e9f954ccc242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 322,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1c268e1770bda4e648cfe4dfda057d0653e7371a7f12388fed8f0d10d092370",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c56567ac-9932-3be5-c81f-343a5a85b591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_norm_smul_le (u : ℝ → ℝ) (v : ℝ → ℂ)
    (hu : MemLp u 2 volume) (hv : MemLp v 2 volume) :
    (∫ a, ‖u a • v a‖) ≤ (eLpNorm u 2 volume).toReal * (eLpNorm v 2 volume).toReal := by
  have hmem : MemLp (u • v) 1 volume := hv.smul hu
  have hle : eLpNorm (u • v) 1 volume ≤ eLpNorm u 2 volume * eLpNorm v 2 volume :=
    eLpNorm_smul_le_mul_eLpNorm hv.aestronglyMeasurable hu.aestronglyMeasurable
  have ht := ENNReal.toReal_mono (ENNReal.mul_ne_top hu.2.ne hv.2.ne) hle
  rw [ENNReal.toReal_mul] at ht
  calc
    _ = ‖hmem.toLp (u • v)‖ := by
      rw [L1.norm_eq_integral_norm]
      exact integral_congr_ae (hmem.coeFn_toLp.fun_comp norm).symm
    _ = _ := Lp.norm_toLp _ hmem
    _ ≤ _ := ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fc6a7f6d151be2063ef640de560e9f954ccc242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
