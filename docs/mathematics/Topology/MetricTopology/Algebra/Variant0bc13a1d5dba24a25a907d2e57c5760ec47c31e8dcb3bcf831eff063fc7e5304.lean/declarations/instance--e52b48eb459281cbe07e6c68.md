# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42c684e6898a6ba8fdcd68daacdd8992e79799b70345d04ce9c55d51aa7cd3ae",
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
  "slug": "instance--e52b48eb459281cbe07e6c68",
  "source": {
    "blob": "a1668b25fcccf38fe31344d1ea1e3b60de07a122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 136,
    "path": "GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e52b48eb459281cbe07e6c68bba070fd50efa32ad0ef89e2de67363242c2b5f8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42c684e6898a6ba8fdcd68daacdd8992e79799b70345d04ce9c55d51aa7cd3ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsBoundedSMul.continuousSMul : ContinuousSMul α β where
  continuous_smul := by
    rw [Metric.continuous_iff]
    rintro ⟨a, b⟩ ε ε0
    obtain ⟨δ, δ0, hδε⟩ : ∃ δ > 0, δ * (δ + dist b 0) + dist a 0 * δ < ε := by
      have : Continuous fun δ ↦ δ * (δ + dist b 0) + dist a 0 * δ := by fun_prop
      refine ((this.tendsto' _ _ ?_).eventually (gt_mem_nhds ε0)).exists_gt
      simp
    refine ⟨δ, δ0, fun (a', b') hab' => ?_⟩
    obtain ⟨ha, hb⟩ := max_lt_iff.1 hab'
    calc dist (a' • b') (a • b)
        ≤ dist (a' • b') (a • b') + dist (a • b') (a • b) := dist_triangle ..
      _ ≤ dist a' a * dist b' 0 + dist a 0 * dist b' b :=
        add_le_add (dist_pair_smul _ _ _) (dist_smul_pair _ _ _)
      _ ≤ δ * (δ + dist b 0) + dist a 0 * δ := by
          have : dist b' 0 ≤ δ + dist b 0 := (dist_triangle _ _ _).trans <| add_le_add_right hb.le _
          gcongr
      _ < ε := hδε

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1668b25fcccf38fe31344d1ea1e3b60de07a122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
