# typeTwoDiagonal_tail_error_of_proper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9071dac2-2f88-0314-1047-992e76d9c445",
  "kind": "theorem",
  "lexical_name": "typeTwoDiagonal_tail_error_of_proper_bound",
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
  "slug": "typetwodiagonal-tail-error-of-proper-bound--3cb2fed9b6770216e1150f68",
  "source": {
    "blob": "432b5dc62fbddf5a9c275728b4a3f94de65a094b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 263,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant2f45663a3e980d7b15b0fdd119e3cc60cee7694f9e2145c073451b630010d934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cb2fed9b6770216e1150f6815be9c33b86024c342af7fa96e06be24e8a5dc67",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant2f45663a3e980d7b15b0fdd119e3cc60cee7694f9e2145c073451b630010d934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9071dac2-2f88-0314-1047-992e76d9c445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoDiagonal_tail_error_of_proper_bound (CM : ℝ) (hCM0 : 0 ≤ CM)
    (hCM : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ CM)
    {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) (g : ℝ)
    (hproper : |typeTwoDiagonal A - retainedPrimeDiagonal A| ≤ g) :
    |typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤
      g + CM * (1 + 2 * Real.sqrt (tailEnergyCoefficient Q)) +
        16 * tailEnergyCoefficient Q * Real.log Q ^ 3 / (3 * Q ^ 2) := by
  have hp := retainedPrimeDiagonal_tail_error_of_primeLogError CM hCM0 hCM hQ hQA
  calc
    _ = |(typeTwoDiagonal A - retainedPrimeDiagonal A) +
        (retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
          Real.log (⌊A ^ 2⌋₊ : ℝ))| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ _ := by linarith [add_le_add hproper hp]

/-- Existing proper-power control gives an unconditional native full diagonal tail cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant2f45663a3e980d7b15b0fdd119e3cc60cee7694f9e2145c073451b630010d934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpDiagonalTail/Variant2f45663a3e980d7b15b0fdd119e3cc60cee7694f9e2145c073451b630010d934.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `432b5dc62fbddf5a9c275728b4a3f94de65a094b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
