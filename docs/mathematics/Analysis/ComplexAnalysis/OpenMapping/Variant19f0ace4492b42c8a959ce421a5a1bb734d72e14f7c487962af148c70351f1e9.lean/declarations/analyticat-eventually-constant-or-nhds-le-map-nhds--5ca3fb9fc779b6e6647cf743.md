# AnalyticAt.eventually_constant_or_nhds_le_map_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f41141f0-615f-fc19-f90a-8975d01a11bc",
  "kind": "theorem",
  "lexical_name": "AnalyticAt.eventually_constant_or_nhds_le_map_nhds",
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
  "slug": "analyticat-eventually-constant-or-nhds-le-map-nhds--5ca3fb9fc779b6e6647cf743",
  "source": {
    "blob": "9c4efc04a267b59907f27d26785712b34b465e43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 121,
    "path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ca3fb9fc779b6e6647cf74323732cd04683bc330067bf7534cf26cdfb23f537",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f41141f0-615f-fc19-f90a-8975d01a11bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticAt.eventually_constant_or_nhds_le_map_nhds {z₀ : E} (hg : AnalyticAt ℂ g z₀) :
    (∀ᶠ z in 𝓝 z₀, g z = g z₀) ∨ 𝓝 (g z₀) ≤ map g (𝓝 z₀) := by
  /- The idea of the proof is to use the one-dimensional version applied to the restriction of `g`
    to lines going through `z₀` (indexed by `sphere (0 : E) 1`). If the restriction is eventually
    constant along each of these lines, then the identity theorem implies that `g` is constant on
    any ball centered at `z₀` on which it is analytic, and in particular `g` is eventually constant.
    If on the other hand there is one line along which `g` is not eventually constant, then the
    one-dimensional version of the open mapping theorem can be used to conclude. -/
  let ray : E → ℂ → E := fun z t => z₀ + t • z
  let gray : E → ℂ → ℂ := fun z => g ∘ ray z
  obtain ⟨r, hr, hgr⟩ := isOpen_iff.mp (isOpen_analyticAt ℂ g) z₀ hg
  have h1 : ∀ z ∈ sphere (0 : E) 1, AnalyticOn ℂ (gray z) (ball 0 r) := by
    refine fun z hz t ht => AnalyticAt.comp ?_ ?_
    · exact hgr (by simpa [norm_smul, mem_sphere_zero_iff_norm.mp hz] using ht)
    · exact analyticAt_const.add
        ((ContinuousLinearMap.smulRight (ContinuousLinearMap.id ℂ ℂ) z).analyticAt t)
  by_cases ∀ z ∈ sphere (0 : E) 1, ∀ᶠ t in 𝓝 0, gray z t = gray z 0
  · left
    -- If g is eventually constant along every direction, then it is eventually constant
    refine eventually_of_mem (ball_mem_nhds z₀ hr) fun z hz => ?_
    refine (eq_or_ne z z₀).casesOn (congr_arg g) fun h' => ?_
    replace h' : ‖z - z₀‖ ≠ 0 := by simpa only [Ne.def, norm_eq_zero, sub_eq_zero]
    let w : E := ‖z - z₀‖⁻¹ • (z - z₀)
    have h3 : ∀ t ∈ ball (0 : ℂ) r, gray w t = g z₀ := by
      have e1 : IsPreconnected (ball (0 : ℂ) r) := (convex_ball 0 r).isPreconnected
      have e2 : w ∈ sphere (0 : E) 1 := by simp [norm_smul, inv_mul_cancel h']
      specialize h1 w e2
      apply h1.eqOn_of_preconnected_of_eventuallyEq analyticOn_const e1 (mem_ball_self hr)
      simpa using h w e2
    have h4 : ‖z - z₀‖ < r := by simpa [dist_eq_norm] using mem_ball.mp hz
    replace h4 : ↑‖z - z₀‖ ∈ ball (0 : ℂ) r := by
      simpa only [mem_ball_zero_iff, norm_eq_abs, abs_ofReal, abs_norm]
    simpa only [smul_smul, mul_inv_cancel h', one_smul, add_sub_cancel'_right,
      Function.comp_apply, coe_smul] using h3 (↑‖z - z₀‖) h4
  · right
    -- Otherwise, it is open along at least one direction and that implies the result
    push_neg at h
    obtain ⟨z, hz, hrz⟩ := h
    specialize h1 z hz 0 (mem_ball_self hr)
    have h7 := h1.eventually_constant_or_nhds_le_map_nhds_aux.resolve_left hrz
    rw [show gray z 0 = g z₀ by simp, ← map_compose] at h7
    refine h7.trans (map_mono ?_)
    have h10 : Continuous fun t : ℂ => z₀ + t • z :=
      continuous_const.add (continuous_id'.smul continuous_const)
    simpa using h10.tendsto 0
#align analytic_at.eventually_constant_or_nhds_le_map_nhds AnalyticAt.eventually_constant_or_nhds_le_map_nhds

/-- The *open mapping theorem* for holomorphic functions, global version: if a function `g : E → ℂ`
is analytic on a connected set `U`, then either it is constant on `U`, or it is open on `U` (in the
sense that it maps any open set contained in `U` to an open set in `ℂ`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant19f0ace4492b42c8a959ce421a5a1bb734d72e14f7c487962af148c70351f1e9.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c4efc04a267b59907f27d26785712b34b465e43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
