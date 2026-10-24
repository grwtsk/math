# analyticAt_removable_sing_mul_E

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:277beb6d-1b15-6fdf-f2dd-8eef2bb16828",
  "kind": "lemma",
  "lexical_name": "analyticAt_removable_sing_mul_E",
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
  "slug": "analyticat-removable-sing-mul-e--f8c0ed9bc0e0de803b0dc918",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3706,
    "line": 3682,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c0ed9bc0e0de803b0dc918a559071e1de476c29155637f4ebca5da7d1937d8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:277beb6d-1b15-6fdf-f2dd-8eef2bb16828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3682–3706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma analyticAt_removable_sing_mul_E (x : ℝ) {f_base : ℂ → ℂ} {z_pole : ℂ}
    {c_base : ℂ}
    (h_mero : MeromorphicAt f_base z_pole)
    (h_tendsto : Filter.Tendsto f_base (nhdsWithin z_pole {z_pole}ᶜ) (nhds c_base)) :
    AnalyticAt ℂ (fun z ↦ if z = z_pole then c_base * E (-z_pole * x)
                            else f_base z * E (-z * x)) z_pole := by
  apply analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
  · obtain ⟨V, hV_nhds, hV_anal⟩ := h_mero.eventually_analyticAt
    filter_upwards [nhdsWithin_le_nhds hV_nhds, self_mem_nhdsWithin] with w hwV hw_ne
    have h_eq : (fun z ↦ if z = z_pole then c_base * E (-z_pole * x) else f_base z * E (-z * x)) =ᶠ[nhds w]
                (fun z ↦ f_base z * E (-z * x)) :=
      (eventually_ne_nhds hw_ne).mono (fun z hz ↦ by simp [if_neg hz])
    refine DifferentiableAt.congr_of_eventuallyEq ?_ h_eq
    rcases hV_anal with ⟨b, hb, h_set_eq⟩
    have hw_f_anal : AnalyticAt ℂ f_base w := by
      have : w ∈ V ∩ b := ⟨hwV, hb hw_ne⟩
      rwa [← h_set_eq] at this
    exact (hw_f_anal.mul (by unfold E; fun_prop)).differentiableAt
  · rw [continuousAt_iff_punctured_nhds]
    simp only [↓reduceIte]
    have h_cont_E : ContinuousAt (fun z ↦ E (-z * x)) z_pole := by unfold E; fun_prop
    refine (h_tendsto.mul (h_cont_E.tendsto.mono_left nhdsWithin_le_nhds)).congr' ?_
    filter_upwards [self_mem_nhdsWithin] with w (hw : w ≠ z_pole)
    simp [if_neg hw]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L3682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
