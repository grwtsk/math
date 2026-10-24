# verticalIntegral_sub_verticalIntegral_eq_squareIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c19a380a-cb50-28be-b491-69bd16612608",
  "kind": "lemma",
  "lexical_name": "verticalIntegral_sub_verticalIntegral_eq_squareIntegral",
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
  "slug": "verticalintegral-sub-verticalintegral-eq-squareintegral--ec19654dd413b2b2dcb77cdc",
  "source": {
    "blob": "37ebc097b2f05a955e08b89d04b4afa1b77f2ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec19654dd413b2b2dcb77cdc415ba47d05895f048deac94317295bd40533b396",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c19a380a-cb50-28be-b491-69bd16612608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma verticalIntegral_sub_verticalIntegral_eq_squareIntegral
    {σ σ' : ℝ} {f : ℂ → ℂ} {p : ℂ} (hσ : σ < p.re ∧ p.re < σ')
    (hf : HolomorphicOn f (Icc σ σ' ×ℂ univ \ {p}))
    (hbot : Tendsto (fun (y : ℝ) ↦ ∫ (x : ℝ) in σ..σ', f (x + y * I)) atBot (𝓝 0))
    (htop :
      Tendsto (fun (y : ℝ) ↦ ∫ (x : ℝ) in σ..σ', f (x + y * I)) atTop (𝓝 0))
    (hleft : Integrable (fun (y : ℝ) ↦ f (σ + y * I)))
    (hright : Integrable (fun (y : ℝ) ↦ f (σ' + y * I))) :
    ∀ᶠ (c : ℝ) in 𝓝[>] 0, VerticalIntegral f σ' - VerticalIntegral f σ =
    RectangleIntegral f (-c - c * I + p) (c + c * I + p) := by
  have : Icc σ σ' ×ℂ univ ∈ 𝓝 p := by
    rw [← mem_interior_iff_mem_nhds, Complex.interior_reProdIm, interior_Icc, interior_univ]
    refine ⟨⟨?_, ?_⟩, trivial⟩ <;> linarith
  obtain ⟨c', hc'0, hc'⟩ := ((nhds_hasBasis_square p).1 _).mp this
  filter_upwards [Ioo_mem_nhdsGT hc'0] with c ⟨hc0, hcc'⟩
  have hsub : Square p c ⊆ Icc σ σ' ×ℂ univ := (square_subset_square hc0 hcc'.le).trans hc'
  apply tendsto_nhds_unique (RectangleIntegral_tendsTo_VerticalIntegral hbot htop hleft hright)
  apply Filter.EventuallyEq.tendsto
  filter_upwards [Filter.Ioi_mem_atTop ((c - p.im) ⊔ (c + p.im))] with y hy
  have : c - p.im < y ∧ c + p.im < y := sup_lt_iff.mp hy
  have : c + σ ≤ p.re := by simpa using (hsub ⟨left_mem_uIcc, left_mem_uIcc⟩).1.1
  have : c + p.re ≤ σ' := by simpa using (hsub ⟨right_mem_uIcc, right_mem_uIcc⟩).1.2
  apply RectanglePullToNhdOfPole'
  · simpa using ⟨by linarith, by linarith, by linarith⟩
  · exact square_mem_nhds p (ne_of_gt hc0)
  · apply RectSubRect' <;> simpa using by linarith
  · refine hf.mono (diff_subset_diff ?_ subset_rfl)
    simpa [Rectangle, uIcc_of_lt (hσ.1.trans hσ.2)] using fun x ⟨hx, _⟩ ↦ ⟨hx, trivial⟩

@[blueprint
  (title := "RectangleIntegral-tendsTo-UpperU")
  (statement := /--
  Let $\sigma,\sigma' \in \mathbb{R}$, and $f : \mathbb{C} \to \mathbb{C}$ such that
  the vertical integrals $\int_{(\sigma)}f(s)ds$ and $\int_{(\sigma')}f(s)ds$ exist and
  the horizontal integral $\int_{(\sigma)}^{\sigma'}f(x + yi)dx$ vanishes as $y \to \pm \infty$.
  Then the limit of rectangle integrals
  $$\int_{\sigma+iT}^{\sigma'+iU}f(s)ds$$
  as $U\to\infty$ is the ``UpperUIntegral'' of $f$.
  -/)
  (proof := /-- Almost by definition. -/)
  (proofUses := ["RectangleIntegral", "UpperUIntegral"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant1276e14464d250b1b2da7da6618da71f44792f9557b3237ab784bc36eac1fd8a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ebc097b2f05a955e08b89d04b4afa1b77f2ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
