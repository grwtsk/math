# actualXiLaplace_integral_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc901e9d-2b6b-aa78-c843-e2953480ba92",
  "kind": "theorem",
  "lexical_name": "actualXiLaplace_integral_norm_eq",
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
  "slug": "actualxilaplace-integral-norm-eq--27b95317ccd8a309432755b4",
  "source": {
    "blob": "0bc5e533f5a1ff977155d7bd719a850701ff14cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 224,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd020eff6c16d63628ddc016131a2bd34aa90c0d0870722529acd448ff7ee6a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27b95317ccd8a309432755b4b13791683c608405f5faa473a3a349d85bdfa34e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd020eff6c16d63628ddc016131a2bd34aa90c0d0870722529acd448ff7ee6a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc901e9d-2b6b-aa78-c843-e2953480ba92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLaplace_integral_norm_eq {M T₀ σ : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    (∫ t in Ioi (Real.log 7), ‖actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)‖) =
      σ * ∫ t in Ioi (Real.log 7), actualXiAbsoluteCumulative t * Real.exp (-σ * t) := by
  exact tendsto_nhds_unique
    (intervalIntegral_tendsto_integral_Ioi (Real.log 7)
      (actualXiLaplace_integrableOn_of_future_average hM hT₀ hσ haverage).norm tendsto_id)
    (absolute_laplace_finite_tendsto hM hT₀ hσ haverage)

/-- The actual conditional absolute Laplace norm has an explicit finite-prefix payment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd020eff6c16d63628ddc016131a2bd34aa90c0d0870722529acd448ff7ee6a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd020eff6c16d63628ddc016131a2bd34aa90c0d0870722529acd448ff7ee6a4d.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bc5e533f5a1ff977155d7bd719a850701ff14cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
