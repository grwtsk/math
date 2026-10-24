# signed_two_density_natural_cutoffs_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79e9959f-dcd5-b352-22c6-7334e830a051",
  "kind": "theorem",
  "lexical_name": "signed_two_density_natural_cutoffs_error_le",
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
  "slug": "signed-two-density-natural-cutoffs-error-le--dc20b2cbcee2f3b44354be78",
  "source": {
    "blob": "2b20d07e9f1957b1a561ded3b6c086a9bf30e4c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 252,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc20b2cbcee2f3b44354be78f28e7feefc4e1d5623a50fa6fea707e941e4d35b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79e9959f-dcd5-b352-22c6-7334e830a051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_two_density_natural_cutoffs_error_le (h N : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hN : 8 ≤ N) :
    |SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt N) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) (Nat.sqrt (N/2)) -
      twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt N)| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N/2):ℝ)) := by
  exact signed_two_density_cutoffs_error_le h (Nat.sqrt (N/2)) (Nat.sqrt N) hh hh1
    (Nat.le_sqrt.mpr (by omega)) (Nat.sqrt_le_sqrt (Nat.div_le_self N 2))

end
end FiniteDensityInsertionScratch

#print FiniteDensityInsertionScratch.coprimeReciprocalSquareSum
#print axioms FiniteDensityInsertionScratch.coprimeReciprocalSquareSum
#print FiniteDensityInsertionScratch.coprimeDensity_mul
#print axioms FiniteDensityInsertionScratch.coprimeDensity_mul
#print FiniteDensityInsertionScratch.coprimeDensity_two
#print axioms FiniteDensityInsertionScratch.coprimeDensity_two
#print FiniteDensityInsertionScratch.coprimeDensity_two_mul
#print axioms FiniteDensityInsertionScratch.coprimeDensity_two_mul
#print FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_two_split
#print axioms FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_two_split
#print FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_difference
#print axioms FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_difference
#print FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_eq
#print axioms FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_eq
#print FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_tail_abs_le
#print axioms FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_tail_abs_le
#print FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_le_half_cutoff
#print axioms FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_le_half_cutoff
#print FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_le
#print axioms FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_le
#print FiniteDensityInsertionScratch.twoDensityFactor
#print axioms FiniteDensityInsertionScratch.twoDensityFactor
#print FiniteDensityInsertionScratch.twoDensityFactor_eq
#print axioms FiniteDensityInsertionScratch.twoDensityFactor_eq
#print FiniteDensityInsertionScratch.twoDensityFactor_bounds
#print axioms FiniteDensityInsertionScratch.twoDensityFactor_bounds
#print FiniteDensityInsertionScratch.signed_two_density_error_le
#print axioms FiniteDensityInsertionScratch.signed_two_density_error_le
#print FiniteDensityInsertionScratch.signed_two_density_abs_le
#print axioms FiniteDensityInsertionScratch.signed_two_density_abs_le
#print FiniteDensityInsertionScratch.signed_two_density_cutoffs_error_le
#print axioms FiniteDensityInsertionScratch.signed_two_density_cutoffs_error_le
#print FiniteDensityInsertionScratch.signed_two_density_natural_cutoffs_error_le
#print axioms FiniteDensityInsertionScratch.signed_two_density_natural_cutoffs_error_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b20d07e9f1957b1a561ded3b6c086a9bf30e4c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
