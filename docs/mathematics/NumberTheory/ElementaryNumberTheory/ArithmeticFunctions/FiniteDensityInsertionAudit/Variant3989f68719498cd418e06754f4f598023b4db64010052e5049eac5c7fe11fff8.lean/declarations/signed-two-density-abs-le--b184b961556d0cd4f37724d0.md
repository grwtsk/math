# signed_two_density_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72b897b9-cac1-c19f-8267-09d49e7faa5c",
  "kind": "theorem",
  "lexical_name": "signed_two_density_abs_le",
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
  "slug": "signed-two-density-abs-le--b184b961556d0cd4f37724d0",
  "source": {
    "blob": "2b20d07e9f1957b1a561ded3b6c086a9bf30e4c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 196,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b184b961556d0cd4f37724d011c7c9096cc29b82e704f46a45888a6d43ff80db",
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

Occurrence: `result:72b897b9-cac1-c19f-8267-09d49e7faa5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_two_density_abs_le (h D : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D| ≤
      (1/16:ℝ) * |SquarefreeCount.finiteSquarefreeDensity h D| +
      Real.sqrt 2 / (2 * (D:ℝ)) := by
  calc
    _ ≤ |twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| +
        |SquarefreeCount.finiteSquarefreeDensity h D -
          Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
          twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| := by
      convert abs_add_le
        (twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D)
        (SquarefreeCount.finiteSquarefreeDensity h D -
          Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
          twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D) using 1
      congr 1
      ring
    _ ≤ _ := by
      rw [abs_mul, abs_of_nonneg twoDensityFactor_bounds.1]
      exact add_le_add (mul_le_mul_of_nonneg_right twoDensityFactor_bounds.2 (abs_nonneg _))
        (signed_two_density_error_le h D hh hh1 hD)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variant3989f68719498cd418e06754f4f598023b4db64010052e5049eac5c7fe11fff8.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b20d07e9f1957b1a561ded3b6c086a9bf30e4c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
