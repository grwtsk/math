# norm_rectangleIntegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c67fdfe8-3ded-3145-939c-10b2cb3fc5ed",
  "kind": "theorem",
  "lexical_name": "norm_rectangleIntegral_le",
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
  "slug": "norm-rectangleintegral-le--56a2b8cfaeab80152a05a0ec",
  "source": {
    "blob": "0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 221,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56a2b8cfaeab80152a05a0ec18ba677d99d6e59767d0fe5d5a23f6ba631e6974",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c67fdfe8-3ded-3145-939c-10b2cb3fc5ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_rectangleIntegral_le {f : ℂ → ℂ} {z w : ℂ} (hre : z.re ≤ w.re) (him : z.im ≤ w.im)
    {M : ℝ} (hf : ∀ p ∈ RectangleBorder z w, ‖f p‖ ≤ M) :
    ‖RectangleIntegral f z w‖ ≤ M * (2 * (w.re - z.re) + 2 * (w.im - z.im)) := by
  have hH : ∀ y : ℝ, (∀ x ∈ Set.uIcc z.re w.re, ((x : ℂ) + y * I) ∈ RectangleBorder z w) →
      ‖HIntegral f z.re w.re y‖ ≤ M * (w.re - z.re) := by
    intro y hy
    have := intervalIntegral.norm_integral_le_of_norm_le_const (a := z.re) (b := w.re) (C := M)
      (f := fun x : ℝ => f (x + y * I)) (fun x hx => hf _ (hy x (Set.uIoc_subset_uIcc hx)))
    rw [abs_of_nonneg (by linarith)] at this
    exact this
  have hV : ∀ x : ℝ, (∀ y ∈ Set.uIcc z.im w.im, ((x : ℂ) + y * I) ∈ RectangleBorder z w) →
      ‖VIntegral f x z.im w.im‖ ≤ M * (w.im - z.im) := by
    intro x hx
    have := intervalIntegral.norm_integral_le_of_norm_le_const (a := z.im) (b := w.im) (C := M)
      (f := fun y : ℝ => f (x + y * I)) (fun y hy => hf _ (hx y (Set.uIoc_subset_uIcc hy)))
    rw [abs_of_nonneg (by linarith)] at this
    rw [VIntegral, norm_smul, Complex.norm_I, one_mul]
    exact this
  have h1 := hH z.im (fun x hx => mapsTo_rectangleBorder_left_im z w hx)
  have h2 := hH w.im (fun x hx => mapsTo_rectangleBorder_right_im z w hx)
  have h3 := hV w.re (fun y hy => mapsTo_rectangleBorder_right_re z w hy)
  have h4 := hV z.re (fun y hy => mapsTo_rectangleBorder_left_re z w hy)
  unfold RectangleIntegral
  calc ‖HIntegral f z.re w.re z.im - HIntegral f z.re w.re w.im
        + VIntegral f w.re z.im w.im - VIntegral f z.re z.im w.im‖
      ≤ ‖HIntegral f z.re w.re z.im‖ + ‖HIntegral f z.re w.re w.im‖
        + ‖VIntegral f w.re z.im w.im‖ + ‖VIntegral f z.re z.im w.im‖ := by
        refine (norm_sub_le _ _).trans ?_
        refine add_le_add ((norm_add_le _ _).trans (add_le_add (norm_sub_le _ _) le_rfl)) le_rfl
    _ ≤ M * (2 * (w.re - z.re) + 2 * (w.im - z.im)) := by linarith

/-! ## §B. Facts about ξ: zeros, orders, symmetries of ξ′/ξ -/

/-- The zeros of ξ are exactly the nontrivial zeros of ζ (ξ(0) = ξ(1) = 1/2; off {0,1},
ξ = s(s−1)/2·Λ and the zeros of Λ are the nontrivial zeros of ζ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
