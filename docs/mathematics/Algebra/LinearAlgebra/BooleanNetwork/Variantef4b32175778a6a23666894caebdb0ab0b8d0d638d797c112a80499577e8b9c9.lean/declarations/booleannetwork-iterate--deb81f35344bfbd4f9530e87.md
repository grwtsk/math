# BooleanNetwork.iterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58d16a9b4b614a47048e58704cff0c7f90fe033bd6907eb4352d94fcbfa79893",
  "kind": "def",
  "lexical_name": "BooleanNetwork.iterate",
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
  "slug": "booleannetwork-iterate--deb81f35344bfbd4f9530e87",
  "source": {
    "blob": "503fed42ca712cd5074ee5f6c5442ff321601738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 18,
    "path": "GRWTSK/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:deb81f35344bfbd4f9530e8713fac9ab787fb877c4b584543cedb35e0d162950",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58d16a9b4b614a47048e58704cff0c7f90fe033bd6907eb4352d94fcbfa79893`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BooleanNetwork.iterate {n : Nat} (N : BooleanNetwork.Network n) :
    Nat → Hypercube.Point n → Hypercube.Point n
  | 0, x => x
  | t + 1, x => BooleanNetwork.iterate N t (N.step x)

/--
State transition matrix of a Boolean network.

Rows are current states. Columns are next states. A `1` at `(i,j)` means state
`i` transitions to state `j`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BooleanNetwork/Variantef4b32175778a6a23666894caebdb0ab0b8d0d638d797c112a80499577e8b9c9.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `503fed42ca712cd5074ee5f6c5442ff321601738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
