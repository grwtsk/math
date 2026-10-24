# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a4d91f67fadcc3ae0b8fcdfb32cfda8398d0f4926569aae85f8c9cfb5e197dd",
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
  "slug": "example--846a33f6ea67e1390f6c8be7",
  "source": {
    "blob": "f4b855796c7cda5607c1fdd1050916bb658b84c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/B9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971DiagonalScaleAud/Variantb9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:846a33f6ea67e1390f6c8be77c50c95f0123df11b66fd0502ed3e3b81018a82d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/B9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971DiagonalScaleAud/Variantb9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a4d91f67fadcc3ae0b8fcdfb32cfda8398d0f4926569aae85f8c9cfb5e197dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : p.Prime)
    (hUp : vaughanCutoff A < p) :
    shortVaughanCoefficient (vaughanCutoff A) (p ^ 2) * sourcePlainWeight A (p ^ 2) +
      (ArithmeticFunction.vonMangoldt p * EstimateVaughanIdentity.beta (vaughanCutoff A) p) *
        sourcePlainWeight A (p ^ 2) = Real.log (p : ℝ) * sourcePlainWeight A (p ^ 2) :=
  prime_square_short_diagonal_remainder _ _ (vaughanCutoff_pos A hA) hp hUp _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/B9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971DiagonalScaleAud/Variantb9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/B9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971DiagonalScaleAud/Variantb9d285b807b1f33d553ef19bda1bc4e5866f360e63a42886839e6d9c6c54e971.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b855796c7cda5607c1fdd1050916bb658b84c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
