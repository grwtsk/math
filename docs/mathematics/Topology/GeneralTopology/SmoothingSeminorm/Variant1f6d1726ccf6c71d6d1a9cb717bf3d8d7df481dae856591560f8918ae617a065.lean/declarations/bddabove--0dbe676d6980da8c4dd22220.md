# μ_bddAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a527dea-e2c0-6440-3f2e-458ca3bfee2f",
  "kind": "theorem",
  "lexical_name": "μ_bddAbove",
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
  "slug": "bddabove--0dbe676d6980da8c4dd22220",
  "source": {
    "blob": "78335489fe106e5b36b836341da5d119cb2a2e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dbe676d6980da8c4dd22220fd1619d2c05d26847026964adf0ecf33eea4f00a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a527dea-e2c0-6440-3f2e-458ca3bfee2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem μ_bddAbove (hμ1 : μ 1 ≤ 1) {s : ℕ → ℕ} (hs : ∀ n : ℕ, s n ≤ n) (x : R)
    (ψ : ℕ → ℕ) : BddAbove (Set.range fun n : ℕ => μ (x ^ s (ψ n)) ^ (1 / (ψ n : ℝ))) := by
  have hψ : ∀ n, 0 ≤ 1 / (ψ n : ℝ) := fun _ ↦ by simp only [one_div, inv_nonneg, cast_nonneg]
  by_cases hx : μ x ≤ 1
  · use 1
    simp only [mem_upperBounds, Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff']
    rintro _ n rfl
    apply le_trans (rpow_le_rpow (apply_nonneg _ _) (map_pow_le_pow' hμ1 _ _) (hψ n))
    rw [← rpow_natCast, ← rpow_mul (apply_nonneg _ _), mul_one_div]
    exact rpow_le_one (apply_nonneg _ _) hx (div_nonneg (cast_nonneg _) (cast_nonneg _))
  · use μ x
    simp only [mem_upperBounds, Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff']
    rintro _ n rfl
    apply le_trans (rpow_le_rpow (apply_nonneg _ _) (map_pow_le_pow' hμ1 _ _) (hψ n))
    rw [← rpow_natCast, ← rpow_mul (apply_nonneg _ _), mul_one_div]
    conv_rhs => rw [← rpow_one (μ x)]
    rw [rpow_le_rpow_left_iff (not_le.mp hx)]
    exact div_le_one_of_le₀ (cast_le.mpr (hs (ψ n))) (cast_nonneg _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78335489fe106e5b36b836341da5d119cb2a2e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
