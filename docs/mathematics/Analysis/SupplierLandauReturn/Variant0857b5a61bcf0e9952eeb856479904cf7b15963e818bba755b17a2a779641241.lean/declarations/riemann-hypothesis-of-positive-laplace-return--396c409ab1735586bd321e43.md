# riemann_hypothesis_of_positive_laplace_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c546654-f657-845f-4a3d-903e3c22a5f9",
  "kind": "theorem",
  "lexical_name": "riemann_hypothesis_of_positive_laplace_return",
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
  "slug": "riemann-hypothesis-of-positive-laplace-return--396c409ab1735586bd321e43",
  "source": {
    "blob": "1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 238,
    "path": "GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:396c409ab1735586bd321e43d58cf9a602c5955dd9182e2ad61b491fb619594e",
  "verification": {
    "reference": "docs/verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c546654-f657-845f-4a3d-903e3c22a5f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemann_hypothesis_of_positive_laplace_return
    {Ω : Type*} [MeasurableSpace Ω] (μ : Measure Ω) (X : Ω → ℝ)
    (H : ℂ → ℂ)
    (hXm : AEMeasurable X μ) (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, 1 < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (hH : ∀ z : ℂ, 0 < z.re → AnalyticAt ℂ H z)
    (hinit : ∀ z : ℂ, 1 < z.re →
      correctedPickupTransform H z = transform X μ z) :
    _root_.RiemannHypothesis := by
  intro ρ hzero htrivial hone
  have hρ : NontrivialZetaZero ρ := ⟨hzero, htrivial, hone⟩
  have hr := no_right_zero_of_positive_laplace_return
    μ X H hXm hX hconv hH hinit hρ
  have hl := no_right_zero_of_positive_laplace_return
    μ X H hXm hX hconv hH hinit hρ.reflect
  simp only [zeroReflect, Complex.sub_re, Complex.one_re] at hl
  linarith

/-- Lebesgue measure on the original nonnegative time half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
