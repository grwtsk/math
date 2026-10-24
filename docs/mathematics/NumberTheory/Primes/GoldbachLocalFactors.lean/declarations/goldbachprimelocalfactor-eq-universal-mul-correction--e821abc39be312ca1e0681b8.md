# goldbachPrimeLocalFactor_eq_universal_mul_correction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07997952-9199-bca5-dfe5-33ad56ed6ca4",
  "kind": "theorem",
  "lexical_name": "goldbachPrimeLocalFactor_eq_universal_mul_correction",
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
  "slug": "goldbachprimelocalfactor-eq-universal-mul-correction--e821abc39be312ca1e0681b8",
  "source": {
    "blob": "4d745b1f5ccd40bc24a917de4b604ab4626481be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 165,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachLocalFactors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e821abc39be312ca1e0681b8b3e526240b778593f6c9a385dd48f8eed20a6549",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachLocalFactors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07997952-9199-bca5-dfe5-33ad56ed6ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachPrimeLocalFactor_eq_universal_mul_correction {p N : ℕ}
    (hp : Nat.Prime p) (hp2 : p ≠ 2) :
    goldbachPrimeLocalFactor p N =
      goldbachUniversalOddFactor p * goldbachDivisorCorrection p N := by
  have hpgt : 2 < p := lt_of_le_of_ne hp.two_le (Ne.symm hp2)
  have hpq : (2 : ℚ) < (p : ℚ) := by exact_mod_cast hpgt
  have hsub1 : (p : ℚ) - 1 ≠ 0 := by linarith
  have hsub2 : (p : ℚ) - 2 ≠ 0 := by linarith
  rw [goldbachPrimeLocalFactor_formula hp]
  by_cases hdiv : p ∣ N
  · rw [if_pos hdiv, goldbachUniversalOddFactor,
      goldbachDivisorCorrection, if_pos hdiv,
      Nat.cast_sub hp.one_le, Nat.cast_sub hp.two_le]
    field_simp [hsub1, hsub2] <;> ring
  · simp [hdiv, goldbachUniversalOddFactor, goldbachDivisorCorrection]

/-- A finite prime set carries the exact product of its normalized local
density ratios. This is not an infinite singular series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachLocalFactors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachLocalFactors.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d745b1f5ccd40bc24a917de4b604ab4626481be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
