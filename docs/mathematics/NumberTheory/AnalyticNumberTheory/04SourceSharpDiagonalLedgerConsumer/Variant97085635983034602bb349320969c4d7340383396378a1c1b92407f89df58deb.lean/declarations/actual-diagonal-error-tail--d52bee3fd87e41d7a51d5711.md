# actual_diagonal_error_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f42c393f-9e95-1bdb-103a-807ccdc4bbc8",
  "kind": "theorem",
  "lexical_name": "actual_diagonal_error_tail",
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
  "slug": "actual-diagonal-error-tail--d52bee3fd87e41d7a51d5711",
  "source": {
    "blob": "70d9f17d7c7078289b5f23e0ca58f6283b5804e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/04SourceSharpDiagonalLedgerConsumer/Variant97085635983034602bb349320969c4d7340383396378a1c1b92407f89df58deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d52bee3fd87e41d7a51d57115bc4937cf1cb0c8bbf46ff33a6b42dd815d044bc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/04SourceSharpDiagonalLedgerConsumer/Variant97085635983034602bb349320969c4d7340383396378a1c1b92407f89df58deb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f42c393f-9e95-1bdb-103a-807ccdc4bbc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_diagonal_error_tail (Q A : ℝ) (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ)| ≤ sharpDiagonalCost Q := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  exact typeTwoDiagonal_tail_error_of_proper_bound (Real.log 4 + 4)
    (by positivity) actual_primeLogError_fixed hQ hQA _
    (actual_diagonal_minus_prime_tail Q A hQ1 hQA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/04SourceSharpDiagonalLedgerConsumer/Variant97085635983034602bb349320969c4d7340383396378a1c1b92407f89df58deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/04SourceSharpDiagonalLedgerConsumer/Variant97085635983034602bb349320969c4d7340383396378a1c1b92407f89df58deb.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70d9f17d7c7078289b5f23e0ca58f6283b5804e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
