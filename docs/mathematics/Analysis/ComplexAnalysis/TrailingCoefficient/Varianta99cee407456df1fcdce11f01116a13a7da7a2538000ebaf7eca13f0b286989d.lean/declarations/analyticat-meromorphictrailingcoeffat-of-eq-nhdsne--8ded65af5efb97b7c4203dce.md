# AnalyticAt.meromorphicTrailingCoeffAt_of_eq_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8d7f994-ae43-6ca8-5a2b-dcc3117efbb0",
  "kind": "lemma",
  "lexical_name": "AnalyticAt.meromorphicTrailingCoeffAt_of_eq_nhdsNE",
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
  "slug": "analyticat-meromorphictrailingcoeffat-of-eq-nhdsne--8ded65af5efb97b7c4203dce",
  "source": {
    "blob": "83ddc065af2aa54cff11436693db6cdad84a4928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 74,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ded65af5efb97b7c4203dcedb5f40d3807e48818e4f0ec05ab8e85421882ef9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8d7f994-ae43-6ca8-5a2b-dcc3117efbb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticAt.meromorphicTrailingCoeffAt_of_eq_nhdsNE (h₁g : AnalyticAt 𝕜 g x)
    (h : f =ᶠ[𝓝[≠] x] fun z ↦ (z - x) ^ (meromorphicOrderAt f x).untop₀ • g z) :
    meromorphicTrailingCoeffAt f x = g x := by
  have h₁f : MeromorphicAt f x := by
    rw [MeromorphicAt.meromorphicAt_congr h]
    fun_prop
  by_cases h₃ : meromorphicOrderAt f x = ⊤
  · simp only [h₃, WithTop.untop₀_top, zpow_zero, one_smul,
      MeromorphicAt.meromorphicTrailingCoeffAt_of_order_eq_top] at ⊢ h
    apply EventuallyEq.eq_of_nhds (f := 0)
    rw [← ContinuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE (by fun_prop) (by fun_prop)]
    apply (h.symm.trans (meromorphicOrderAt_eq_top_iff.1 h₃)).symm
  · unfold meromorphicTrailingCoeffAt
    simp only [h₁f, reduceDIte, h₃, ne_eq]
    obtain ⟨h'₁, h'₂, h'₃⟩ := ((meromorphicOrderAt_ne_top_iff h₁f).1 h₃).choose_spec
    apply Filter.EventuallyEq.eq_of_nhds
    rw [← h'₁.continuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE h₁g.continuousAt]
    filter_upwards [h, h'₃, self_mem_nhdsWithin] with y h₁y h₂y h₃y
    rw [← sub_eq_zero]
    rwa [h₂y, ← sub_eq_zero, ← smul_sub, smul_eq_zero_iff_right] at h₁y
    simp_all [zpow_ne_zero, sub_ne_zero]

/--
Variant of `meromorphicTrailingCoeffAt_of_order_eq_finite`: Definition of the trailing coefficient
in case where `f` is meromorphic of finite order and a presentation is given.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ddc065af2aa54cff11436693db6cdad84a4928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
