# reciprocalWeight_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fb01e83-4e8a-ee03-78e1-dd0f4abe8206",
  "kind": "theorem",
  "lexical_name": "reciprocalWeight_integral",
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
  "slug": "reciprocalweight-integral--301c97486abc66dd5f13ffd8",
  "source": {
    "blob": "827fdf910c3c846b3fbc4b686cfe1ac80a6473aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant720a300a548f3847a344860a07a97aafce71f3329a2f8af47eeebb9c5e33e89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:301c97486abc66dd5f13ffd85a5342951f874af47eac6b9d40894304ffeec7c6",
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

Occurrence: `result:5fb01e83-4e8a-ee03-78e1-dd0f4abe8206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalWeight_integral (a b : ℝ) (ha : 0 < a) (hab : a ≤ b) :
    (∫ x in Ioc a b, 1/(x*Real.sqrt x)) = 2*(1/Real.sqrt a-1/Real.sqrt b) := by
  have hc : ContinuousOn (fun x : ℝ ↦ 1/(x*Real.sqrt x)) (Ioi 0) := by
    apply continuousOn_const.div (continuousOn_id.mul Real.continuous_sqrt.continuousOn)
    intro x hx
    exact (mul_pos hx (Real.sqrt_pos.2 hx)).ne'
  have hi : IntegrableOn (fun x : ℝ ↦ 1/(x*Real.sqrt x)) (Icc a b) :=
    (hc.mono (fun x hx ↦ ha.trans_le hx.1)).integrableOn_Icc
  have hs := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx ↦ invSqrtPrimitive_hasDerivAt x (ha.trans_le ((uIcc_of_le hab) ▸ hx).1))
    ((intervalIntegrable_iff_integrableOn_Icc_of_le hab).2 hi)
  rw [intervalIntegral.integral_of_le hab] at hs
  exact hs.trans (by ring)

/-- Pure source variation bound supplied by a proved regularity witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant720a300a548f3847a344860a07a97aafce71f3329a2f8af47eeebb9c5e33e89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant720a300a548f3847a344860a07a97aafce71f3329a2f8af47eeebb9c5e33e89a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `827fdf910c3c846b3fbc4b686cfe1ac80a6473aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
