# norm_logDeriv_xi_le_border

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 661,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a70898a-e436-357d-5b2e-10d305779b48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cad5f9bf-0a7a-c6aa-700a-55e6fb8f15c0",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_xi_le_border",
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
  "slug": "norm-logderiv-xi-le-border--7811a71658491bf643900d25",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 661,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7811a71658491bf643900d25c3e2aa5ea2df1c582c198e3a9cb1e0eea7654aa0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cad5f9bf-0a7a-c6aa-700a-55e6fb8f15c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_xi_le_border : ∃ C : ℝ, 0 < C ∧ ∀ (L R : ℝ), 1 ≤ L → 2 ≤ R →
    (∀ p : ℂ, (p.im = R ∨ p.im = -R) → 1 / 2 ≤ p.re → p.re ≤ 2 →
      riemannZeta p ≠ 0 ∧ ‖logDeriv riemannZeta p‖ ≤ L) →
    ∀ p ∈ RectangleBorder (zc R) (wc R), ‖logDeriv xi p‖ ≤ C * (L + Real.log (2 + R)) := by
  obtain ⟨C₁, hC₁, hmid⟩ := norm_logDeriv_xi_le_goodHeight
  obtain ⟨C₂, hC₂, hfar⟩ := norm_logDeriv_xi_le_far
  refine ⟨C₁ + 2 * C₂, by positivity, fun L R hL hR hgood p hp => ?_⟩
  have hlog0 : 0 ≤ Real.log (2 + R) := Real.log_nonneg (by linarith)
  have hLl : Real.log (2 + R) ≤ L + Real.log (2 + R) := by linarith
  -- size of border points
  have hpR : p ∈ Rectangle (zc R) (wc R) := rectangleBorder_subset_rectangle _ _ hp
  have hmem : (1 - R ≤ p.re ∧ p.re ≤ R) ∧ (-R ≤ p.im ∧ p.im ≤ R) := by
    simpa only [Rectangle, Complex.mem_reProdIm, zc_re, zc_im, wc_re, wc_im,
      Set.uIcc_of_le (show (1 - R : ℝ) ≤ R by linarith),
      Set.uIcc_of_le (show (-R : ℝ) ≤ R by linarith), Set.mem_Icc] using hpR
  have hpn : ‖p‖ ≤ 2 * R := by
    calc ‖p‖ ≤ |p.re| + |p.im| := Complex.norm_le_abs_re_add_abs_im p
      _ ≤ R + R := add_le_add (abs_le.mpr ⟨by linarith [hmem.1.1], hmem.1.2⟩)
          (abs_le.mpr ⟨hmem.2.1, hmem.2.2⟩)
      _ = 2 * R := by ring
  -- log(2 + |q|) ≤ 2 log(2 + R) whenever |q| ≤ 2R + 2
  have hlogq : ∀ q : ℂ, ‖q‖ ≤ 2 * R + 2 → Real.log (2 + ‖q‖) ≤ 2 * Real.log (2 + R) := by
    intro q hq
    have e : 2 * Real.log (2 + R) = Real.log ((2 + R) ^ 2) := by
      rw [Real.log_pow]; norm_num
    rw [e]
    apply Real.log_le_log (by positivity)
    nlinarith [norm_nonneg q]
  -- far right, far left (by reflection), middle
  have hR' : ∀ q : ℂ, ‖q‖ ≤ 2 * R + 2 → 3 / 2 ≤ q.re →
      ‖logDeriv xi q‖ ≤ 2 * C₂ * Real.log (2 + R) := by
    intro q hq hre
    calc ‖logDeriv xi q‖ ≤ C₂ * Real.log (2 + ‖q‖) := hfar q hre
      _ ≤ C₂ * (2 * Real.log (2 + R)) := mul_le_mul_of_nonneg_left (hlogq q hq) hC₂.le
      _ = 2 * C₂ * Real.log (2 + R) := by ring
  have hL' : ∀ q : ℂ, ‖q‖ ≤ 2 * R + 1 → q.re ≤ -1 / 2 →
      ‖logDeriv xi q‖ ≤ 2 * C₂ * Real.log (2 + R) := by
    intro q hq hre
    have e : logDeriv xi q = -logDeriv xi (1 - q) := by
      rw [← logDeriv_xi_one_sub (1 - q), sub_sub_cancel]
    rw [e, norm_neg]
    apply hR' (1 - q)
    · calc ‖1 - q‖ ≤ ‖(1 : ℂ)‖ + ‖q‖ := norm_sub_le _ _
        _ ≤ 2 * R + 2 := by rw [norm_one]; linarith
    · simp; linarith
  have htot : ‖logDeriv xi p‖ ≤ 2 * C₂ * Real.log (2 + R) ∨
      ‖logDeriv xi p‖ ≤ C₁ * (L + Real.log (2 + R)) := by
    rcases le_or_gt (3 / 2 : ℝ) p.re with h1 | h1
    · exact Or.inl (hR' p (by linarith) h1)
    rcases le_or_gt p.re (-1 / 2 : ℝ) with h2 | h2
    · exact Or.inl (hL' p (by linarith) h2)
    -- middle: p must be on a horizontal side
    right
    have him : p.im = R ∨ p.im = -R := by
      simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff,
        zc_re, zc_im, wc_re, wc_im] at hp
      rcases hp with ((⟨_, h'⟩ | ⟨h', _⟩) | ⟨_, h'⟩) | ⟨h', _⟩
      · exact Or.inr h'
      · exfalso; linarith
      · exact Or.inl h'
      · exfalso; linarith
    exact hmid L R hL (by linarith) hgood p him (by linarith) (by linarith)
  rcases htot with h | h
  · calc ‖logDeriv xi p‖ ≤ 2 * C₂ * Real.log (2 + R) := h
      _ ≤ 2 * C₂ * (L + Real.log (2 + R)) := mul_le_mul_of_nonneg_left hLl (by positivity)
      _ ≤ (C₁ + 2 * C₂) * (L + Real.log (2 + R)) := by nlinarith
  · calc ‖logDeriv xi p‖ ≤ C₁ * (L + Real.log (2 + R)) := h
      _ ≤ (C₁ + 2 * C₂) * (L + Real.log (2 + R)) := by nlinarith

/-- the weight: wt s w = 1/(s − w) − 1/(s′ − w), s′ = reflect s = 1 − s̄. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
