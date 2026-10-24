# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6889317d8a36683b638ee5abf416ba9e78c2960b62bf5a8afb34b24af8e2cee2",
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
  "slug": "example--fc1489caf5312dd63331a6fa",
  "source": {
    "blob": "fdfcd7ba61d7a182d41b5cea96d9dee1073daec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InitialStatements/Variant84332c642f32b37d64c7dc383c555c2132ebd0051314fb10dbf822eb7166e57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc1489caf5312dd63331a6fae9a312622c3a25af9b8724b753be230415dc13d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InitialStatements/Variant84332c642f32b37d64c7dc383c555c2132ebd0051314fb10dbf822eb7166e57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6889317d8a36683b638ee5abf416ba9e78c2960b62bf5a8afb34b24af8e2cee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (hX : 1 ≤ X) : HasDerivAt
    (fun z : ℂ =>
      (∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ))) -
        ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ)) : ℂ) *
          Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)))
    ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
      Real.log ((X : ℝ) / (n : ℝ))) : ℂ) (1 / 2) :=
  by
    convert! correctedNumerator_hasDerivAt_half X hX using 1
    · funext z
      unfold correctedNumerator dirichletNumerator mobiusReciprocalSum
      simp only [Complex.ofReal_sum, Complex.ofReal_div, Complex.ofReal_natCast,
        Complex.ofReal_intCast]
    · simp only [logNormalization, Complex.ofReal_sum, Complex.ofReal_mul,
        Complex.ofReal_div, Complex.ofReal_natCast, Complex.ofReal_intCast]
end MobiusPoleNumeratorLiteral

namespace MobiusReciprocalPoleLiteral
open Complex Filter Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison.MobiusReciprocalPole

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InitialStatements/Variant84332c642f32b37d64c7dc383c555c2132ebd0051314fb10dbf822eb7166e57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InitialStatements/Variant84332c642f32b37d64c7dc383c555c2132ebd0051314fb10dbf822eb7166e57d.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdfcd7ba61d7a182d41b5cea96d9dee1073daec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
