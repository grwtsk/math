# rectangleIntegral'_mul_logDeriv_weightPoles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:801b0a4f-63e9-e487-5aec-074e21f14c48",
  "kind": "theorem",
  "lexical_name": "rectangleIntegral'_mul_logDeriv_weightPoles",
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
  "slug": "rectangleintegral-mul-logderiv-weightpoles--f7c618b8ea0e111c3426bdfb",
  "source": {
    "blob": "0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 137,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7c618b8ea0e111c3426bdfb4d69b483c7772234ccfc0f2558b141adbb73da7c",
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

Occurrence: `result:801b0a4f-63e9-e487-5aec-074e21f14c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleIntegral'_mul_logDeriv_weightPoles {f g : ℂ → ℂ} {z w : ℂ} (hre : z.re ≤ w.re)
    (him : z.im ≤ w.im) (Z Q : Finset ℂ) (hZQ : Disjoint Z Q)
    (hQint : ∀ q ∈ Q, Rectangle z w ∈ 𝓝 q)
    (hf : AnalyticOnNhd ℂ f (Rectangle z w))
    (hg : ∀ p ∈ Rectangle z w \ (Q : Set ℂ), AnalyticAt ℂ g p)
    (hborder : ∀ p ∈ RectangleBorder z w, f p ≠ 0)
    (hZ : ∀ p ∈ Rectangle z w, f p = 0 ↔ p ∈ Z) (hZsub : (Z : Set ℂ) ⊆ Rectangle z w)
    (r : ℂ → ℂ) (hnear : ∀ q ∈ Q, (g - fun s => r q / (s - q)) =O[𝓝[≠] q] (1 : ℂ → ℂ)) :
    RectangleIntegral' (fun s => g s * logDeriv f s) z w
      = ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) * g ρ + ∑ q ∈ Q, r q * logDeriv f q := by
  classical
  have hZnotQ : ∀ ρ ∈ Z, ρ ∉ Q := fun ρ hρ hρQ => Finset.disjoint_left.mp hZQ hρ hρQ
  have hQnotZ : ∀ q ∈ Q, q ∉ Z := fun q hq hqZ => Finset.disjoint_left.mp hZQ hqZ hq
  -- a border point where f ≠ 0, hence all orders in the (preconnected) rectangle are finite
  have hzB : z ∈ RectangleBorder z w := Or.inl (Or.inl (Or.inl ⟨left_mem_uIcc, rfl⟩))
  have hz0 : f z ≠ 0 := hborder z hzB
  have hzR : z ∈ Rectangle z w := rectangleBorder_subset_rectangle z w hzB
  -- (IsPreconnected via a Mathlib-elaborated Convex term: a locally elaborated type ascription
  -- Convex ℝ (Rectangle z w) picks an SMul ℝ ℂ instance for which ContinuousSMul is not found here.)
  have hpre : IsPreconnected (Rectangle z w) := by
    rw [rectangle_eq_convexHull]; exact (convex_convexHull ℝ _).isPreconnected
  have hordz : analyticOrderAt f z ≠ ⊤ := by
    rw [analyticOrderAt_eq_zero.mpr (Or.inr hz0)]
    exact ENat.zero_ne_top
  have hord : ∀ ρ ∈ Z, analyticOrderAt f ρ ≠ ⊤ := fun ρ hρ =>
    hf.analyticOrderAt_ne_top_of_isPreconnected hpre hzR (hZsub hρ) hordz
  -- zeros are interior points
  have hZint : ∀ ρ ∈ Z, Rectangle z w ∈ 𝓝 ρ := by
    intro ρ hρ
    have hρR : ρ ∈ Rectangle z w := hZsub hρ
    have hρB : ρ ∉ RectangleBorder z w := fun h => hborder ρ h ((hZ ρ hρR).mpr hρ)
    obtain ⟨h1, h2⟩ := hρR
    have h1' : z.re ≤ ρ.re ∧ ρ.re ≤ w.re := by simpa [uIcc_of_le hre] using h1
    have h2' : z.im ≤ ρ.im ∧ ρ.im ≤ w.im := by simpa [uIcc_of_le him] using h2
    simp only [RectangleBorder, mem_union, mem_reProdIm, mem_singleton_iff, not_or] at hρB
    obtain ⟨⟨⟨hb1, hb2⟩, hb3⟩, hb4⟩ := hρB
    rw [rectangle_mem_nhds_iff, mem_reProdIm, uIoo_of_le hre, uIoo_of_le him]
    refine ⟨⟨lt_of_le_of_ne h1'.1 (fun h => hb2 ⟨h.symm, h2⟩),
      lt_of_le_of_ne h1'.2 (fun h => hb4 ⟨h, h2⟩)⟩,
      ⟨lt_of_le_of_ne h2'.1 (fun h => hb1 ⟨h1, h.symm⟩),
      lt_of_le_of_ne h2'.2 (fun h => hb3 ⟨h1, h⟩)⟩⟩
  -- residues: ord·g at zeros of f, r·f′/f at poles of g
  let A : ℂ → ℂ := fun p => if p ∈ Q then r p * logDeriv f p else (analyticOrderNatAt f p : ℂ) * g p
  have hint : ∀ p ∈ Z ∪ Q, Rectangle z w ∈ 𝓝 p := by
    intro p hp
    rcases Finset.mem_union.mp hp with hp | hp
    exacts [hZint p hp, hQint p hp]
  have key := Zeta23.Analytic.residueTheorem_finset (f := fun s => g s * logDeriv f s) hre him
    (Z ∪ Q) A hint ?holo ?near
  · rw [key, Finset.sum_union hZQ]
    have hZsum : ∑ p ∈ Z, A p = ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) * g ρ :=
      Finset.sum_congr rfl (fun p hp => by simp [A, hZnotQ p hp])
    have hQsum : ∑ p ∈ Q, A p = ∑ q ∈ Q, r q * logDeriv f q :=
      Finset.sum_congr rfl (fun p hp => by simp [A, hp])
    rw [hZsum, hQsum]
  case holo =>
    intro s hs
    have hsQ : s ∉ Q := fun h => hs.2 (by simp [h])
    have hsZ : s ∉ Z := fun h => hs.2 (by simp [h])
    have hfs : f s ≠ 0 := fun h => hsZ ((hZ s hs.1).mp h)
    have hfa := hf s hs.1
    have hga := hg s ⟨hs.1, by simpa using hsQ⟩
    apply DifferentiableAt.differentiableWithinAt
    show DifferentiableAt ℂ (fun s => g s * (deriv f s / f s)) s
    exact hga.differentiableAt.mul (hfa.deriv.differentiableAt.div hfa.differentiableAt hfs)
  case near =>
    intro p hp
    rcases Finset.mem_union.mp hp with hρ | hq
    · have hA : A p = (analyticOrderNatAt f p : ℂ) * g p := by simp [A, hZnotQ p hρ]
      have hga := hg p ⟨hZsub hρ, by simpa using hZnotQ p hρ⟩
      rw [hA]
      exact isBigO_mul_logDeriv_near_zero (hf p (hZsub hρ)) (hord p hρ) hga
    · have hA : A p = r p * logDeriv f p := by simp [A, hq]
      have hpR : p ∈ Rectangle z w := mem_of_mem_nhds (hQint p hq)
      have hfp : f p ≠ 0 := fun h => hQnotZ p hq ((hZ p hpR).mp h)
      have hfa := hf p hpR
      have hF : DifferentiableAt ℂ (logDeriv f) p := by
        have : logDeriv f = fun s => deriv f s / f s := by funext s; exact logDeriv_apply f s
        rw [this]
        exact hfa.deriv.differentiableAt.div hfa.differentiableAt hfp
      rw [hA]
      exact isBigO_mul_near_weightPole (F := logDeriv f) hF (hnear p hq)

/-- **ML bound** for a rectangle integral: ‖∮ f‖ ≤ (sup_border ‖f‖) · (perimeter). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
