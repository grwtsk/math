# merge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d7a684c193a1a9ebd784680a09844be05db5c2ad3aa202e1310c96864ca14b8",
  "kind": "def",
  "lexical_name": "merge",
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
  "slug": "merge--c2eb9f8307a62ff3f2a1e150",
  "source": {
    "blob": "1fc797df8c023df0dad63dfac848fd2c5854ba90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 448,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant45cdfe44019f37052ca60b6d21660926b9d3833bb5d6ca0f1edbe755116533ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2eb9f8307a62ff3f2a1e1509b9064fb5e773f28cb00ceed9ad6e4ceb5bcadd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant45cdfe44019f37052ca60b6d21660926b9d3833bb5d6ca0f1edbe755116533ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d7a684c193a1a9ebd784680a09844be05db5c2ad3aa202e1310c96864ca14b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def merge (left right : BoundaryReport) : BoundaryReport where
  finiteMobiusWeight :=
    left.finiteMobiusWeight * right.finiteMobiusWeight
  relativeDeterminantCoeffs :=
    left.relativeDeterminantCoeffs ++ right.relativeDeterminantCoeffs
  valuationSupport :=
    left.valuationSupport ++ right.valuationSupport
  sawPrimePower :=
    left.sawPrimePower || right.sawPrimePower
  squareFreeReductionComplete :=
    left.squareFreeReductionComplete && right.squareFreeReductionComplete
  needsAnalyticCertificate :=
    left.needsAnalyticCertificate || right.needsAnalyticCertificate
  needsPrismaticCertificate :=
    left.needsPrismaticCertificate || right.needsPrismaticCertificate
  acceptedPrismaticCertificate :=
    left.acceptedPrismaticCertificate || right.acceptedPrismaticCertificate
  needsTorsionWitness :=
    left.needsTorsionWitness || right.needsTorsionWitness
  acceptedTorsionWitness :=
    left.acceptedTorsionWitness || right.acceptedTorsionWitness

end BoundaryReport

/-- Public finite Möbius boundary-report name for downstream checks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant45cdfe44019f37052ca60b6d21660926b9d3833bb5d6ca0f1edbe755116533ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/SpectralDeterminantBoundary/Variant45cdfe44019f37052ca60b6d21660926b9d3833bb5d6ca0f1edbe755116533ec.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fc797df8c023df0dad63dfac848fd2c5854ba90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
