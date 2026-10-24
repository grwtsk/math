# primeOnlyFourierHead_le_full_add_higherPower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d6f9926-0eaa-a932-f711-f55f813735b4",
  "kind": "theorem",
  "lexical_name": "primeOnlyFourierHead_le_full_add_higherPower",
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
  "slug": "primeonlyfourierhead-le-full-add-higherpower--d1364cf71cde17fb02c588c8",
  "source": {
    "blob": "9e03ce3e7505050efbf02d0758083f5bab764205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 318,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1364cf71cde17fb02c588c8884976333cb1d65251fb21f596139f5ac7829e86",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d6f9926-0eaa-a932-f711-f55f813735b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeOnlyFourierHead_le_full_add_higherPower
    (X N : ℕ) :
    greenPrimeOnlyFourierHead X N ≤
      2 * greenArithmeticFourierHead X N +
        2 * higherPrimePowerFourierHead X N := by
  unfold greenArithmeticFourierHead
    greenPrimeOnlyFourierHead
    higherPrimePowerFourierHead
  calc
    (∑ n ∈ Finset.range N, greenPrimeOnlyFourierShellEnergy X n)
        ≤ ∑ n ∈ Finset.range N,
            (2 * greenArithmeticFourierShellEnergy X n +
              2 * higherPrimePowerFourierShellEnergy X n) := by
      apply Finset.sum_le_sum
      intro n hn
      exact primeOnlyFourierShell_le_full_add_higherPower X n
    _ = 2 * (∑ n ∈ Finset.range N, greenArithmeticFourierShellEnergy X n) +
        2 * (∑ n ∈ Finset.range N, higherPrimePowerFourierShellEnergy X n) := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum]

/-- Prime-only finite witness stage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e03ce3e7505050efbf02d0758083f5bab764205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
