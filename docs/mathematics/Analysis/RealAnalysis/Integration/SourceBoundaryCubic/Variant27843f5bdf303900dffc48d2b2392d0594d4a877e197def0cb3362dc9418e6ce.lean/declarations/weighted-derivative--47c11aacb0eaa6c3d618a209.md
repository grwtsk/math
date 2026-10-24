# weighted_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:409a308d-c8d2-99d5-09e3-6cdc99a4000a",
  "kind": "theorem",
  "lexical_name": "weighted_derivative",
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
  "slug": "weighted-derivative--47c11aacb0eaa6c3d618a209",
  "source": {
    "blob": "d040c6cb101c1a266e29996d739a3fed2242fc9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryCubic/Variant27843f5bdf303900dffc48d2b2392d0594d4a877e197def0cb3362dc9418e6ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47c11aacb0eaa6c3d618a209a107d0b84da3d890c9baa3264b9268cd54eba366",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBoundaryCubic/Variant27843f5bdf303900dffc48d2b2392d0594d4a877e197def0cb3362dc9418e6ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:409a308d-c8d2-99d5-09e3-6cdc99a4000a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_derivative (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (σ : ℝ) :
    (∫ x : ℝ, Real.exp (σ*x)*deriv f x) =
      -σ*(∫ x : ℝ, Real.exp (σ*x)*f x) := by
  have hi0 := ((show Continuous (fun x : ℝ => Real.exp (σ*x)) by fun_prop).mul
    hf.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hi1 := ((show Continuous (fun x : ℝ => Real.exp (σ*x)) by fun_prop).mul
    hf.continuous_deriv_one).integrable_of_hasCompactSupport (μ := volume) hs.deriv.mul_left
  have him : Integrable (fun x : ℝ => (σ*Real.exp (σ*x))*f x) := by
    simpa only [Pi.mul_apply,mul_assoc] using hi0.const_mul σ
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x : ℝ => Real.exp (σ*x)) (u' := fun x => σ*Real.exp (σ*x))
    (v := f) (v' := deriv f)
    (fun x _ => by simpa only [id_eq,mul_one,mul_comm] using
      ((hasDerivAt_id x).const_mul σ).exp)
    (fun x _ => (hf.differentiable (by norm_num) x).hasDerivAt) hi1 him hi0
  simp only [mul_assoc] at h
  rw [integral_const_mul] at h
  simpa only [neg_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBoundaryCubic/Variant27843f5bdf303900dffc48d2b2392d0594d4a877e197def0cb3362dc9418e6ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryCubic/Variant27843f5bdf303900dffc48d2b2392d0594d4a877e197def0cb3362dc9418e6ce.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d040c6cb101c1a266e29996d739a3fed2242fc9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
