# ofScalars_radius_eq_top_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3deafa5d-8d8e-9fb3-3a86-8d56353544eb",
  "kind": "theorem",
  "lexical_name": "ofScalars_radius_eq_top_of_tendsto",
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
  "slug": "ofscalars-radius-eq-top-of-tendsto--35339c2e80f4f970236414a3",
  "source": {
    "blob": "cd8213620e2323fee451a6e1328894e705281b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variante5dbbd57e031887993f7b4bacdb61c7fdae66ddb002538664df67b75c20b1508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35339c2e80f4f970236414a3fae892660f787f5a842cc3e8aefd94fb76ec5cf3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OfScalars/Variante5dbbd57e031887993f7b4bacdb61c7fdae66ddb002538664df67b75c20b1508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3deafa5d-8d8e-9fb3-3a86-8d56353544eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofScalars_radius_eq_top_of_tendsto (hc : ∀ᶠ n in atTop, c n ≠ 0)
    (hc' : Tendsto (fun n ↦ ‖c n.succ‖ / ‖c n‖) atTop (𝓝 0)) : (ofScalars E c).radius = ⊤ := by
  refine radius_eq_top_of_summable_norm _ fun r' ↦ ?_
  by_cases hrz : r' = 0
  · apply Summable.comp_nat_add (k := 1)
    simp [hrz]
  · refine Summable.of_norm_bounded_eventually (g := fun n ↦ ‖‖c n‖ * r' ^ n‖) ?_ ?_
    · apply summable_of_ratio_test_tendsto_lt_one zero_lt_one (hc.mp (Eventually.of_forall ?_))
      · simp only [norm_norm]
        exact mul_zero (_ : ℝ) ▸ tendsto_succ_norm_div_norm _ hrz (NNReal.coe_zero ▸ hc')
      · simp_all
    · filter_upwards [eventually_cofinite_ne 0] with n hn
      simp only [norm_mul, norm_norm, norm_pow, NNReal.norm_eq]
      gcongr
      exact ofScalars_norm_le E c n (Nat.pos_iff_ne_zero.mpr hn)

/-- If `‖c n.succ‖ / ‖c n‖` is unbounded, then the radius of convergence is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OfScalars/Variante5dbbd57e031887993f7b4bacdb61c7fdae66ddb002538664df67b75c20b1508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OfScalars/Variante5dbbd57e031887993f7b4bacdb61c7fdae66ddb002538664df67b75c20b1508.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd8213620e2323fee451a6e1328894e705281b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
