# prime_free_forces_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8051632d-44b4-852e-01d1-3d3a47b3fd95",
  "kind": "theorem",
  "lexical_name": "prime_free_forces_error",
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
  "slug": "prime-free-forces-error--fa2a4c1da9c5e870cf2f3ea6",
  "source": {
    "blob": "86278ca72089e9548adc0c70ad99f03a0146e742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 132,
    "path": "GRWTSK/NumberTheory/Chebyshev/LegendreLogBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa2a4c1da9c5e870cf2f3ea620d391a0cae4a611fc3b28e35b084084c5a6ec09",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8051632d-44b4-852e-01d1-3d3a47b3fd95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_free_forces_error (n : ℕ) (hn : 1 ≤ n) (A : ℝ)
    (hzero : squareCount n = 0) :
    A - squareCorrectionBudget n ≤ |squareIncrement n - A| := by
  have htheta := (squarePrimeIncrement_eq_zero_iff_count_zero n).mpr hzero
  have hsource := squareIncrement_decomposition n hn
  rw [htheta, zero_add] at hsource
  have hupper := higherPrimePowerMass_le_log_budget n hn
  change higherPrimePowerMass n ≤ squareCorrectionBudget n at hupper
  have habs := neg_le_abs (squareIncrement n - A)
  linarith

/-- An actual error upper bound on a prime-free interval cannot pass the strict margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/LegendreLogBudget.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86278ca72089e9548adc0c70ad99f03a0146e742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
