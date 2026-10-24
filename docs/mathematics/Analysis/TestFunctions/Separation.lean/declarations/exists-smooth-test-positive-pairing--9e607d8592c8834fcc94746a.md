# exists_smooth_test_positive_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:721b99d5-4db5-8ace-d354-720540981bcc",
  "kind": "theorem",
  "lexical_name": "exists_smooth_test_positive_pairing",
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
  "slug": "exists-smooth-test-positive-pairing--9e607d8592c8834fcc94746a",
  "source": {
    "blob": "377dff55ada8f679a60abdfd345ef72898dda1b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 35,
    "path": "GRWTSK/Analysis/TestFunctions/Separation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e607d8592c8834fcc94746aeb706bccc552f07f3080b33451a45bb865ce6812",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/Separation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:721b99d5-4db5-8ace-d354-720540981bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smooth_test_positive_pairing {f : ℝ → ℝ} {s : Set ℝ}
    (hf : Continuous f) (hs : IsOpen s) {x : ℝ} (hx : x ∈ s) (hfx : f x ≠ 0) :
    ∃ g : ℝ → ℝ, HasCompactSupport g ∧ tsupport g ⊆ s ∧ ContDiff ℝ ∞ g ∧
      Integrable (fun t ↦ f t * g t) ∧ 0 < ∫ t, f t * g t := by
  let u : Set ℝ := s ∩ {y | 0 < f y * f x}
  have hu : IsOpen u := hs.inter (isOpen_lt continuous_const (hf.mul continuous_const))
  have hxU : x ∈ u := ⟨hx, mul_self_pos.mpr hfx⟩
  obtain ⟨φ, hφs, hφc, hφsmooth, hφrange, hφx⟩ :=
    exists_contDiff_tsupport_subset (n := (⊤ : ℕ∞)) (hu.mem_nhds hxU)
  let g : ℝ → ℝ := fun t ↦ f x * φ t
  have hgcompact : HasCompactSupport g := hφc.mul_left
  have hgsupport : tsupport g ⊆ s :=
    (tsupport_mul_subset_right.trans hφs).trans inter_subset_left
  have hgsmooth : ContDiff ℝ ∞ g := contDiff_const.mul hφsmooth
  have hFcontinuous : Continuous (fun t ↦ f t * g t) :=
    hf.mul (continuous_const.mul hφsmooth.continuous)
  have hFcompact : HasCompactSupport (fun t ↦ f t * g t) := hgcompact.mul_left
  have hFnonneg : 0 ≤ (fun t ↦ f t * g t) := by
    intro t
    by_cases hz : φ t = 0
    · simp [g, hz]
    · have ht : t ∈ u := hφs (subset_closure hz)
      have hp : 0 ≤ φ t := (hφrange (mem_range_self t)).1
      change 0 ≤ f t * (f x * φ t)
      rw [← mul_assoc]
      exact mul_nonneg ht.2.le hp
  have hFx : (fun t ↦ f t * g t) x ≠ 0 := by
    simpa [g, hφx] using mul_ne_zero hfx hfx
  exact ⟨g, hgcompact, hgsupport, hgsmooth,
    hFcontinuous.integrable_of_hasCompactSupport hFcompact,
    hFcontinuous.integral_pos_of_hasCompactSupport_nonneg_nonzero hFcompact hFnonneg hFx⟩

/-- Vanishing of every supported smooth test pairing implies pointwise vanishing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/Separation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/Separation.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377dff55ada8f679a60abdfd345ef72898dda1b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
