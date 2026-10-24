# readout_enclosure_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3e8b725-6592-d3ed-af0d-c4c6aa33ec4b",
  "kind": "theorem",
  "lexical_name": "readout_enclosure_bound",
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
  "slug": "readout-enclosure-bound--41d7150fe5118146d59037e2",
  "source": {
    "blob": "846a9ca65b8d8fda4bd372950e75e0bc69c4e3cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 90,
    "path": "GRWTSK/Analysis/ErrorBounds/EnclosedGramReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41d7150fe5118146d59037e2aba3b7cb17e76343157bc4dbbab56ba89afa5ebc",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/EnclosedGramReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3e8b725-6592-d3ed-af0d-c4c6aa33ec4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readout_enclosure_bound (weight : ι → ℝ) (test center : ι → ℂ)
    (H matrixCenter : ι × ι → ℂ) (centerEntryBound entryRadius : ι × ι → ℝ) (eta : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (etaNonnegative : 0 ≤ eta)
    (centerBound : ∀ i, ‖center i‖ ≤ weight i)
    (vectorError : ∀ i, ‖test i - center i‖ ≤ eta * weight i)
    (centerEntries : ∀ p, ‖matrixCenter p‖ ≤ centerEntryBound p)
    (matrixEntries : ∀ p, ‖H p - matrixCenter p‖ ≤ entryRadius p) :
    ‖complexReadout test H - complexReadout center matrixCenter‖ ≤
      enclosureError eta (entryMajorant weight centerEntryBound) (entryMajorant weight entryRadius) := by
  have centerMass := modulusMass_le_entryMajorant weight matrixCenter centerEntryBound
    weightsNonnegative centerEntries
  have matrixMass := modulusMass_le_entryMajorant weight (fun p => H p - matrixCenter p)
    entryRadius weightsNonnegative matrixEntries
  have correctionNonnegative : 0 ≤ 2 * eta + eta * eta :=
    add_nonneg (mul_nonneg (by norm_num) etaNonnegative) (mul_nonneg etaNonnegative etaNonnegative)
  have scaleNonnegative : 0 ≤ 1 + eta := by linarith
  have correction := (readoutCorrection_modulus_bound weight center
    (fun i => test i - center i) matrixCenter eta weightsNonnegative etaNonnegative
    centerBound vectorError).trans (mul_le_mul_of_nonneg_left centerMass correctionNonnegative)
  have matrixTerm : ‖complexReadout test (fun p => H p - matrixCenter p)‖ ≤
      ((1 + eta) * (1 + eta)) * modulusMass (pairWeight weight)
        (fun p => H p - matrixCenter p) :=
    mixed_readout_modulus_bound weight test test (fun p => H p - matrixCenter p)
      (1 + eta) (1 + eta) weightsNonnegative scaleNonnegative scaleNonnegative
      (enclosed_test_bound weight test center eta centerBound vectorError)
      (enclosed_test_bound weight test center eta centerBound vectorError)
  have matrixBound := matrixTerm.trans (mul_le_mul_of_nonneg_left matrixMass
    (mul_nonneg scaleNonnegative scaleNonnegative))
  rw [readout_uncertainty_identity]
  exact (norm_add_le _ _).trans (add_le_add correction matrixBound)

/-- Numerical evaluation of the center gets its OWN error; it is not treated as exact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/EnclosedGramReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/EnclosedGramReadout.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846a9ca65b8d8fda4bd372950e75e0bc69c4e3cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
