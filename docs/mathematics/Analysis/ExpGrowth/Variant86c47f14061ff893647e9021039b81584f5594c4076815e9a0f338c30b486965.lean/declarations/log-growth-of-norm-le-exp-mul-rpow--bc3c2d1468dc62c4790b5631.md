# log_growth_of_norm_le_exp_mul_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:931a8ccb-5e4b-affc-6524-eb024f087f33",
  "kind": "theorem",
  "lexical_name": "log_growth_of_norm_le_exp_mul_rpow",
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
  "slug": "log-growth-of-norm-le-exp-mul-rpow--bc3c2d1468dc62c4790b5631",
  "source": {
    "blob": "0328f527a7bb75523687c736a2c311f2c731a58f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 109,
    "path": "GRWTSK/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc3c2d1468dc62c4790b56315679d34c0bfad21a33e5c2f60e21691a83185448",
  "verification": {
    "reference": "docs/verification/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:931a8ccb-5e4b-affc-6524-eb024f087f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_growth_of_norm_le_exp_mul_rpow
    {f : α → E} {r : α → ℝ} {C τ : ℝ} (hC : 0 < C) (hτ : 0 ≤ τ)
    (hr : ∀ x, 1 ≤ r x) (hbound : ∀ x, ‖f x‖ ≤ Real.exp (C * (r x) ^ τ)) :
    ∃ C' > 0, ∀ x, Real.log (1 + ‖f x‖) ≤ C' * (r x) ^ τ := by
  refine ⟨C + Real.log 2, by
    have hlog2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
    linarith, ?_⟩
  intro x
  have hX : (1 : ℝ) ≤ (r x) ^ τ := Real.one_le_rpow (hr x) hτ
  have hB : 0 ≤ C * (r x) ^ τ :=
    mul_nonneg hC.le (Real.rpow_nonneg (le_trans zero_le_one (hr x)) _)
  have hlog :
      Real.log (1 + ‖f x‖) ≤ C * (r x) ^ τ + Real.log 2 :=
    Real.log_one_add_le_add_log_two_of_le_exp (norm_nonneg _) hB (hbound x)
  have hlog2_nonneg : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  nlinarith [hlog, hX, hlog2_nonneg]

/-- A pointwise exponential bound with real exponent can be weakened to a natural exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ExpGrowth/Variant86c47f14061ff893647e9021039b81584f5594c4076815e9a0f338c30b486965.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0328f527a7bb75523687c736a2c311f2c731a58f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
