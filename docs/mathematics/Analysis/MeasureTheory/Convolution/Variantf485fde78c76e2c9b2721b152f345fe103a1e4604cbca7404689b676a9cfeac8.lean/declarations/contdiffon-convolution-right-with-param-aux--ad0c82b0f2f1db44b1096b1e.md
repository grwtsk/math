# contDiffOn_convolution_right_with_param_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc5ec1bd-8c95-f7ae-3cf6-d2aa162cd04f",
  "kind": "theorem",
  "lexical_name": "contDiffOn_convolution_right_with_param_aux",
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
  "slug": "contdiffon-convolution-right-with-param-aux--ad0c82b0f2f1db44b1096b1e",
  "source": {
    "blob": "cbfe9c51f48fe1e6f501e0174521e9939c4295b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1234,
    "line": 1183,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0c82b0f2f1db44b1096b1e6629aa22944599b0b50062532bbfa4899cddabcb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc5ec1bd-8c95-f7ae-3cf6-d2aa162cd04f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1183–1234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffOn_convolution_right_with_param_aux {G : Type uP} {E' : Type uP} {F : Type uP}
    {P : Type uP} [NormedAddCommGroup E'] [NormedAddCommGroup F] [NormedSpace 𝕜 E']
    [NormedSpace ℝ F] [NormedSpace 𝕜 F] [MeasurableSpace G]
    {μ : Measure G}
    [NormedAddCommGroup G] [BorelSpace G] [NormedSpace 𝕜 G] [NormedAddCommGroup P] [NormedSpace 𝕜 P]
    {f : G → E} {n : ℕ∞} (L : E →L[𝕜] E' →L[𝕜] F) {g : P → G → E'} {s : Set P} {k : Set G}
    (hs : IsOpen s) (hk : IsCompact k) (hgs : ∀ p, ∀ x, p ∈ s → x ∉ k → g p x = 0)
    (hf : LocallyIntegrable f μ) (hg : ContDiffOn 𝕜 n (↿g) (s ×ˢ univ)) :
    ContDiffOn 𝕜 n (fun q : P × G => (f ⋆[L, μ] g q.1) q.2) (s ×ˢ univ) := by
  /- We have a formula for the derivation of `f * g`, which is of the same form, thanks to
    `hasFDerivAt_convolution_right_with_param`. Therefore, we can prove the result by induction on
    `n` (but for this we need the spaces at the different steps of the induction to live in the same
    universe, which is why we make the assumption in the lemma that all the relevant spaces
    come from the same universe). -/
  induction n using ENat.nat_induction generalizing g E' F with
  | h0 =>
    rw [WithTop.coe_zero, contDiffOn_zero] at hg ⊢
    exact continuousOn_convolution_right_with_param L hk hgs hf hg
  | hsuc n ih =>
    simp only [Nat.succ_eq_add_one, Nat.cast_add, Nat.cast_one, WithTop.coe_add,
      WithTop.coe_natCast, WithTop.coe_one] at hg ⊢
    let f' : P → G → P × G →L[𝕜] F := fun p a =>
      (f ⋆[L.precompR (P × G), μ] fun x : G => fderiv 𝕜 (uncurry g) (p, x)) a
    have A : ∀ q₀ : P × G, q₀.1 ∈ s →
        HasFDerivAt (fun q : P × G => (f ⋆[L, μ] g q.1) q.2) (f' q₀.1 q₀.2) q₀ :=
      hasFDerivAt_convolution_right_with_param L hs hk hgs hf hg.one_of_succ
    rw [contDiffOn_succ_iff_fderiv_of_isOpen (hs.prod (@isOpen_univ G _))] at hg ⊢
    refine ⟨?_, by simp, ?_⟩
    · rintro ⟨p, x⟩ ⟨hp, -⟩
      exact (A (p, x) hp).differentiableAt.differentiableWithinAt
    · suffices H : ContDiffOn 𝕜 n (↿f') (s ×ˢ univ) by
        apply H.congr
        rintro ⟨p, x⟩ ⟨hp, -⟩
        exact (A (p, x) hp).fderiv
      have B : ∀ (p : P) (x : G), p ∈ s → x ∉ k → fderiv 𝕜 (uncurry g) (p, x) = 0 := by
        intro p x hp hx
        apply (hasFDerivAt_zero_of_eventually_const (0 : E') _).fderiv
        have M2 : kᶜ ∈ 𝓝 x := IsOpen.mem_nhds hk.isClosed.isOpen_compl hx
        have M1 : s ∈ 𝓝 p := hs.mem_nhds hp
        rw [nhds_prod_eq]
        filter_upwards [prod_mem_prod M1 M2]
        rintro ⟨p, y⟩ ⟨hp, hy⟩
        exact hgs p y hp hy
      apply ih (L.precompR (P × G) :) B
      convert hg.2.2
  | htop ih =>
    rw [contDiffOn_infty] at hg ⊢
    exact fun n ↦ ih n L hgs (hg n)

/-- The convolution `f * g` is `C^n` when `f` is locally integrable and `g` is `C^n` and compactly
supported. Version where `g` depends on an additional parameter in an open subset `s` of a
parameter space `P` (and the compact support `k` is independent of the parameter in `s`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean#L1183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbfe9c51f48fe1e6f501e0174521e9939c4295b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
