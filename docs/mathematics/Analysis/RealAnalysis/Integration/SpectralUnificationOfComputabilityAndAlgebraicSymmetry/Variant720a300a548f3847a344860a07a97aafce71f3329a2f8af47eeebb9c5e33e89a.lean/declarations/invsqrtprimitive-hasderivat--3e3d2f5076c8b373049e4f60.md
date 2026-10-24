# invSqrtPrimitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:641690e6-2922-216d-5609-fd2e96e5e9e5",
  "kind": "theorem",
  "lexical_name": "invSqrtPrimitive_hasDerivAt",
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
  "slug": "invsqrtprimitive-hasderivat--3e3d2f5076c8b373049e4f60",
  "source": {
    "blob": "827fdf910c3c846b3fbc4b686cfe1ac80a6473aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant720a300a548f3847a344860a07a97aafce71f3329a2f8af47eeebb9c5e33e89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e3d2f5076c8b373049e4f605919f68614a731e1e59e8d93f900867e15bea670",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant720a300a548f3847a344860a07a97aafce71f3329a2f8af47eeebb9c5e33e89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:641690e6-2922-216d-5609-fd2e96e5e9e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invSqrtPrimitive_hasDerivAt (x : ℝ) (hx : 0 < x) :
    HasDerivAt (fun y : ℝ ↦ -2/Real.sqrt y) (1/(x*Real.sqrt x)) x := by
  have h := ((Real.hasDerivAt_sqrt hx.ne').inv (Real.sqrt_ne_zero'.mpr hx)).const_mul (-2)
  have he : (-2 : ℝ) * (-(1/(2*Real.sqrt x))/(Real.sqrt x)^2) =
      1/(x*Real.sqrt x) := by
    field_simp [Real.sqrt_ne_zero'.mpr hx, hx.ne']
    nlinarith [Real.sq_sqrt hx.le]
  rw [he] at h
  apply h.congr_of_eventuallyEq
  filter_upwards [] with y
  change -2/Real.sqrt y = -2*(Real.sqrt y)⁻¹
  ring

/-- Exact finite reciprocal-weight integral; both positive endpoints are retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant720a300a548f3847a344860a07a97aafce71f3329a2f8af47eeebb9c5e33e89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant720a300a548f3847a344860a07a97aafce71f3329a2f8af47eeebb9c5e33e89a.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `827fdf910c3c846b3fbc4b686cfe1ac80a6473aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
