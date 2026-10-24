# signed_two_density_natural_cutoffs_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b64085ce8ec7dc6fe8bbe5788518cffd1589c26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba877717-69e5-f101-c6d3-0fbb2e41569f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18522b52-a779-3f58-f496-68b7bc534b86",
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
  "slug": "signed-two-density-natural-cutoffs-error-le--3008d0824832f894dc636f66",
  "source": {
    "blob": "0b64085ce8ec7dc6fe8bbe5788518cffd1589c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 244,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3008d0824832f894dc636f66d95684d30a6888708b2d784272525ff77934cf55",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18522b52-a779-3f58-f496-68b7bc534b86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–289.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b64085ce8ec7dc6fe8bbe5788518cffd1589c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
