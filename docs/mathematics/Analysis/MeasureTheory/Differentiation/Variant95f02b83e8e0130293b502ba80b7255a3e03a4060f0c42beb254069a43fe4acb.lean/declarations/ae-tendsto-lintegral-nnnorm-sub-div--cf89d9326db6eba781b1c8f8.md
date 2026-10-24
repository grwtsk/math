# ae_tendsto_lintegral_nnnorm_sub_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e757eae6-66db-9ff9-8ea2-8304db875dde",
  "kind": "theorem",
  "lexical_name": "ae_tendsto_lintegral_nnnorm_sub_div",
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
  "slug": "ae-tendsto-lintegral-nnnorm-sub-div--cf89d9326db6eba781b1c8f8",
  "source": {
    "blob": "cc26e1e64d5bf06020ca5e385d7ee270325dc58b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 916,
    "line": 899,
    "path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf89d9326db6eba781b1c8f8f197cda439debf8f0c91f6ff0e79be2d09e05ef9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e757eae6-66db-9ff9-8ea2-8304db875dde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–916.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_tendsto_lintegral_nnnorm_sub_div {f : α → E} (hf : LocallyIntegrable f μ) :
    ∀ᵐ x ∂μ, Tendsto (fun a => (∫⁻ y in a, ‖f y - f x‖₊ ∂μ) / μ a) (v.filterAt x) (𝓝 0) := by
  rcases hf.exists_nat_integrableOn with ⟨u, u_open, u_univ, hu⟩
  have : ∀ n, ∀ᵐ x ∂μ,
      Tendsto (fun a => (∫⁻ y in a, ‖(u n).indicator f y - (u n).indicator f x‖₊ ∂μ) / μ a)
      (v.filterAt x) (𝓝 0) := by
    intro n
    apply ae_tendsto_lintegral_nnnorm_sub_div_of_integrable
    exact (integrable_indicator_iff (u_open n).measurableSet).2 (hu n)
  filter_upwards [ae_all_iff.2 this] with x hx
  obtain ⟨n, hn⟩ : ∃ n, x ∈ u n := by simpa only [← u_univ, mem_iUnion] using mem_univ x
  apply Tendsto.congr' _ (hx n)
  filter_upwards [v.eventually_filterAt_subset_of_nhds ((u_open n).mem_nhds hn),
    v.eventually_filterAt_measurableSet x] with a ha h'a
  congr 1
  refine' set_lintegral_congr_fun h'a (eventually_of_forall (fun y hy ↦ _))
  rw [indicator_of_mem (ha hy) f, indicator_of_mem hn f]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc26e1e64d5bf06020ca5e385d7ee270325dc58b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
