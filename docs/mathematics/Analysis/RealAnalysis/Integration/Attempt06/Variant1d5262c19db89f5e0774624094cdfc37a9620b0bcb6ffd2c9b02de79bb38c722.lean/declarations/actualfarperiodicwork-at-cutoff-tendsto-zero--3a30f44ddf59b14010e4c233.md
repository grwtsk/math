# actualFarPeriodicWork_at_cutoff_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bd321d0-d2a0-546f-e0d0-958bd13aae6e",
  "kind": "theorem",
  "lexical_name": "actualFarPeriodicWork_at_cutoff_tendsto_zero",
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
  "slug": "actualfarperiodicwork-at-cutoff-tendsto-zero--3a30f44ddf59b14010e4c233",
  "source": {
    "blob": "228f35d6e15999a175864383c6f525fe6580cca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 392,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant1d5262c19db89f5e0774624094cdfc37a9620b0bcb6ffd2c9b02de79bb38c722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a30f44ddf59b14010e4c2335365751f85f8812ae726affa022ce6d3d3d047f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt06/Variant1d5262c19db89f5e0774624094cdfc37a9620b0bcb6ffd2c9b02de79bb38c722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bd321d0-d2a0-546f-e0d0-958bd13aae6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFarPeriodicWork_at_cutoff_tendsto_zero :
    Tendsto (fun A : ℝ => actualFarPeriodicWork A (actualFarPeriodicCutoff A))
      atTop (𝓝 (0 : ℝ)) := by
  have he : Tendsto (fun A : ℝ => 4 * (Real.log 4 + 4 + Real.log 2) / A ^ 4)
      atTop (𝓝 (0 : ℝ)) := by
    have hi : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0 : ℝ)) := tendsto_inv_atTop_zero
    have hh := (hi.pow 4).const_mul (4 * (Real.log 4 + 4 + Real.log 2))
    simpa only [div_eq_mul_inv, inv_pow, zero_pow (by norm_num : 4 ≠ 0), mul_zero] using hh
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall (fun _ => abs_nonneg _)) _ he
  filter_upwards [eventually_ge_atTop (25600 : ℝ)] with A hA
  exact actualFarPeriodicWork_at_cutoff_abs_le hA

/-- The definition is exactly the original time/log pairing on the genuine far window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt06/Variant1d5262c19db89f5e0774624094cdfc37a9620b0bcb6ffd2c9b02de79bb38c722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Variant1d5262c19db89f5e0774624094cdfc37a9620b0bcb6ffd2c9b02de79bb38c722.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228f35d6e15999a175864383c6f525fe6580cca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
