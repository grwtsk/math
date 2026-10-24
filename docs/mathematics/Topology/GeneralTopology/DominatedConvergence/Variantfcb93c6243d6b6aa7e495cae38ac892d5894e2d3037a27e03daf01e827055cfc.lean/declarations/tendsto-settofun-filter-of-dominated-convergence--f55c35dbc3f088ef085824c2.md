# tendsto_setToFun_filter_of_dominated_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17d77ef8-1cc1-fb45-43f8-4d7732298ed8",
  "kind": "theorem",
  "lexical_name": "tendsto_setToFun_filter_of_dominated_convergence",
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
  "slug": "tendsto-settofun-filter-of-dominated-convergence--f55c35dbc3f088ef085824c2",
  "source": {
    "blob": "ed7dd78b7ebd13ab9f4889e53465bc20dddb734a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f55c35dbc3f088ef085824c21b4c4d4efadbbd42518cb310d5867cff2ff236b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17d77ef8-1cc1-fb45-43f8-4d7732298ed8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setToFun_filter_of_dominated_convergence (hT : DominatedFinMeasAdditive μ T C) {ι}
    {l : Filter ι} [l.IsCountablyGenerated] {fs : ι → α → E} {f : α → E} (bound : α → ℝ)
    (hfs_meas : ∀ᶠ n in l, AEStronglyMeasurable (fs n) μ)
    (h_bound : ∀ᶠ n in l, ∀ᵐ a ∂μ, ‖fs n a‖ ≤ bound a) (bound_integrable : Integrable bound μ)
    (h_lim : ∀ᵐ a ∂μ, Tendsto (fun n => fs n a) l (𝓝 (f a))) :
    Tendsto (fun n => setToFun μ T hT (fs n)) l (𝓝 <| setToFun μ T hT f) := by
  rw [tendsto_iff_seq_tendsto]
  intro x xl
  have hxl : ∀ s ∈ l, ∃ a, ∀ b ≥ a, x b ∈ s := by rwa [tendsto_atTop'] at xl
  have h :
    { x : ι | (fun n => AEStronglyMeasurable (fs n) μ) x } ∩
        { x : ι | (fun n => ∀ᵐ a ∂μ, ‖fs n a‖ ≤ bound a) x } ∈ l :=
    inter_mem hfs_meas h_bound
  obtain ⟨k, h⟩ := hxl _ h
  rw [← tendsto_add_atTop_iff_nat k]
  refine tendsto_setToFun_of_dominated_convergence hT bound ?_ bound_integrable ?_ ?_
  · exact fun n => (h _ (self_le_add_left _ _)).1
  · exact fun n => (h _ (self_le_add_left _ _)).2
  · filter_upwards [h_lim]
    refine fun a h_lin => @Tendsto.comp _ _ _ (fun n => x (n + k)) (fun n => fs n a) _ _ _ h_lin ?_
    rwa [tendsto_add_atTop_iff_nat]

/-- Lebesgue dominated convergence theorem for series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed7dd78b7ebd13ab9f4889e53465bc20dddb734a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
