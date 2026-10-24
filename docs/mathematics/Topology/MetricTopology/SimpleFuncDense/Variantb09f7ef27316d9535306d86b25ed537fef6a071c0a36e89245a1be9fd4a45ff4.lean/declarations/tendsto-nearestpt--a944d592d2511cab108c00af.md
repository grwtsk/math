# tendsto_nearestPt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c82ca44-4ff7-c6c6-659b-577c722b6c10",
  "kind": "theorem",
  "lexical_name": "tendsto_nearestPt",
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
  "slug": "tendsto-nearestpt--a944d592d2511cab108c00af",
  "source": {
    "blob": "c6d89689f908d86b05fc4e444cfe9fc2173ce05f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a944d592d2511cab108c00aff990ca6e61a9482ed8138da7a0a28e78d8b9a6c4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c82ca44-4ff7-c6c6-659b-577c722b6c10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nearestPt {e : ℕ → α} {x : α} (hx : x ∈ closure (range e)) :
    Tendsto (fun N => nearestPt e N x) atTop (𝓝 x) := by
  refine' (atTop_basis.tendsto_iff nhds_basis_eball).2 fun ε hε => _
  rcases EMetric.mem_closure_iff.1 hx ε hε with ⟨_, ⟨N, rfl⟩, hN⟩
  rw [edist_comm] at hN
  exact ⟨N, trivial, fun n hn => (edist_nearestPt_le e x hn).trans_lt hN⟩
#align measure_theory.simple_func.tendsto_nearest_pt MeasureTheory.SimpleFunc.tendsto_nearestPt

variable [MeasurableSpace β] {f : β → α}

/-- Approximate a measurable function by a sequence of simple functions `F n` such that
`F n x ∈ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6d89689f908d86b05fc4e444cfe9fc2173ce05f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
