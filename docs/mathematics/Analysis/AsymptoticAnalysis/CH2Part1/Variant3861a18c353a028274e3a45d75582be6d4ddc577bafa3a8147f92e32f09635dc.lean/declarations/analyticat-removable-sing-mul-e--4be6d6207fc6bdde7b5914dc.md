# analyticAt_removable_sing_mul_E

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3651,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2ddc981-184e-f782-8dce-b70f9be68744",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4e8f039-8522-1df5-3d9e-e93de7eab132",
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
  "slug": "analyticat-removable-sing-mul-e--4be6d6207fc6bdde7b5914dc",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3675,
    "line": 3651,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be6d6207fc6bdde7b5914dc7d1ee45eee23f2c019f6d98857be9e71d6d7e3be",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4e8f039-8522-1df5-3d9e-e93de7eab132`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3651–3675.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L3651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
