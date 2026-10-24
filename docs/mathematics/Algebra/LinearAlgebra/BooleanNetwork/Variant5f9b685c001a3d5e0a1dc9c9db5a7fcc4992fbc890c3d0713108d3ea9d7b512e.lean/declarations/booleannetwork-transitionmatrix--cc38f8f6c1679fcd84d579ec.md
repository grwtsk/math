# BooleanNetwork.transitionMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6ebe6265669716ad7e160cb0a5aa3de7a9886a4e825a0ec3ed8d11aec77022d",
  "kind": "def",
  "lexical_name": "BooleanNetwork.transitionMatrix",
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
  "slug": "booleannetwork-transitionmatrix--cc38f8f6c1679fcd84d579ec",
  "source": {
    "blob": "12bb7092a6341bc5c740d831dc567b15d62c7176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 21,
    "path": "GRWTSK/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc38f8f6c1679fcd84d579eccd6be33f603f93bc501d88a9852f72224d2e4943",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6ebe6265669716ad7e160cb0a5aa3de7a9886a4e825a0ec3ed8d11aec77022d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BooleanNetwork.transitionMatrix {n : Nat} (N : BooleanNetwork.Network n) :
    Matrix (2 ^ n) (2 ^ n) :=
  fun i j =>
    Hypercube.pointEq
      (Hypercube.pointOfIndex n j.val)
      (N.step (Hypercube.pointOfIndex n i.val))

/--
A coordinate-level dependency test.

The output coordinate `target` depends on input coordinate `source` when flipping
`source` changes that target output for at least one state.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BooleanNetwork/Variant5f9b685c001a3d5e0a1dc9c9db5a7fcc4992fbc890c3d0713108d3ea9d7b512e.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12bb7092a6341bc5c740d831dc567b15d62c7176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
