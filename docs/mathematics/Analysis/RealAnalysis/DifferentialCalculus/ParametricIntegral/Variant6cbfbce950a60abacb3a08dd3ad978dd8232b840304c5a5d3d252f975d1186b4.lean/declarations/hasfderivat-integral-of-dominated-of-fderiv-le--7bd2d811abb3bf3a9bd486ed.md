# hasFDerivAt_integral_of_dominated_of_fderiv_le''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76c88f8b-13ca-1fc6-c3b6-ffda1f2ca8cc",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_integral_of_dominated_of_fderiv_le''",
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
  "slug": "hasfderivat-integral-of-dominated-of-fderiv-le--7bd2d811abb3bf3a9bd486ed",
  "source": {
    "blob": "4761ad4e52534891fc6a2652394d8c869de732dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 239,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bd2d811abb3bf3a9bd486edd12d4fe28894e8db19721ca8c60bae0b29e88482",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76c88f8b-13ca-1fc6-c3b6-ffda1f2ca8cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_integral_of_dominated_of_fderiv_le'' [NormedSpace ℝ H] {μ : Measure ℝ}
    {F : H → ℝ → E} {F' : H → ℝ → H →L[ℝ] E} {a b : ℝ} {bound : ℝ → ℝ} (ε_pos : 0 < ε)
    (hF_meas : ∀ᶠ x in 𝓝 x₀, AEStronglyMeasurable (F x) <| μ.restrict (Ι a b))
    (hF_int : IntervalIntegrable (F x₀) μ a b)
    (hF'_meas : AEStronglyMeasurable (F' x₀) <| μ.restrict (Ι a b))
    (h_bound : ∀ᵐ t ∂μ.restrict (Ι a b), ∀ x ∈ ball x₀ ε, ‖F' x t‖ ≤ bound t)
    (bound_integrable : IntervalIntegrable bound μ a b)
    (h_diff : ∀ᵐ t ∂μ.restrict (Ι a b), ∀ x ∈ ball x₀ ε, HasFDerivAt (F · t) (F' x t) x) :
    HasFDerivAt (fun x ↦ ∫ t in a..b, F x t ∂μ) (∫ t in a..b, F' x₀ t ∂μ) x₀ := by
  rw [ae_restrict_uIoc_iff] at h_diff h_bound
  simp_rw [AEStronglyMeasurable.aestronglyMeasurable_uIoc_iff, eventually_and] at hF_meas hF'_meas
  exact
    (hasFDerivAt_integral_of_dominated_of_fderiv_le ε_pos hF_meas.1 hF_int.1 hF'_meas.1 h_bound.1
          bound_integrable.1 h_diff.1).sub
      (hasFDerivAt_integral_of_dominated_of_fderiv_le ε_pos hF_meas.2 hF_int.2 hF'_meas.2 h_bound.2
        bound_integrable.2 h_diff.2)

section

variable {F : 𝕜 → α → E} {x₀ : 𝕜}

/-- Derivative under integral of `x ↦ ∫ F x a` at a given point `x₀ : 𝕜`, `𝕜 = ℝ` or `𝕜 = ℂ`,
assuming `F x₀` is integrable, `x ↦ F x a` is locally Lipschitz on a ball around `x₀` for ae `a`
(with ball radius independent of `a`) with integrable Lipschitz bound, and `F x` is
ae-measurable for `x` in a possibly smaller neighborhood of `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4761ad4e52534891fc6a2652394d8c869de732dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
