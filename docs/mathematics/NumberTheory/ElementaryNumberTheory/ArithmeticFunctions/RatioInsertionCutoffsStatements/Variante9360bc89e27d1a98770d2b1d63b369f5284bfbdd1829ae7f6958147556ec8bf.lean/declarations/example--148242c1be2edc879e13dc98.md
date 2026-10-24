# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcecd2f66b00a1aa1b7bb9cf4733c6b4a74789ce73f549dc373d08ba7b6c33e4",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--148242c1be2edc879e13dc98",
  "source": {
    "blob": "1bca73e1c0ed3fe670d6108c3ba20b9b2c0fc70f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 307,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:148242c1be2edc879e13dc98c91df79e6e228af75b5644e012590e518a911e6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcecd2f66b00a1aa1b7bb9cf4733c6b4a74789ce73f549dc373d08ba7b6c33e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (h : ℕ) (a b c : ℝ)
    (hh : 1 ≤ h) (hodd : Nat.Coprime 2 h) :
    (ArithmeticFunction.moebius h : ℝ) * a / Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * b / Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * c / Real.sqrt ((2*h:ℕ):ℝ) =
      ((ArithmeticFunction.moebius h : ℝ) / Real.sqrt (h:ℝ)) *
        (a - (Real.sqrt 2/2)*(b+c)) := by
  exact RatioInsertionCutoffsScratch.actual_two_density_coefficient_eq h a b c hh hodd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bca73e1c0ed3fe670d6108c3ba20b9b2c0fc70f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
