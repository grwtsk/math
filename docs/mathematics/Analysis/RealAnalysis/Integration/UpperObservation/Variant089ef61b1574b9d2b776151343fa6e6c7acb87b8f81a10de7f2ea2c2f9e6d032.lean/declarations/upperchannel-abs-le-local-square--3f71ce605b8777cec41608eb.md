# upperChannel_abs_le_local_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0ab80b9-af1c-361e-14d9-5e1c1862e6d6",
  "kind": "theorem",
  "lexical_name": "upperChannel_abs_le_local_square",
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
  "slug": "upperchannel-abs-le-local-square--3f71ce605b8777cec41608eb",
  "source": {
    "blob": "3d2cec1e309de74de028b495c9b5e185250e2040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 335,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f71ce605b8777cec41608ebff795e760e45cd604d1466590c2aa0990f9ce9d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0ab80b9-af1c-361e-14d9-5e1c1862e6d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperChannel_abs_le_local_square (A : ℝ) (k : ℕ) (hA : 1 ≤ A) (hk : 2 ≤ k) :
    |UpperBoundaryChannels.upperChannel A k| ≤ Real.log (k : ℝ) / Real.sqrt k *
      ∫ x : ℝ in Set.Icc 0 (Real.log 2),
        (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2 := by
  have hk1 : (1 : ℝ) ≤ k := by exact_mod_cast (show 1 ≤ k by omega)
  have hcoef : 0 ≤ Real.log (k : ℝ) / Real.sqrt k :=
    div_nonneg (Real.log_nonneg hk1) (Real.sqrt_nonneg _)
  rw [upperChannel_eq_reflection A k hA (by omega), abs_mul, abs_of_nonneg hcoef]
  exact mul_le_mul_of_nonneg_left
    (upper_reflection_abs_le_local_square A (Real.log k) hA
      (Real.log_le_log (by norm_num) (by exact_mod_cast hk))) hcoef

/-- The actual Q retains its whole core, with both original upper channels bounded faithfully. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant089ef61b1574b9d2b776151343fa6e6c7acb87b8f81a10de7f2ea2c2f9e6d032.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2cec1e309de74de028b495c9b5e185250e2040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
