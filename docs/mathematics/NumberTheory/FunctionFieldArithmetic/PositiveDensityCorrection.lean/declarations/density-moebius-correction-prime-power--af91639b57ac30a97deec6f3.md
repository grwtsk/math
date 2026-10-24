# density_moebius_correction_prime_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b957ea4a-f87d-7e10-6953-5b6f0bcece23",
  "kind": "theorem",
  "lexical_name": "density_moebius_correction_prime_power",
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
  "slug": "density-moebius-correction-prime-power--af91639b57ac30a97deec6f3",
  "source": {
    "blob": "16f0355f3d892208825765ad0b05560b40590944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 39,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af91639b57ac30a97deec6f3fe66d9fd831ecc65b3bbe9294eada7135a591b24",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b957ea4a-f87d-7e10-6953-5b6f0bcece23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_moebius_correction_prime_power {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    densityMoebiusCorrection (p ^ k) = 1 / ((p : ℝ) + 1) := by
  induction k with
  | zero => exact False.elim (hk rfl)
  | succ k ih =>
    by_cases hk0 : k = 0
    · subst k
      simpa using density_moebius_correction_prime hp
    · rw [density_moebius_correction_divisors, Nat.sum_divisors_prime_pow hp,
        Finset.sum_range_succ, ← Nat.sum_divisors_prime_pow hp,
        ← density_moebius_correction_divisors, ih hk0,
        density_coefficient_prime_power hp (Nat.succ_ne_zero k), if_neg (by omega)]
      simp

/-- Global finite coefficient bounds, including the zero input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16f0355f3d892208825765ad0b05560b40590944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
