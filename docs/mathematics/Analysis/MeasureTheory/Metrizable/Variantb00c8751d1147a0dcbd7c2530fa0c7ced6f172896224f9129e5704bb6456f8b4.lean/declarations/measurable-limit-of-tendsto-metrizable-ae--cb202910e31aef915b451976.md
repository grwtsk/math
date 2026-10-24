# measurable_limit_of_tendsto_metrizable_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:627f975c-e17f-a28a-87b1-0a1e26c8934c",
  "kind": "theorem",
  "lexical_name": "measurable_limit_of_tendsto_metrizable_ae",
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
  "slug": "measurable-limit-of-tendsto-metrizable-ae--cb202910e31aef915b451976",
  "source": {
    "blob": "36a529b47468d6c59e4daf2dd61828c746441877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 116,
    "path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variantb00c8751d1147a0dcbd7c2530fa0c7ced6f172896224f9129e5704bb6456f8b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb202910e31aef915b451976cfea1f4135bcaed2733449a773ec1df86f3513a3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Metrizable/Variantb00c8751d1147a0dcbd7c2530fa0c7ced6f172896224f9129e5704bb6456f8b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:627f975c-e17f-a28a-87b1-0a1e26c8934c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_limit_of_tendsto_metrizable_ae {ι} [Nonempty ι] {μ : Measure α}
    {f : ι → α → β} {L : Filter ι} [L.IsCountablyGenerated] (hf : ∀ n, AEMeasurable (f n) μ)
    (h_ae_tendsto : ∀ᵐ x ∂μ, ∃ l : β, Tendsto (fun n => f n x) L (𝓝 l)) :
    ∃ f_lim : α → β, Measurable f_lim ∧ ∀ᵐ x ∂μ, Tendsto (fun n => f n x) L (𝓝 (f_lim x)) := by
  classical
  inhabit ι
  rcases eq_or_neBot L with (rfl | hL)
  · exact ⟨(hf default).mk _, (hf default).measurable_mk, Eventually.of_forall fun x => tendsto_bot⟩
  set f_lim : α → β := fun x ↦
    if h : ∃ l : β, Tendsto (fun n ↦ f n x) L (𝓝 l) then h.choose
      else (⟨f default x⟩ : Nonempty β).some
  have h_ae_tendsto_f_lim : ∀ᵐ x ∂μ, Tendsto (fun n ↦ f n x) L (𝓝 (f_lim x)) := by
    filter_upwards [h_ae_tendsto] with x hx
    simpa [f_lim, hx] using hx.choose_spec
  have hf_lim : AEMeasurable f_lim μ :=
    aemeasurable_of_tendsto_metrizable_ae L hf h_ae_tendsto_f_lim
  refine ⟨hf_lim.mk f_lim, hf_lim.measurable_mk, ?_⟩
  filter_upwards [h_ae_tendsto_f_lim, hf_lim.ae_eq_mk] with x hx h_eq
  simpa [h_eq] using hx

end Limits

section TendstoIndicator

variable {α : Type*} [MeasurableSpace α] {A : Set α}
variable {ι : Type*} (L : Filter ι) [IsCountablyGenerated L] {As : ι → Set α}

/-- If the indicator functions of measurable sets `Aᵢ` converge to the indicator function of
a set `A` along a nontrivial countably generated filter, then `A` is also measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Metrizable/Variantb00c8751d1147a0dcbd7c2530fa0c7ced6f172896224f9129e5704bb6456f8b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Metrizable/Variantb00c8751d1147a0dcbd7c2530fa0c7ced6f172896224f9129e5704bb6456f8b4.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36a529b47468d6c59e4daf2dd61828c746441877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
