# isPowMul_smoothingFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79ce19e3-1c8a-9f65-e6a7-3f2ed189548b",
  "kind": "theorem",
  "lexical_name": "isPowMul_smoothingFun",
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
  "slug": "ispowmul-smoothingfun--f4171c5403d82535e6df5f78",
  "source": {
    "blob": "78335489fe106e5b36b836341da5d119cb2a2e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 560,
    "path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4171c5403d82535e6df5f785e0b4049295dfa5f849a43f1f23baece14d16f86",
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

Occurrence: `result:79ce19e3-1c8a-9f65-e6a7-3f2ed189548b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPowMul_smoothingFun (hμ1 : μ 1 ≤ 1) : IsPowMul (smoothingFun μ) := by
  intro x m hm
  have hlim : Tendsto (fun n => smoothingSeminormSeq μ x (m * n)) atTop
      (𝓝 (smoothingFun μ x)) :=
    Tendsto.comp (tendsto_smoothingFun_of_map_one_le_one μ hμ1 x) (tendsto_atTop_atTop_of_monotone
      (fun n k hnk ↦ mul_le_mul_left' hnk m) (fun n ↦ ⟨n, le_mul_of_one_le_left' hm⟩))
  apply tendsto_nhds_unique _ (Tendsto.pow hlim m)
  have h_eq (n : ℕ) : smoothingSeminormSeq μ x (m * n) ^ m = smoothingSeminormSeq μ (x ^ m) n := by
    have hm' : (m : ℝ) ≠ 0 := cast_ne_zero.mpr (_root_.ne_of_gt (lt_of_lt_of_le zero_lt_one hm))
    simp only [smoothingSeminormSeq]
    rw [pow_mul, ← rpow_natCast, ← rpow_mul (apply_nonneg μ _), cast_mul, ← one_div_mul_one_div,
      mul_comm (1 / (m : ℝ)), mul_assoc, one_div_mul_cancel hm', mul_one]
  simpa [h_eq] using tendsto_smoothingFun_of_map_one_le_one μ hμ1 _

/-- If `μ 1 ≤ 1` and `∀ (1 ≤ n), μ (x ^ n) = μ x ^ n`, then `smoothingFun μ x = μ x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78335489fe106e5b36b836341da5d119cb2a2e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
