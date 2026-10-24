# signed_two_density_cutoffs_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dd631df-a84d-3430-53a8-925b4f0e6982",
  "kind": "theorem",
  "lexical_name": "signed_two_density_cutoffs_error_le",
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
  "slug": "signed-two-density-cutoffs-error-le--b1c4ff3e007387925dd7cfd3",
  "source": {
    "blob": "2b20d07e9f1957b1a561ded3b6c086a9bf30e4c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 219,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1c4ff3e007387925dd7cfd3438c8e123e9fc2b26267d114b5bffb929ed7cd52",
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

Occurrence: `result:7dd631df-a84d-3430-53a8-925b4f0e6982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_two_density_cutoffs_error_le (h Y Z : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hY : 2 ≤ Y) (hYZ : Y ≤ Z) :
    |SquarefreeCount.finiteSquarefreeDensity h Z -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
      twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Z| ≤
      7 * Real.sqrt 2 / (6 * (Y:ℝ)) := by
  have htail : |SquarefreeCount.finiteSquarefreeDensity h Z -
      SquarefreeCount.finiteSquarefreeDensity h Y| ≤ 1/(Y:ℝ) :=
    (SquarefreeCount.finiteSquarefreeDensity_difference_le h Y Z hh1 hYZ).trans
      (ReciprocalSquareTail.reciprocal_square_tail_le Y Z (by omega) hYZ)
  have heq : SquarefreeCount.finiteSquarefreeDensity h Z -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
      twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Z =
      (SquarefreeCount.finiteSquarefreeDensity h Y -
        Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
        twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Y) +
      (2*Real.sqrt 2/3) * (SquarefreeCount.finiteSquarefreeDensity h Z -
        SquarefreeCount.finiteSquarefreeDensity h Y) := by
    rw [twoDensityFactor_eq]
    ring
  rw [heq]
  calc
    _ ≤ |SquarefreeCount.finiteSquarefreeDensity h Y -
        Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
        twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Y| +
        |(2*Real.sqrt 2/3) * (SquarefreeCount.finiteSquarefreeDensity h Z -
          SquarefreeCount.finiteSquarefreeDensity h Y)| := abs_add_le _ _
    _ ≤ Real.sqrt 2/(2*(Y:ℝ)) + (2*Real.sqrt 2/3)*(1/(Y:ℝ)) := by
      rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2*Real.sqrt (2:ℝ)/3)]
      exact add_le_add (signed_two_density_error_le h Y hh hh1 hY)
        (mul_le_mul_of_nonneg_left htail (by positivity))
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b20d07e9f1957b1a561ded3b6c086a9bf30e4c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
