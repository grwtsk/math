# Filter.Tendsto.subseq_mem_entourage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dc844d9-554d-b2e9-332b-f313d3f63f33",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.subseq_mem_entourage",
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
  "slug": "filter-tendsto-subseq-mem-entourage--7033f4635425c8d94910fce6",
  "source": {
    "blob": "8d844b674942d472920dc2e03d2c80465cc96dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 305,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7033f4635425c8d94910fce626bd6f5be1959427ebd07fdf4a052fa31382d31e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dc844d9-554d-b2e9-332b-f313d3f63f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.subseq_mem_entourage {V : ℕ → Set (α × α)} (hV : ∀ n, V n ∈ 𝓤 α) {u : ℕ → α}
    {a : α} (hu : Tendsto u atTop (𝓝 a)) : ∃ φ : ℕ → ℕ, StrictMono φ ∧ (u (φ 0), a) ∈ V 0 ∧
      ∀ n, (u <| φ (n + 1), u <| φ n) ∈ V (n + 1) := by
  rcases mem_atTop_sets.1 (hu (ball_mem_nhds a (symm_le_uniformity <| hV 0))) with ⟨n, hn⟩
  rcases (hu.comp (tendsto_add_atTop_nat n)).cauchySeq.subseq_mem fun n => hV (n + 1) with
    ⟨φ, φ_mono, hφV⟩
  exact ⟨fun k => φ k + n, φ_mono.add_const _, hn _ le_add_self, hφV⟩
#align filter.tendsto.subseq_mem_entourage Filter.Tendsto.subseq_mem_entourage

/-- If a Cauchy sequence has a convergent subsequence, then it converges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d844b674942d472920dc2e03d2c80465cc96dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
