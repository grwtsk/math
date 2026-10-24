# norm_volume_sub_integral_face_upper_sub_lower_smul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "238ec72ea654b689e795ffd0b34acb880f60300a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73c294f3-6624-5cd1-578c-b4ca919b6a3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7dec92b2-3205-f89e-ca98-97c335371179",
  "kind": "theorem",
  "lexical_name": "norm_volume_sub_integral_face_upper_sub_lower_smul_le",
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
  "slug": "norm-volume-sub-integral-face-upper-sub-lower-smul-le--f763e68eb5f575f16b14ed0e",
  "source": {
    "blob": "238ec72ea654b689e795ffd0b34acb880f60300a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f763e68eb5f575f16b14ed0ee39534141f538a08544dfb02c6971de66392b2d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dec92b2-3205-f89e-ca98-97c335371179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_volume_sub_integral_face_upper_sub_lower_smul_le {f : (Fin (n + 1) → ℝ) → E}
    {f' : (Fin (n + 1) → ℝ) →L[ℝ] E} (hfc : ContinuousOn f (Box.Icc I)) {x : Fin (n + 1) → ℝ}
    (hxI : x ∈ (Box.Icc I)) {a : E} {ε : ℝ} (h0 : 0 < ε)
    (hε : ∀ y ∈ (Box.Icc I), ‖f y - a - f' (y - x)‖ ≤ ε * ‖y - x‖) {c : ℝ≥0}
    (hc : I.distortion ≤ c) :
    ‖(∏ j, (I.upper j - I.lower j)) • f' (Pi.single i 1) -
      (integral (I.face i) ⊥ (f ∘ i.insertNth (α := fun _ ↦ ℝ) (I.upper i)) BoxAdditiveMap.volume -
        integral (I.face i) ⊥ (f ∘ i.insertNth (α := fun _ ↦ ℝ) (I.lower i))
          BoxAdditiveMap.volume)‖ ≤
      2 * ε * c * ∏ j, (I.upper j - I.lower j) := by
  -- Porting note: Lean fails to find `α` in the next line
  set e : ℝ → (Fin n → ℝ) → (Fin (n + 1) → ℝ) := i.insertNth (α := fun _ ↦ ℝ)
  /- **Plan of the proof**. The difference of the integrals of the affine function
    `fun y ↦ a + f' (y - x)` over the faces `x i = I.upper i` and `x i = I.lower i` is equal to the
    volume of `I` multiplied by `f' (Pi.single i 1)`, so it suffices to show that the integral of
    `f y - a - f' (y - x)` over each of these faces is less than or equal to `ε * c * vol I`. We
    integrate a function of the norm `≤ ε * diam I.Icc` over a box of volume
    `∏ j ≠ i, (I.upper j - I.lower j)`. Since `diam I.Icc ≤ c * (I.upper i - I.lower i)`, we get the
    required estimate.  -/
  have Hl : I.lower i ∈ Icc (I.lower i) (I.upper i) := Set.left_mem_Icc.2 (I.lower_le_upper i)
  have Hu : I.upper i ∈ Icc (I.lower i) (I.upper i) := Set.right_mem_Icc.2 (I.lower_le_upper i)
  have Hi : ∀ x ∈ Icc (I.lower i) (I.upper i),
      Integrable.{0, u, u} (I.face i) ⊥ (f ∘ e x) BoxAdditiveMap.volume := fun x hx =>
    integrable_of_continuousOn _ (Box.continuousOn_face_Icc hfc hx) volume
  /- We start with an estimate: the difference of the values of `f` at the corresponding points
    of the faces `x i = I.lower i` and `x i = I.upper i` is `(2 * ε * diam I.Icc)`-close to the
    value of `f'` on `Pi.single i (I.upper i - I.lower i) = lᵢ • eᵢ`, where
    `lᵢ = I.upper i - I.lower i` is the length of `i`-th edge of `I` and `eᵢ = Pi.single i 1` is the
    `i`-th unit vector. -/
  have : ∀ y ∈ Box.Icc (I.face i),
      ‖f' (Pi.single i (I.upper i - I.lower i)) -
          (f (e (I.upper i) y) - f (e (I.lower i) y))‖ ≤
        2 * ε * diam (Box.Icc I) := fun y hy ↦ by
    set g := fun y => f y - a - f' (y - x) with hg
    change ∀ y ∈ (Box.Icc I), ‖g y‖ ≤ ε * ‖y - x‖ at hε
    clear_value g; obtain rfl : f = fun y => a + f' (y - x) + g y := by simp [hg]
    convert_to ‖g (e (I.lower i) y) - g (e (I.upper i) y)‖ ≤ _
    · congr 1
      have := Fin.insertNth_sub_same (α := fun _ ↦ ℝ) i (I.upper i) (I.lower i) y
      simp only [← this, f'.map_sub]; abel
    · have : ∀ z ∈ Icc (I.lower i) (I.upper i), e z y ∈ (Box.Icc I) := fun z hz =>
        I.mapsTo_insertNth_face_Icc hz hy
      replace hε : ∀ y ∈ (Box.Icc I), ‖g y‖ ≤ ε * diam (Box.Icc I)
      · intro y hy
        refine' (hε y hy).trans (mul_le_mul_of_nonneg_left _ h0.le)
        rw [← dist_eq_norm]
        exact dist_le_diam_of_mem I.isCompact_Icc.bounded hy hxI
      rw [two_mul, add_mul]
      exact norm_sub_le_of_le (hε _ (this _ Hl)) (hε _ (this _ Hu))
  calc
    ‖(∏ j, (I.upper j - I.lower j)) • f' (Pi.single i 1) -
            (integral (I.face i) ⊥ (f ∘ e (I.upper i)) BoxAdditiveMap.volume -
              integral (I.face i) ⊥ (f ∘ e (I.lower i)) BoxAdditiveMap.volume)‖ =
        ‖integral.{0, u, u} (I.face i) ⊥
            (fun x : Fin n → ℝ =>
              f' (Pi.single i (I.upper i - I.lower i)) -
                (f (e (I.upper i) x) - f (e (I.lower i) x)))
            BoxAdditiveMap.volume‖ := by
      rw [← integral_sub (Hi _ Hu) (Hi _ Hl), ← Box.volume_face_mul i, mul_smul, ← Box.volume_apply,
        ← BoxAdditiveMap.toSMul_apply, ← integral_const, ← BoxAdditiveMap.volume,
        ← integral_sub (integrable_const _) ((Hi _ Hu).sub (Hi _ Hl))]
      simp only [(· ∘ ·), Pi.sub_def, ← f'.map_smul, ← Pi.single_smul', smul_eq_mul, mul_one]
    _ ≤ (volume (I.face i : Set (Fin n → ℝ))).toReal * (2 * ε * c * (I.upper i - I.lower i)) := by
      -- The hard part of the estimate was done above, here we just replace `diam I.Icc`
      -- with `c * (I.upper i - I.lower i)`
      refine' norm_integral_le_of_le_const (fun y hy => (this y hy).trans _) volume
      rw [mul_assoc (2 * ε)]
      exact mul_le_mul_of_nonneg_left (I.diam_Icc_le_of_distortion_le i hc)
        (mul_nonneg zero_le_two h0.le)
    _ = 2 * ε * c * ∏ j, (I.upper j - I.lower j) := by
      rw [← Measure.toBoxAdditive_apply, Box.volume_apply, ← I.volume_face_mul i]
      ac_rfl
#align box_integral.norm_volume_sub_integral_face_upper_sub_lower_smul_le BoxIntegral.norm_volume_sub_integral_face_upper_sub_lower_smul_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variant022a420b9d3b60dfff87daa5d4337c7ed9ffc5ce4abd49f66110aa640383c6fa.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238ec72ea654b689e795ffd0b34acb880f60300a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
