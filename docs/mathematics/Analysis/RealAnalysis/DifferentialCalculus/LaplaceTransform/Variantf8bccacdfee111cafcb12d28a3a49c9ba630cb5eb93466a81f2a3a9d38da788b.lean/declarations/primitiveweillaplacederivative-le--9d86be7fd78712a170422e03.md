# primitiveWeilLaplaceDerivative_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6d914b6-334a-8cab-7597-d742d6499b90",
  "kind": "theorem",
  "lexical_name": "primitiveWeilLaplaceDerivative_le",
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
  "slug": "primitiveweillaplacederivative-le--9d86be7fd78712a170422e03",
  "source": {
    "blob": "ab5aa734780717435e9ae40d09366b56e19e83a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d86be7fd78712a170422e03c1e009a327cf68179c564e8b82a18a27a13c18d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6d914b6-334a-8cab-7597-d742d6499b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primitiveWeilLaplaceDerivative_le
    (g : PrimitiveWeilTestFunction) (s₀ s : ℂ) (x : ℝ)
    (hs : s ∈ Metric.ball s₀ 1) :
    ‖primitiveWeilLaplaceDerivativeIntegrand g s x‖ ≤
      primitiveWeilLaplaceDerivativeBound g s₀ x := by
  unfold primitiveWeilLaplaceDerivativeIntegrand
    primitiveWeilLaplaceDerivativeBound
  simp only [norm_mul, norm_real, Real.norm_eq_abs, Complex.norm_exp]
  rw [mul_comm (Real.exp _) |x|, ← mul_assoc]
  gcongr
  calc
    (((s - (1 / 2 : ℂ)) * (x : ℂ))).re
        ≤ ‖(s - (1 / 2 : ℂ)) * (x : ℂ)‖ :=
      (le_abs_self _).trans (abs_re_le_norm _)
    _ = ‖s - (1 / 2 : ℂ)‖ * |x| := by
      rw [norm_mul, norm_real, Real.norm_eq_abs]
    _ ≤ (1 + ‖s₀ - (1 / 2 : ℂ)‖) * |x| := by
      apply mul_le_mul_of_nonneg_right _ (abs_nonneg x)
      calc
        ‖s - (1 / 2 : ℂ)‖
            ≤ ‖s - s₀‖ + ‖s₀ - (1 / 2 : ℂ)‖ := by
          rw [show s - (1 / 2 : ℂ) =
            (s - s₀) + (s₀ - (1 / 2 : ℂ)) by ring]
          exact norm_add_le _ _
        _ ≤ 1 + ‖s₀ - (1 / 2 : ℂ)‖ := by
          have hnorm : ‖s - s₀‖ ≤ 1 := by
            simpa only [dist_eq_norm] using (Metric.mem_ball.mp hs).le
          nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantf8bccacdfee111cafcb12d28a3a49c9ba630cb5eb93466a81f2a3a9d38da788b.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab5aa734780717435e9ae40d09366b56e19e83a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
