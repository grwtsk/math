# FredholmFinitePayload

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ce558bd0db3e0d2368ebabf28d9eba3deeccfaf096e72eeba27571bbe4c0d39",
  "kind": "structure",
  "lexical_name": "FredholmFinitePayload",
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
  "slug": "fredholmfinitepayload--a6c26dd3434169a68869a0ab",
  "source": {
    "blob": "e94603384575b957589cd86a16b0d119ddcc0187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 289,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmDeterminantAuthority/Variant848b86b73d4ac08bff8824ccb1b8608e4a78625fbb2401909d6f132e3eb5dcdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6c26dd3434169a68869a0aba57470461f0246d505c7270560c210c3e6f3f415",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmDeterminantAuthority/Variant848b86b73d4ac08bff8824ccb1b8608e4a78625fbb2401909d6f132e3eb5dcdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ce558bd0db3e0d2368ebabf28d9eba3deeccfaf096e72eeba27571bbe4c0d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FredholmFinitePayload where
  p : Nat
  q : Nat
  traceDepth : Nat
  frobeniusTraceP : List Int
  frobeniusTraceQ : List Int
  localEulerCoeffsP : List Int
  localEulerCoeffsQ : List Int
  fredholmCoeffsP : List Int
  fredholmCoeffsQ : List Int
  relativeFredholmCoeffs : List Int
  squareFreeMobiusWeight : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  spectralBoundaryCrossed : Bool
  prismaticBoundaryCrossed : Bool
  fredholmBoundaryCrossed : Bool
  errorNumerator : Nat
  errorExponent : Nat
  hasPrismaticCertificate : Bool
  hasSpectralCertificate : Bool
  hasFredholmCertificate : Bool
  needsTorsionWitness : Bool
  acceptedZKPWitness : Bool
deriving Repr, DecidableEq

/--
Emit finite Fredholm payload from a relative Fredholm bridge plus finite
arithmetic trace data.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmDeterminantAuthority/Variant848b86b73d4ac08bff8824ccb1b8608e4a78625fbb2401909d6f132e3eb5dcdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmDeterminantAuthority/Variant848b86b73d4ac08bff8824ccb1b8608e4a78625fbb2401909d6f132e3eb5dcdf.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e94603384575b957589cd86a16b0d119ddcc0187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
