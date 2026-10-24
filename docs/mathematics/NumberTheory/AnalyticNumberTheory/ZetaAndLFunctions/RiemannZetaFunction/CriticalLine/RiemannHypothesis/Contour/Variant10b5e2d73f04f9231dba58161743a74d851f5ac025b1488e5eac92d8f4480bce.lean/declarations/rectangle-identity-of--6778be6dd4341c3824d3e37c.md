# rectangle_identity_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a006417c0697e9b1bd346a546679415672b8b7b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:742773a3-a157-d5ed-2408-d212e1d633f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a8413d4-92e5-4381-7713-2da07482e017",
  "kind": "theorem",
  "lexical_name": "rectangle_identity_of",
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
  "slug": "rectangle-identity-of--6778be6dd4341c3824d3e37c",
  "source": {
    "blob": "a006417c0697e9b1bd346a546679415672b8b7b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6778be6dd4341c3824d3e37c06c93a79ba950ad8f91180de6b18ffed2a26e858",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a8413d4-92e5-4381-7713-2da07482e017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_identity_of {f g : ℂ → ℂ} (hf : Differentiable ℂ f) (hg : Differentiable ℂ g)
    {c : ℝ} (hc : 1 - c < c) {Zset : Set ℂ} (hZ : ∀ s, f s = 0 ↔ s ∈ Zset)
    (hstrip : ∀ ρ ∈ Zset, 1 - c < ρ.re ∧ ρ.re < c) {R : ℝ} (hR : 0 ≤ R)
    (hgood : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 - c ≤ s.re → s.re ≤ c → f s ≠ 0) :
    ∃ Z : Finset ℂ,
      ((Z : Set ℂ) = {ρ : ℂ | ρ ∈ Zset ∧ -R < ρ.im ∧ ρ.im < R}) ∧
      RectangleIntegral' (fun s => g s * logDeriv f s)
          (((1 - c : ℝ) : ℂ) - R * I) ((c : ℝ) + R * I)
        = ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) * g ρ := by
  classical
  set z : ℂ := ((1 - c : ℝ) : ℂ) - R * I with hzdef
  set w : ℂ := (c : ℝ) + R * I with hwdef
  have hzre : z.re = 1 - c := by simp [hzdef]
  have hzim : z.im = -R := by simp [hzdef]
  have hwre : w.re = c := by simp [hwdef]
  have hwim : w.im = R := by simp [hwdef]
  have hre : z.re ≤ w.re := by rw [hzre, hwre]; linarith
  have him : z.im ≤ w.im := by rw [hzim, hwim]; linarith
  have hmem : ∀ s : ℂ, s ∈ Rectangle z w ↔
      (1 - c ≤ s.re ∧ s.re ≤ c) ∧ (-R ≤ s.im ∧ s.im ≤ R) := by
    intro s
    simp only [Rectangle, Complex.mem_reProdIm, hzre, hzim, hwre, hwim,
      Set.uIcc_of_le (show (1 - c : ℝ) ≤ c by linarith),
      Set.uIcc_of_le (show (-R : ℝ) ≤ R by linarith), Set.mem_Icc]
  have hfA : AnalyticOnNhd ℂ f (Rectangle z w) := fun s _ => hf.analyticAt s
  have hgA : AnalyticOnNhd ℂ g (Rectangle z w) := fun s _ => hg.analyticAt s
  have hborder : ∀ s ∈ RectangleBorder z w, f s ≠ 0 := by
    intro s hs h0
    have hsrect := rectangleBorder_subset_rectangle z w hs
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem s).mp hsrect
    simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff,
      hzre, hzim, hwre, hwim] at hs
    rcases hs with ((⟨_, h'⟩ | ⟨h', _⟩) | ⟨_, h'⟩) | ⟨h', _⟩
    · exact hgood s (Or.inr h') hr1 hr2 h0
    · have h1 := (hstrip s ((hZ s).mp h0)).1
      rw [h'] at h1
      exact lt_irrefl _ h1
    · exact hgood s (Or.inl h') hr1 hr2 h0
    · have h1 := (hstrip s ((hZ s).mp h0)).2
      rw [h'] at h1
      exact lt_irrefl _ h1
  have hzB : z ∈ RectangleBorder z w := Or.inl (Or.inl (Or.inl ⟨Set.left_mem_uIcc, rfl⟩))
  have hfin := Zeta23.Analytic.finite_zeros_rectangle hfA
    (rectangleBorder_subset_rectangle z w hzB) (hborder z hzB)
  set Z : Finset ℂ := hfin.toFinset with hZdef
  have hZmem : ∀ ρ, ρ ∈ Z ↔ ρ ∈ Rectangle z w ∧ f ρ = 0 := by
    intro ρ
    rw [hZdef, Set.Finite.mem_toFinset, Set.mem_inter_iff, Set.mem_preimage,
      Set.mem_singleton_iff]
  have hZcoe : (Z : Set ℂ) = {ρ : ℂ | ρ ∈ Zset ∧ -R < ρ.im ∧ ρ.im < R} := by
    ext ρ
    rw [Finset.mem_coe, hZmem, Set.mem_setOf_eq, hmem]
    constructor
    · rintro ⟨⟨⟨hr1, hr2⟩, hi1, hi2⟩, h0⟩
      have hρZ := (hZ ρ).mp h0
      refine ⟨hρZ, lt_of_le_of_ne hi1 ?_, lt_of_le_of_ne hi2 ?_⟩
      · intro h; exact hgood ρ (Or.inr h.symm) hr1 hr2 h0
      · intro h; exact hgood ρ (Or.inl h) hr1 hr2 h0
    · rintro ⟨hρZ, hi1, hi2⟩
      have h1 := hstrip ρ hρZ
      exact ⟨⟨⟨h1.1.le, h1.2.le⟩, hi1.le, hi2.le⟩, (hZ ρ).mpr hρZ⟩
  refine ⟨Z, hZcoe, ?_⟩
  refine Zeta23.Analytic.rectangleIntegral'_mul_logDeriv hre him hfA hgA hborder Z ?_ ?_
  · intro s hs
    rw [hZmem]
    exact ⟨fun h => ⟨hs, h⟩, fun h => h.2⟩
  · intro ρ hρ
    exact ((hZmem ρ).mp hρ).1

/-- **Rectangle identity for ξ′** under (F2):  at a height R ≥ 0 where ξ′ ≠ 0 on Im s = ±R,
1−c ≤ Re s ≤ c (c > 1):  (1/2πi)∮ H·ξ″/ξ′ = Σ_{ξ′(ρ)=0, |Im ρ|<R} m_ρ H(ρ)  — no pole terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant10b5e2d73f04f9231dba58161743a74d851f5ac025b1488e5eac92d8f4480bce.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a006417c0697e9b1bd346a546679415672b8b7b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
