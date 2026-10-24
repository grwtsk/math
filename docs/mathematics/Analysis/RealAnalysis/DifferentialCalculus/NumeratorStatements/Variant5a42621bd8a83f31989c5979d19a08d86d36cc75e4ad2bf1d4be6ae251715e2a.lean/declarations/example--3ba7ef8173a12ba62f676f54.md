# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a766721a5994a91d784a52a47185850a82479ff0bf5ad1b30862541f2767cd0e",
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
  "slug": "example--3ba7ef8173a12ba62f676f54",
  "source": {
    "blob": "d45ac2c34ae7b96af6cd61589166cfaf212edc8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NumeratorStatements/Variant5a42621bd8a83f31989c5979d19a08d86d36cc75e4ad2bf1d4be6ae251715e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ba7ef8173a12ba62f676f549a4418f888acece24461d46634274f0e2f25612d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NumeratorStatements/Variant5a42621bd8a83f31989c5979d19a08d86d36cc75e4ad2bf1d4be6ae251715e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a766721a5994a91d784a52a47185850a82479ff0bf5ad1b30862541f2767cd0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (z : ℂ) : HasDerivAt (correctedNumerator X)
    ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) *
        (-(Real.log (n : ℝ) : ℂ)))) +
      (mobiusReciprocalSum X : ℂ) *
        (Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)) *
          (Real.log (X : ℝ) : ℂ))) z := correctedNumerator_hasDerivAt X z
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NumeratorStatements/Variant5a42621bd8a83f31989c5979d19a08d86d36cc75e4ad2bf1d4be6ae251715e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NumeratorStatements/Variant5a42621bd8a83f31989c5979d19a08d86d36cc75e4ad2bf1d4be6ae251715e2a.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d45ac2c34ae7b96af6cd61589166cfaf212edc8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
