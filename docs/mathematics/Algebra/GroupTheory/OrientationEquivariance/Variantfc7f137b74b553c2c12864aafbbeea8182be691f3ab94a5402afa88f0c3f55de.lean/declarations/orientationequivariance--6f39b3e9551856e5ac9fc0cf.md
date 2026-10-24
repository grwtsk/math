# OrientationEquivariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:493d4d654817ed4bfbc16b025cfc9e342d0f391e95c144210228fc3ea1862d18",
  "kind": "structure",
  "lexical_name": "OrientationEquivariance",
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
  "slug": "orientationequivariance--6f39b3e9551856e5ac9fc0cf",
  "source": {
    "blob": "5260ec316e96572f25d6912f52f47e5936d87c70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 24,
    "path": "GRWTSK/Algebra/GroupTheory/OrientationEquivariance/Variantfc7f137b74b553c2c12864aafbbeea8182be691f3ab94a5402afa88f0c3f55de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f39b3e9551856e5ac9fc0cfa877819ee66c98f91bbb34d1be0690c3261029cc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrientationEquivariance/Variantfc7f137b74b553c2c12864aafbbeea8182be691f3ab94a5402afa88f0c3f55de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:493d4d654817ed4bfbc16b025cfc9e342d0f391e95c144210228fc3ea1862d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrientationEquivariance
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    (addresses :
      TreeAddressRegistry tree)
    (GroupCarrier : Type uGroup)
    [Group GroupCarrier]
    [MulAction GroupCarrier Node] where
  addressAction :
    GroupCarrier →
      FrontierAddress →
      FrontierAddress
  addressActionIdentity :
    ∀ address,
      addressAction 1 address = address
  addressActionCompatible :
    ∀ left right address,
      addressAction (left * right) address =
        addressAction left
          (addressAction right address)
  nodeAddressEquivariant :
    ∀ automorphism node,
      addresses.address
          (automorphism • node) =
        addressAction automorphism
          (addresses.address node)
  depthInvariant :
    ∀ automorphism address,
      (addressAction automorphism address)
          .rawPath.length =
        address.rawPath.length
  orientedPathInvariant :
    ∀ automorphism address,
      (addressAction automorphism address)
          .orientedPath =
        address.orientedPath

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrientationEquivariance/Variantfc7f137b74b553c2c12864aafbbeea8182be691f3ab94a5402afa88f0c3f55de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrientationEquivariance/Variantfc7f137b74b553c2c12864aafbbeea8182be691f3ab94a5402afa88f0c3f55de.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5260ec316e96572f25d6912f52f47e5936d87c70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
