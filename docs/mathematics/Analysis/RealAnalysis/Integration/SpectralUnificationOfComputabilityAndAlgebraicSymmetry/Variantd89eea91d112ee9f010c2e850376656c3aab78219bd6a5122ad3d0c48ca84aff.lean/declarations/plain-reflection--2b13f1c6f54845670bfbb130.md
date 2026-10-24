# plain_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d5b8ce4-74f4-bafb-24cc-3befc7494ff4",
  "kind": "theorem",
  "lexical_name": "plain_reflection",
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
  "slug": "plain-reflection--2b13f1c6f54845670bfbb130",
  "source": {
    "blob": "036f32b561ee1b123ecf027cc5dd681753c54012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 335,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b13f1c6f54845670bfbb13039185399e847c6f9efbe387ade0ac36d27746bfa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d5b8ce4-74f4-bafb-24cc-3befc7494ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem plain_reflection {F : ℝ → ℝ} (hMom : TwoMomentProfile F) (s : ℝ) :
    (∫ r in Ioi (0 : ℝ), Real.exp (r / 2) * F (s + r)) =
      -(∫ r in Ioi (0 : ℝ), Real.exp (-r / 2) * F (s - r)) := by
  have hsupp : HasCompactSupport (fun r : ℝ ↦ F (s + r)) :=
    hMom.2.1.comp_homeomorph (Homeomorph.addLeft s)
  have hc := hMom.1
  have hi : Integrable (fun r : ℝ ↦ Real.exp (r/2) * F (s+r)) :=
    (show Continuous (fun r : ℝ ↦ Real.exp (r/2) * F (s+r)) by
      fun_prop).integrable_of_hasCompactSupport
      hsupp.mul_left
  have he : (fun r : ℝ ↦ Real.exp (r/2) * F (s+r)) =
      (fun r : ℝ ↦ Real.exp (-s/2) * (Real.exp ((r+s)/2) * F (r+s))) := by
    funext r
    rw [← mul_assoc, ← Real.exp_add]
    congr 2 <;> ring
  have hz : (∫ r : ℝ, Real.exp (r/2) * F (s+r)) = 0 := by
    rw [he, integral_const_mul,
      integral_add_right_eq_self (fun t ↦ Real.exp (t/2) * F t) s, hMom.2.2.1, mul_zero]
  have hn := integral_comp_neg_Iic (0 : ℝ)
    (fun r : ℝ ↦ Real.exp (-r/2) * F (s-r))
  simp only [neg_zero, neg_neg, sub_neg_eq_add] at hn
  have hsplit := intervalIntegral.integral_Iic_add_Ioi
    (b := (0 : ℝ)) hi.integrableOn hi.integrableOn
  rw [hz, hn] at hsplit
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036f32b561ee1b123ecf027cc5dd681753c54012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
