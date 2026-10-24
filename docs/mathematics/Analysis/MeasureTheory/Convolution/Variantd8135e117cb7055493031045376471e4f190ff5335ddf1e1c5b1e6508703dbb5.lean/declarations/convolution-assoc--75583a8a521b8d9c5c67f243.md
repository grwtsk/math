# convolution_assoc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:958df9d3-45a7-6eb4-59c1-fcdcecc00da8",
  "kind": "theorem",
  "lexical_name": "convolution_assoc'",
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
  "slug": "convolution-assoc--75583a8a521b8d9c5c67f243",
  "source": {
    "blob": "dd729b59c23cddae6f4aaed8c407fbf13c4fb9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 934,
    "line": 909,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75583a8a521b8d9c5c67f2438c66aa970c68c351bb718c98a75d9068ed6d5ae6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:958df9d3-45a7-6eb4-59c1-fcdcecc00da8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 909–934.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolution_assoc' (hL : ∀ (x : E) (y : E') (z : E''), L₂ (L x y) z = L₃ x (L₄ y z))
    {x₀ : G} (hfg : ∀ᵐ y ∂μ, ConvolutionExistsAt f g y L ν)
    (hgk : ∀ᵐ x ∂ν, ConvolutionExistsAt g k x L₄ μ)
    (hi : Integrable (uncurry fun x y => (L₃ (f y)) ((L₄ (g (x - y))) (k (x₀ - x)))) (μ.prod ν)) :
    ((f ⋆[L, ν] g) ⋆[L₂, μ] k) x₀ = (f ⋆[L₃, ν] g ⋆[L₄, μ] k) x₀ :=
  calc
    ((f ⋆[L, ν] g) ⋆[L₂, μ] k) x₀ = ∫ t, L₂ (∫ s, L (f s) (g (t - s)) ∂ν) (k (x₀ - t)) ∂μ := rfl
    _ = ∫ t, ∫ s, L₂ (L (f s) (g (t - s))) (k (x₀ - t)) ∂ν ∂μ :=
      (integral_congr_ae (hfg.mono fun t ht => ((L₂.flip (k (x₀ - t))).integral_comp_comm ht).symm))
    _ = ∫ t, ∫ s, L₃ (f s) (L₄ (g (t - s)) (k (x₀ - t))) ∂ν ∂μ := by simp_rw [hL]
    _ = ∫ s, ∫ t, L₃ (f s) (L₄ (g (t - s)) (k (x₀ - t))) ∂μ ∂ν := by rw [integral_integral_swap hi]
    _ = ∫ s, ∫ u, L₃ (f s) (L₄ (g u) (k (x₀ - s - u))) ∂μ ∂ν := by
      congr; ext t
      rw [eq_comm, ← integral_sub_right_eq_self _ t]
      simp_rw [sub_sub_sub_cancel_right]
    _ = ∫ s, L₃ (f s) (∫ u, L₄ (g u) (k (x₀ - s - u)) ∂μ) ∂ν := by
      refine integral_congr_ae ?_
      refine ((quasiMeasurePreserving_sub_left_of_right_invariant ν x₀).ae hgk).mono fun t ht => ?_
      exact (L₃ (f t)).integral_comp_comm ht
    _ = (f ⋆[L₃, ν] g ⋆[L₄, μ] k) x₀ := rfl

/-- Convolution is associative. This requires that
* all maps are a.e. strongly measurable w.r.t. one of the measures
* `f ⋆[L, ν] g` exists almost everywhere
* `‖g‖ ⋆[μ] ‖k‖` exists almost everywhere
* `‖f‖ ⋆[ν] (‖g‖ ⋆[μ] ‖k‖)` exists at `x₀` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean#L909).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd729b59c23cddae6f4aaed8c407fbf13c4fb9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
