# ray_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e3c288d-967e-8065-c95f-22bb78863e11",
  "kind": "theorem",
  "lexical_name": "ray_majorant",
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
  "slug": "ray-majorant--8948c01d8bb863c20a4bbdd6",
  "source": {
    "blob": "cfcfe85f5aaefb3d5d0230300a5fd128b7a7480d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8948c01d8bb863c20a4bbdd6f3b598dc54c17cfb3b89ce441d39c09e02be731e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e3c288d-967e-8065-c95f-22bb78863e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem ray_majorant (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T)
    (ε : ℝ) (hε : |ε| = 1) :
    ∀ᵐ t : ℝ ∂volume.restrict (Ioi T),
      ‖angularIntegrand A (ε * t)‖ ≤ heightCoefficient A * t ^ (-6 : ℝ) := by
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  change T < t at ht
  have htp : 0 < t := by linarith
  have hεt : |ε * t| = t := by rw [abs_mul, hε, abs_of_pos htp, one_mul]
  have hb := angularIntegrand_norm_le A hA (ε * t) (by rw [hεt]; linarith)
  rw [hεt] at hb
  convert hb using 1
  rw [Real.rpow_neg htp.le, show (6 : ℝ) = (6 : ℕ) by norm_num,
    Real.rpow_natCast]
  ring

/-- Both physical rays of the actual source integrand are genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfcfe85f5aaefb3d5d0230300a5fd128b7a7480d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
