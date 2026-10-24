# affine_partition_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10eac946-ef48-2301-1c04-c3268386c421",
  "kind": "theorem",
  "lexical_name": "affine_partition_error",
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
  "slug": "affine-partition-error--9b877063676b230afd32bc2d",
  "source": {
    "blob": "a22d196a5aaf22cc7ef2665eda3f005f7ab2ef4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 104,
    "path": "GRWTSK/Analysis/Complex/TentMellinQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b877063676b230afd32bc2d38144aadc279a5eceaa0f1d849485865f9bbe5e2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10eac946-ef48-2301-1c04-c3268386c421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_partition_error (u : ℕ → ℝ) (N : ℕ) (hu : Monotone u)
    (ha : 1 < u 0) (α β : ℝ) {z : ℂ} (hz : z.re ≤ 2)
    (hw : ∀ i < N, ∀ t ∈ Icc (u i) (u (i + 1)), 0 ≤ α * t + β)
    (v : ℕ → ℂ) (e : ℕ → ℝ)
    (hv : ∀ i < N, ‖density z ((u i + u (i + 1)) / 2) - v i‖ ≤ e i) :
    ‖(∫ t in (u 0)..(u N), (α * t + β) • density z t) -
      ∑ i ∈ Finset.range N, affineMass α β (u i) (u (i + 1)) • v i‖ ≤
      ∑ i ∈ Finset.range N, affineMass α β (u i) (u (i + 1)) *
        (componentBound (z - 1) * (u (i + 1) - u i) / 2 + e i) := by
  have hc := intervalIntegral.sum_integral_adjacent_intervals
    (a := u) (n := N) (f := fun t => (α * t + β) • density z t) (μ := volume)
    (fun i _ => affine_density_integrable (ha.trans_le (hu (Nat.zero_le i)))
      (hu (Nat.le_succ i)) α β z)
  rw [← hc, ← Finset.sum_sub_distrib]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro i hi
  exact affine_cell_error (ha.trans_le (hu (Nat.zero_le i))) (hu (Nat.le_succ i)) hz
    (hw i (Finset.mem_range.mp hi)) (hv i (Finset.mem_range.mp hi))

/-- All nodes belong to the original parameter z, including both removable parameters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentMellinQuadrature.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a22d196a5aaf22cc7ef2665eda3f005f7ab2ef4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
