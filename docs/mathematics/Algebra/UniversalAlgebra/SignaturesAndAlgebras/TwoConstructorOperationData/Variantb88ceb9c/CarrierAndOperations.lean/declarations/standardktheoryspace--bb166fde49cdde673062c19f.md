# standardKTheorySpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bba085b2b67756795ae9d845a0731bed81a1f51aa404a397a4515194f19245f9",
  "kind": "def",
  "lexical_name": "standardKTheorySpace",
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
  "slug": "standardktheoryspace--bb166fde49cdde673062c19f",
  "source": {
    "blob": "1ddadc4f0c6c43b0b2d682880ed799d15aee4d8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TwoConstructorOperationData/Variantb88ceb9c/CarrierAndOperations.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb166fde49cdde673062c19fc838f38174ebe81756b37588ac18ba7efa192272",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TwoConstructorOperationData/Variantb88ceb9c/CarrierAndOperations.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bba085b2b67756795ae9d845a0731bed81a1f51aa404a397a4515194f19245f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def standardKTheorySpace : KTheorySpace where
  Base := PUnit
  Class := ToyKClass
  zero := ToyKClass.zero
  add := fun x _ => x
  neg := fun x => x
  label := "toy K(M_ell) two-point carrier"

end

end GRWTSK.Algebra.UniversalAlgebra.SignaturesAndAlgebras.TwoConstructorOperationData.Variantb88ceb9c
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TwoConstructorOperationData/Variantb88ceb9c/CarrierAndOperations.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/SignaturesAndAlgebras/TwoConstructorOperationData/Variantb88ceb9c/CarrierAndOperations.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ddadc4f0c6c43b0b2d682880ed799d15aee4d8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
