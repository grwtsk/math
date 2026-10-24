# tendsto_setToFun_filter_of_norm_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:414f0b44-3bdb-2122-843e-e35ba1bae93e",
  "kind": "theorem",
  "lexical_name": "tendsto_setToFun_filter_of_norm_le_const",
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
  "slug": "tendsto-settofun-filter-of-norm-le-const--e55e3e9fbb78da75f20101ac",
  "source": {
    "blob": "ed7dd78b7ebd13ab9f4889e53465bc20dddb734a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 240,
    "path": "GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e55e3e9fbb78da75f20101aca0ede52c5df340092375458ad41d58e99229e6f6",
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

Occurrence: `result:414f0b44-3bdb-2122-843e-e35ba1bae93e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setToFun_filter_of_norm_le_const (hT : DominatedFinMeasAdditive μ T C)
    {ι} {l : Filter ι} [l.IsCountablyGenerated]
    {F : ι → α → E} [IsFiniteMeasure μ] {f : α → E}
    (h_meas : ∀ᶠ n in l, AEStronglyMeasurable (F n) μ)
    (h_bound : ∃ C, ∀ᶠ n in l, ∀ᵐ ω ∂μ, ‖F n ω‖ ≤ C)
    (h_lim : ∀ᵐ ω ∂μ, Tendsto (fun n => F n ω) l (𝓝 (f ω))) :
    Tendsto (fun n => setToFun μ T hT (F n)) l (𝓝 (setToFun μ T hT f)) := by
  obtain ⟨c, h_boundc⟩ := h_bound
  let C : α → ℝ := (fun _ => c)
  exact tendsto_setToFun_filter_of_dominated_convergence hT
    C h_meas h_boundc (integrable_const c) h_lim

omit [NormedSpace ℝ E] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed7dd78b7ebd13ab9f4889e53465bc20dddb734a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
