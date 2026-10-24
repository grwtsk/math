# entry_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e27b2e7-d92e-6657-dec5-d5b6898beb8f",
  "kind": "theorem",
  "lexical_name": "entry_core",
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
  "slug": "entry-core--e01fa05503c07b4862bc7dba",
  "source": {
    "blob": "d4fef11a08b062807a2d6326d30b960355b150c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e01fa05503c07b4862bc7dbabc2d8b0696913eb4e5d8724ad065ecac358cc160",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e27b2e7-d92e-6657-dec5-d5b6898beb8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem entry_core {w g : ℝ → ℂ} {a b T ε Cg W W' : ℝ} (hT : 0 < T) (ha : T ≤ a) (hb : T ≤ b)
    (hwc : Continuous w) (hgc : Continuous g)
    (hε : 0 ≤ ε) (hCg : 0 ≤ Cg) (hW : 0 ≤ W) (hW' : 0 ≤ W')
    (hw : ∀ t, ‖w t‖ ≤ W * (cauchyK a t * cauchyK b t))
    (hw' : ∀ t, (|t - a| + |t - b|) * ‖w t‖ ≤ W' * (cauchyK a t * cauchyK b t))
    (hg : ∀ t, ‖g t‖ ≤ Cg)
    (hgε : ∀ t, T / 4 ≤ t → ‖g t‖ ≤ ε * (|t - (a + b) / 2| + 1)) :
    Integrable (fun t => w t * g t) ∧
    ‖∫ t, w t * g t‖
      ≤ ε * (W + W' / 2) * (8 * Real.pi / (4 + (a - b) ^ 2)) + Cg * W * (16 * Real.pi / (9 * T ^ 2)) := by
  -- the dominating function
  set F₁ : ℝ → ℝ := fun t => ε * (W + W' / 2) * (cauchyK a t * cauchyK b t) with hF₁
  set F₂ : ℝ → ℝ := fun t => (Iic (T / 4)).indicator (fun t => Cg * W * (cauchyK a t * cauchyK b t)) t
    with hF₂
  have hF₁i : Integrable F₁ := (integrable_cauchyK_mul a b).const_mul _
  have hF₂i : Integrable F₂ :=
    (((integrable_cauchyK_mul a b).const_mul (Cg * W)).integrableOn).integrable_indicator measurableSet_Iic
  have hdom : ∀ t, ‖w t * g t‖ ≤ F₁ t + F₂ t := by
    intro t
    have hK := mul_nonneg (cauchyK_nonneg a t) (cauchyK_nonneg b t)
    rw [norm_mul]
    rcases le_or_gt (T / 4) t with h | h
    · -- near region: use the ε bound
      have hF₂0 : 0 ≤ F₂ t := by
        simp only [hF₂]
        exact Set.indicator_nonneg (fun x _ => mul_nonneg (mul_nonneg hCg hW)
          (mul_nonneg (cauchyK_nonneg a x) (cauchyK_nonneg b x))) _
      have h1 : ‖w t‖ * ‖g t‖ ≤ ‖w t‖ * (ε * (|t - (a + b) / 2| + 1)) :=
        mul_le_mul_of_nonneg_left (hgε t h) (norm_nonneg _)
      have h2 : ‖w t‖ * (ε * (|t - (a + b) / 2| + 1))
          ≤ ε * ((|t - a| + |t - b|) / 2 * ‖w t‖ + ‖w t‖) := by
        have hm := abs_sub_midpoint_le t a b
        have h := mul_le_mul_of_nonneg_left (add_le_add_right hm 1) (mul_nonneg hε (norm_nonneg (w t)))
        have e1 : ‖w t‖ * (ε * (|t - (a + b) / 2| + 1)) = ε * ‖w t‖ * (|t - (a + b) / 2| + 1) := by ring
        have e2 : ε * ((|t - a| + |t - b|) / 2 * ‖w t‖ + ‖w t‖)
            = ε * ‖w t‖ * ((|t - a| + |t - b|) / 2 + 1) := by ring
        rw [e1, e2]; linarith
      have h3 : ε * ((|t - a| + |t - b|) / 2 * ‖w t‖ + ‖w t‖) ≤ F₁ t := by
        simp only [hF₁]
        have hA := hw' t
        have hB := hw t
        have e : ε * ((|t - a| + |t - b|) / 2 * ‖w t‖ + ‖w t‖)
            = ε * (((|t - a| + |t - b|) * ‖w t‖) / 2 + ‖w t‖) := by ring
        rw [e]
        have hsum : ((|t - a| + |t - b|) * ‖w t‖) / 2 + ‖w t‖
            ≤ (W' / 2 + W) * (cauchyK a t * cauchyK b t) := by nlinarith
        calc ε * (((|t - a| + |t - b|) * ‖w t‖) / 2 + ‖w t‖)
            ≤ ε * ((W' / 2 + W) * (cauchyK a t * cauchyK b t)) := mul_le_mul_of_nonneg_left hsum hε
          _ = ε * (W + W' / 2) * (cauchyK a t * cauchyK b t) := by ring
      linarith
    · -- far region: uniform bound
      have hmem : t ∈ Iic (T / 4) := h.le
      have hF₂t : F₂ t = Cg * W * (cauchyK a t * cauchyK b t) := by
        simp only [hF₂, Set.indicator_of_mem hmem]
      have hF₁0 : 0 ≤ F₁ t := by
        simp only [hF₁]
        exact mul_nonneg (mul_nonneg hε (by positivity)) hK
      have h1 : ‖w t‖ * ‖g t‖ ≤ W * (cauchyK a t * cauchyK b t) * Cg :=
        mul_le_mul (hw t) (hg t) (norm_nonneg _) (by positivity)
      rw [hF₂t]; linarith
  have hmeas : AEStronglyMeasurable (fun t => w t * g t) := (hwc.mul hgc).aestronglyMeasurable
  have hint : Integrable (fun t => w t * g t) :=
    (hF₁i.add hF₂i).mono' hmeas (Eventually.of_forall hdom)
  refine ⟨hint, ?_⟩
  calc ‖∫ t, w t * g t‖ ≤ ∫ t, F₁ t + F₂ t :=
        norm_integral_le_of_norm_le (hF₁i.add hF₂i) (Eventually.of_forall hdom)
    _ = (∫ t, F₁ t) + ∫ t, F₂ t := integral_add hF₁i hF₂i
    _ ≤ ε * (W + W' / 2) * (8 * Real.pi / (4 + (a - b) ^ 2)) + Cg * W * (16 * Real.pi / (9 * T ^ 2)) := by
        refine add_le_add ?_ ?_
        · simp only [hF₁]
          rw [integral_const_mul]
          exact mul_le_mul_of_nonneg_left (integral_cauchyK_mul_le a b) (by positivity)
        · simp only [hF₂]
          rw [integral_indicator measurableSet_Iic, integral_const_mul]
          exact mul_le_mul_of_nonneg_left (setIntegral_cauchyK_mul_far (b := b) hT ha) (by positivity)

/-- the mirrored core estimate: bumps at −a, −b and the ε-bound for t ≤ −T/4
(reduce to entry_core by t ↦ −t). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4fef11a08b062807a2d6326d30b960355b150c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
