# integrable_positive_of_continuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:477503dd-e952-4beb-fe7a-f359cc9bec39",
  "kind": "theorem",
  "lexical_name": "integrable_positive_of_continuation",
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
  "slug": "integrable-positive-of-continuation--b9b7344eb3bf448449f404ca",
  "source": {
    "blob": "9a2bc304c4bb43b770c5818ae0565aa2fc758a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b7344eb3bf448449f404ca6e9007a98dd589f3a163b2711c3e364939592d3f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:477503dd-e952-4beb-fe7a-f359cc9bec39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_positive_of_continuation (hXm : AEMeasurable X μ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, 1 < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (F : ℂ → ℂ) (hF : MeromorphicOn F {s : ℂ | 0 < s.re})
    (hreal : ∀ t : ℝ, 0 < t → AnalyticAt ℂ F (t : ℂ))
    (hinit : ∀ s : ℂ, 1 < s.re → F s = transform X μ s)
    (t : ℝ) (ht : 0 < t) : Integrable (fun ω ↦ Real.exp (-t * X ω)) μ := by
  by_contra hbad
  let S : Set ℝ := {u | Integrable (fun ω ↦ Real.exp (-u * X ω)) μ}
  have hSne : S.Nonempty := ⟨2, hconv 2 (by norm_num)⟩
  have hSlower : ∀ u ∈ S, t ≤ u := by
    intro u hu
    by_contra htu
    exact hbad (integrable_of_le hXm hX (le_of_not_ge htu) hu)
  have hSbdd : BddBelow S := ⟨t, hSlower⟩
  let a : ℝ := sInf S
  have hta : t ≤ a := le_csInf hSne hSlower
  have ha : 0 < a := lt_of_lt_of_le ht hta
  have hright (u : ℝ) (hu : a < u) :
      Integrable (fun ω ↦ Real.exp (-u * X ω)) μ := by
    obtain ⟨v, hv, hvu⟩ := exists_lt_of_csInf_lt hSne hu
    exact integrable_of_le hXm hX hvu.le hv
  have hleft (u : ℝ) (hu : u < a) :
      ¬ Integrable (fun ω ↦ Real.exp (-u * X ω)) μ := by
    intro hi
    exact (not_le_of_gt hu) (csInf_le hSbdd hi)
  have heq : F =ᶠ[𝓝[{z : ℂ | a < z.re}] (a : ℂ)] transform X μ := by
    have han := hreal a ha
    have hnear := han.eventually_analyticAt
    filter_upwards [hnear.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with z hz hzr
    have hg := transform_germ_eq F hF hinit a ha.le hright z hzr
    have hc := (transform_analytic a hright z hzr).continuousAt
    exact ((hz.continuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE hc).mp hg).eq_of_nhds
  exact Positivity.not_analyticAt_laplace_of_finite_abscissa a hX hright hleft F heq
    (hreal a ha)

/-- Positivity and positive-axis analyticity exclude every pole in the positive half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2bc304c4bb43b770c5818ae0565aa2fc758a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
