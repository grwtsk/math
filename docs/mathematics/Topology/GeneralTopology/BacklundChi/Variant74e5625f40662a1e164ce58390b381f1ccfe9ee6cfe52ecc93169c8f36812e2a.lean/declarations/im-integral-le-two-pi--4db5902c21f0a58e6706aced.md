# im_integral_le_two_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c849736-5972-7e49-976c-465473b6e42a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4294b811-95f9-348f-66b1-396a7983324d",
  "kind": "lemma",
  "lexical_name": "im_integral_le_two_pi",
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
  "slug": "im-integral-le-two-pi--4db5902c21f0a58e6706aced",
  "source": {
    "blob": "3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4db5902c21f0a58e6706aced6888e684893d642ee240a4b81eb50fea6293005a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4294b811-95f9-348f-66b1-396a7983324d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma im_integral_le_two_pi (hχ1 : χ ≠ 1)
    (hnz : ∀ σ ∈ Set.Icc (1/2 : ℝ) 2, χ.LFunction (σ + T * I) ≠ 0)
    {u v : ℝ} (hu : 1/2 ≤ u) (huv : u < v) (hv : v ≤ 2)
    (hno : ∀ σ ∈ Set.Ioo u v, (χ.LFunction (σ + T * I)).re ≠ 0) :
    |(∫ σ in u..v, logDeriv χ.LFunction (σ + T * I)).im| ≤ 2 * Real.pi := by
  set w : ℝ → ℂ := fun σ => χ.LFunction (σ + T * I) with hwdef
  have hwc : Continuous w := continuous_LFunction_horizontal hχ1
  have huI : u ∈ Set.Icc (1/2 : ℝ) 2 := ⟨hu, by linarith⟩
  have hvI : v ∈ Set.Icc (1/2 : ℝ) 2 := ⟨by linarith, hv⟩
  have hsub : Set.Icc u v ⊆ Set.Icc (1/2 : ℝ) 2 := Set.Icc_subset_Icc hu hv
  -- the sign ε ∈ {±1} of Re w at the midpoint
  set m : ℝ := (u + v) / 2 with hmdef
  have hm : m ∈ Set.Ioo u v := ⟨by rw [hmdef]; linarith, by rw [hmdef]; linarith⟩
  set ε : ℝ := if 0 < (w m).re then 1 else -1 with hεdef
  have hε : ε = 1 ∨ ε = -1 := by by_cases h : 0 < (w m).re <;> simp [hεdef, h]
  have hε0 : ε ≠ 0 := by rcases hε with h | h <;> simp [h]
  have hεm : 0 < ε * (w m).re := by
    by_cases h : 0 < (w m).re
    · simp [hεdef, h]
    · have h' : (w m).re < 0 := lt_of_le_of_ne (not_lt.mp h) (hno m hm)
      simp only [hεdef, if_neg h]; linarith
  -- g := ε · Re w is continuous and, by the IVT, positive on all of (u,v)
  set g : ℝ → ℝ := fun x => ε * (w x).re with hgdef
  have hg : Continuous g := continuous_const.mul (Complex.continuous_re.comp hwc)
  have hpos : ∀ σ ∈ Set.Ioo u v, 0 < g σ := by
    intro σ hσ
    by_contra hneg
    have hσne : g σ ≠ 0 := mul_ne_zero hε0 (hno σ hσ)
    have hσneg : g σ < 0 := lt_of_le_of_ne (not_lt.mp hneg) hσne
    have hIcc : Set.uIcc σ m ⊆ Set.Ioo u v := Set.ordConnected_Ioo.uIcc_subset hσ hm
    have h0 : (0 : ℝ) ∈ Set.uIcc (g σ) (g m) :=
      Set.mem_uIcc.mpr (Or.inl ⟨hσneg.le, hεm.le⟩)
    obtain ⟨x, hx, hx0⟩ := intermediate_value_uIcc hg.continuousOn h0
    exact mul_ne_zero hε0 (hno x (hIcc hx)) hx0
  -- by continuity, g ≥ 0 on the closed interval
  have hnonneg : ∀ σ ∈ Set.Icc u v, 0 ≤ g σ := by
    have hcl : IsClosed {x | 0 ≤ g x} := isClosed_le continuous_const hg
    have : Set.Icc u v ⊆ {x | 0 ≤ g x} := by
      rw [← closure_Ioo huv.ne]
      exact hcl.closure_subset_iff.mpr (fun x hx => (hpos x hx).le)
    exact fun σ hσ => this hσ
  -- hence ε·w stays in the slit plane on [u,v]
  have hslit : ∀ σ ∈ Set.Icc u v, (ε : ℂ) * w σ ∈ Complex.slitPlane := by
    intro σ hσ
    rw [Complex.mem_slitPlane_iff, Complex.re_ofReal_mul, Complex.im_ofReal_mul]
    rcases (hnonneg σ hσ).lt_or_eq with h | h
    · exact Or.inl h
    · right
      intro him
      have hre : (w σ).re = 0 := by
        rcases mul_eq_zero.mp h.symm with h1 | h1
        · exact absurd h1 hε0
        · exact h1
      have him' : (w σ).im = 0 := by
        rcases mul_eq_zero.mp him with h1 | h1
        · exact absurd h1 hε0
        · exact h1
      exact hnz σ (hsub hσ) (Complex.ext hre him')
  -- Φ := log(ε·w) is a primitive of ζ'/ζ(σ+iT) on [u,v]
  have hderiv : ∀ σ ∈ Set.uIcc u v, HasDerivAt (fun x : ℝ => Complex.log ((ε : ℂ) * w x))
      (logDeriv χ.LFunction (σ + T * I)) σ := by
    intro σ hσ
    rw [Set.uIcc_of_le huv.le] at hσ
    have hwσ : w σ ≠ 0 := hnz σ (hsub hσ)
    have hεc : (ε : ℂ) ≠ 0 := by exact_mod_cast hε0
    have h1 := (hasDerivAt_LFunction_horizontal (T := T) hχ1 σ).const_mul (ε : ℂ)
    have h2 := (Complex.hasDerivAt_log (hslit σ hσ)).comp σ h1
    have e : ((ε : ℂ) * w σ)⁻¹ * ((ε : ℂ) * deriv χ.LFunction (σ + T * I))
        = logDeriv χ.LFunction (σ + T * I) := by
      rw [logDeriv_apply, show χ.LFunction ((σ : ℂ) + T * I) = w σ from rfl]
      field_simp
    rw [e] at h2
    exact h2
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv
    (intervalIntegrable_logDeriv_horizontal hχ1 hnz huI hvI),
    Complex.sub_im, Complex.log_im, Complex.log_im]
  calc |((ε : ℂ) * w v).arg - ((ε : ℂ) * w u).arg|
      ≤ |((ε : ℂ) * w v).arg| + |((ε : ℂ) * w u).arg| := abs_sub _ _
    _ ≤ Real.pi + Real.pi := add_le_add (Complex.abs_arg_le_pi _) (Complex.abs_arg_le_pi _)
    _ = 2 * Real.pi := by ring

/-- **Induction.** With `P ⊇` the zeros of `Re ζ(σ+iT)` in `[1/2,2]`:
`|Im ∫_u^v ζ'/ζ(σ+iT) dσ| ≤ 2π (#(P ∩ (u,v)) + 1)` for `1/2 ≤ u < v ≤ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
