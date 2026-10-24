# boundaryIntegral_eq_principalSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4b417b2-a4f6-402e-d0bf-a5492fe0b1c5",
  "kind": "theorem",
  "lexical_name": "boundaryIntegral_eq_principalSum",
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
  "slug": "boundaryintegral-eq-principalsum--847c9db6805ce7e91a66c047",
  "source": {
    "blob": "7e21eb584148f5bfbc9c959330c5578f2452ae79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 115,
    "path": "GRWTSK/Analysis/Complex/RectangularPoleReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:847c9db6805ce7e91a66c0476c225a52a2716f31302a35ace929d5e998df9005",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4b417b2-a4f6-402e-d0bf-a5492fe0b1c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryIntegral_eq_principalSum (S : Finset ℂ) (f : ℂ → ℂ) (c : ℂ → ℂ)
    (l r T : ℝ) (hlr : l < r) (hT : 0 < T)
    (hS : ∀ a ∈ S, l < a.re ∧ a.re < r ∧ |a.im| < T)
    (hreg : ∀ z ∈ closedRectangle l r T, z ∉ S → AnalyticAt ℂ f z)
    (hparts : ∀ a ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A a ∧
      f =ᶠ[𝓝[≠] a] fun z => c a / (z - a) + A z) :
    boundaryIntegral f l r T = boundaryIntegral (principalSum S c) l r T := by
  obtain ⟨g, hg, heq⟩ := finite_pole_subtraction S f c (closedRectangle l r T) hreg hparts
  have hhsafe (y u : ℝ) (hy : |y| = T) (hu : u ∈ Icc l r) :
      (u : ℂ) + (y : ℂ) * Complex.I ∈ closedRectangle l r T ∧
        (u : ℂ) + (y : ℂ) * Complex.I ∉ S := by
    refine ⟨by simpa [closedRectangle, hy] using hu, ?_⟩
    intro hm
    have hp := (hS _ hm).2.2
    simp [hy] at hp
  have hvsafe (c₀ t : ℝ) (hc : c₀ = l ∨ c₀ = r) (ht : t ∈ Icc (-T) T) :
      (c₀ : ℂ) + (t : ℂ) * Complex.I ∈ closedRectangle l r T ∧
        (c₀ : ℂ) + (t : ℂ) * Complex.I ∉ S := by
    have hbounds : l ≤ c₀ ∧ c₀ ≤ r := by rcases hc with rfl | rfl <;> exact ⟨by linarith, by linarith⟩
    refine ⟨by simpa [closedRectangle] using And.intro hbounds.1 (And.intro hbounds.2 (abs_le.mpr ht)), ?_⟩
    intro hm
    have hp := hS _ hm
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
      Complex.I_re, Complex.I_im, mul_zero, zero_mul, sub_zero, add_zero] at hp
    rcases hc with rfl | rfl <;> linarith [hp.1, hp.2.1]
  have hgint := edgeIntegrable_of_analytic_germs g l r T hlr.le hT.le
    (fun y hy u hu => hg _ (hhsafe y u hy hu).1)
    (fun c₀ hc t ht => hg _ (hvsafe c₀ t hc ht).1)
  have hpint := edgeIntegrable_of_analytic_germs (principalSum S c) l r T hlr.le hT.le
    (fun y hy u hu => analyticAt_principalSum S c _ (hhsafe y u hy hu).2)
    (fun c₀ hc t ht => analyticAt_principalSum S c _ (hvsafe c₀ t hc ht).2)
  calc
    boundaryIntegral f l r T = boundaryIntegral (fun z => g z + principalSum S c z) l r T := by
      apply boundaryIntegral_congr _ _ l r T hT.le
      · intro y hy u hu
        rw [uIcc_of_le hlr.le] at hu
        exact heq _ (hhsafe y u hy hu).2
      · intro c₀ hc t ht
        rw [uIcc_of_le (by linarith)] at ht
        exact heq _ (hvsafe c₀ t hc ht).2
    _ = boundaryIntegral g l r T + boundaryIntegral (principalSum S c) l r T :=
      boundaryIntegral_add g (principalSum S c) l r T hgint hpint
    _ = boundaryIntegral (principalSum S c) l r T := by
      rw [boundaryIntegral_zero_on_rectangle g l r T hlr.le hT.le hg, zero_add]

end
end GRWTSK.Analysis.Complex.RectangularPoleReduction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangularPoleReduction.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e21eb584148f5bfbc9c959330c5578f2452ae79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
