# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cee51af322004b7a69bdcc951a81902205079e8a7f4a881088ea92715d49f64e",
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
  "slug": "example--68116e7bbc38d571db122d5e",
  "source": {
    "blob": "1bca73e1c0ed3fe670d6108c3ba20b9b2c0fc70f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 285,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68116e7bbc38d571db122d5ea618c034522b515c3a7eb81e5a5c33cd4d041eee",
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

Occurrence: `declaration:cee51af322004b7a69bdcc951a81902205079e8a7f4a881088ea92715d49f64e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    |SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max u (2*v))) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N / max u (2*v)):ℝ)) := by
  exact RatioInsertionCutoffsScratch.signed_two_density_right_cutoffs_error_le N u v hu hv hodd hG

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variante9360bc89e27d1a98770d2b1d63b369f5284bfbdd1829ae7f6958147556ec8bf.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bca73e1c0ed3fe670d6108c3ba20b9b2c0fc70f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
