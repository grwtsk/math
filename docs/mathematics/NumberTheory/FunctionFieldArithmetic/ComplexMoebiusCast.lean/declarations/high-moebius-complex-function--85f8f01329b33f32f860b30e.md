# high_moebius_complex_function

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9e7066c-5371-362a-e368-5e08b92d0eea",
  "kind": "theorem",
  "lexical_name": "high_moebius_complex_function",
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
  "slug": "high-moebius-complex-function--85f8f01329b33f32f860b30e",
  "source": {
    "blob": "b4780398faab58ef71ceffc158166d9915d5f76a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85f8f01329b33f32f860b30eb3e484268801760976b1b9589ddecdd23db3a095",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9e7066c-5371-362a-e368-5e08b92d0eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem high_moebius_complex_function (U : ℕ) :
    (fun n => (highMoebiusCoefficient U n : ℂ)) =
      (fun n => (((μ : ArithmeticFunction ℂ) - closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) *
        ((μ : ArithmeticFunction ℂ) - closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) *
        (ζ : ArithmeticFunction ℂ)) n) := by
  have h : (ArithmeticFunction.ofInt
      (((μ : ArithmeticFunction ℤ) - closedArithmeticCutoff μ U) *
        ((μ : ArithmeticFunction ℤ) - closedArithmeticCutoff μ U) *
        (ζ : ArithmeticFunction ℤ)) : ArithmeticFunction ℂ) =
      ((μ : ArithmeticFunction ℂ) - closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) *
        ((μ : ArithmeticFunction ℂ) - closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) *
        (ζ : ArithmeticFunction ℂ) := by
    rw [ArithmeticFunction.intCoe_mul, ArithmeticFunction.intCoe_mul,
      integer_sub_complex, integer_cutoff_complex]
    rfl
  exact congrArg (fun f : ArithmeticFunction ℂ => (f : ℕ → ℂ)) h

set_option maxRecDepth 10000 in
set_option maxHeartbeats 1000000 in
/-- Exact hostile fixture: convolution is not coefficientwise multiplication. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/ComplexMoebiusCast.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4780398faab58ef71ceffc158166d9915d5f76a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
