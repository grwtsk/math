# Metric.uniformCauchySeqOn_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f8127d0-09d3-304f-52c3-aebed4446488",
  "kind": "theorem",
  "lexical_name": "Metric.uniformCauchySeqOn_iff",
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
  "slug": "metric-uniformcauchyseqon-iff--79f3bb0ce32fc365031de449",
  "source": {
    "blob": "5ba8c647f38ac8be65be37d8efb559c9d2788fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1562,
    "line": 1539,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79f3bb0ce32fc365031de449e87bd39e494bc16380f57c4c24a9426e4fba9f1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f8127d0-09d3-304f-52c3-aebed4446488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1539–1562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Metric.uniformCauchySeqOn_iff {γ : Type*} {F : β → γ → α} {s : Set γ} :
    UniformCauchySeqOn F atTop s ↔ ∀ ε > (0 : ℝ),
      ∃ N : β, ∀ m ≥ N, ∀ n ≥ N, ∀ x ∈ s, dist (F m x) (F n x) < ε := by
  constructor
  · intro h ε hε
    let u := { a : α × α | dist a.fst a.snd < ε }
    have hu : u ∈ 𝓤 α := Metric.mem_uniformity_dist.mpr ⟨ε, hε, by simp⟩
    rw [← @Filter.eventually_atTop_prod_self' _ _ _ fun m =>
      ∀ x ∈ s, dist (F m.fst x) (F m.snd x) < ε]
    specialize h u hu
    rw [prod_atTop_atTop_eq] at h
    exact h.mono fun n h x hx => h x hx
  · intro h u hu
    rcases Metric.mem_uniformity_dist.mp hu with ⟨ε, hε, hab⟩
    rcases h ε hε with ⟨N, hN⟩
    rw [prod_atTop_atTop_eq, eventually_atTop]
    use (N, N)
    intro b hb x hx
    rcases hb with ⟨hbl, hbr⟩
    exact hab (hN b.fst hbl.ge b.snd hbr.ge x hx)
#align metric.uniform_cauchy_seq_on_iff Metric.uniformCauchySeqOn_iff

/-- If the distance between `s n` and `s m`, `n ≤ m` is bounded above by `b n`
and `b` converges to zero, then `s` is a Cauchy sequence.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean#L1539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba8c647f38ac8be65be37d8efb559c9d2788fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
