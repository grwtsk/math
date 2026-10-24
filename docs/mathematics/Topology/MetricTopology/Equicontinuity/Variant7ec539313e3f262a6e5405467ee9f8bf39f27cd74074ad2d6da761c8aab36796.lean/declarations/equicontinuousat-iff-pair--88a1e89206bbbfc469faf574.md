# equicontinuousAt_iff_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:788cdea8-7067-e952-00f2-8bd54f5c71c3",
  "kind": "theorem",
  "lexical_name": "equicontinuousAt_iff_pair",
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
  "slug": "equicontinuousat-iff-pair--88a1e89206bbbfc469faf574",
  "source": {
    "blob": "739d79e612d3dbbae5b489fb5940984a34bf1a2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 62,
    "path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a1e89206bbbfc469faf574d1bda93609dbc397704d26aaa3c0eacbfef4834e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:788cdea8-7067-e952-00f2-8bd54f5c71c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem equicontinuousAt_iff_pair {ι : Type*} [TopologicalSpace β] {F : ι → β → α}
    {x₀ : β} :
    EquicontinuousAt F x₀ ↔
      ∀ ε > 0, ∃ U ∈ 𝓝 x₀, ∀ x ∈ U, ∀ x' ∈ U, ∀ i, dist (F i x) (F i x') < ε := by
  rw [equicontinuousAt_iff_pair]
  constructor <;> intro H
  · intro ε hε
    exact H _ (dist_mem_uniformity hε)
  · intro U hU
    rcases mem_uniformity_dist.mp hU with ⟨ε, hε, hεU⟩
    refine Exists.imp (fun V => And.imp_right fun h => ?_) (H _ hε)
    exact fun x hx x' hx' i => hεU (h _ hx _ hx' i)

/-- Characterization of uniform equicontinuity for families of functions taking values in a
(pseudo) metric space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `739d79e612d3dbbae5b489fb5940984a34bf1a2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
