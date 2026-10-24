# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46a2d0e6a46a4cd3954ad1063248d9a1f0a5e5c87831ae71ced923142c03d9f6",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3d78527fb2ef035fecbfba7a",
  "source": {
    "blob": "03142d34f0325766ea5b019559099dfa548589a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d78527fb2ef035fecbfba7aba674cbedf06a4ce9b6c80a672021bd51b9e0e11",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46a2d0e6a46a4cd3954ad1063248d9a1f0a5e5c87831ae71ced923142c03d9f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 50) discrete [TopologicalSpace X] [DiscreteTopology X] :
    IsCompletelyMetrizableSpace X := by
  classical
  let m : MetricSpace X :=
    { dist x y := if x = y then 0 else 1
      dist_self x := by simp
      dist_comm x y := by
        obtain h | h := eq_or_ne x y
        · simp [h]
        · simp [h, h.symm]
      dist_triangle x y z := by
        by_cases x = y <;> by_cases x = z <;> by_cases y = z <;> simp_all
      eq_of_dist_eq_zero := by simp }
  refine ⟨m, ?_, ?_⟩
  · rw [DiscreteTopology.eq_bot (α := X)]
    refine eq_bot_of_singletons_open fun x ↦ ?_
    convert @Metric.isOpen_ball _ _ x 1
    refine subset_antisymm (singleton_subset_iff.2 (Metric.mem_ball_self (by norm_num)))
      fun y hy ↦ ?_
    simp only [Metric.mem_ball, mem_singleton_iff] at *
    by_contra
    change (if y = x then 0 else 1) < 1 at hy
    simp_all
  · refine Metric.complete_of_cauchySeq_tendsto fun u hu ↦ ?_
    rw [Metric.cauchySeq_iff'] at hu
    obtain ⟨N, hN⟩ := hu 1 (by norm_num)
    refine ⟨u N, @tendsto_atTop_of_eventually_const X UniformSpace.toTopologicalSpace (u N) _ _ _ N
      fun n hn ↦ ?_⟩
    specialize hN n hn
    by_contra
    change (if u n = u N then 0 else 1) < 1 at hN
    simp_all

/-- A closed subset of a completely metrizable space is also completely metrizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyMetrizable/Variantae8203430971127007a90f74eecd1b9e03f1961746a8c0cbb09f3d7500bf5e78.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03142d34f0325766ea5b019559099dfa548589a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
