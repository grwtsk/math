# SingleHandleRelativeInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1171580215928ccfe6a86bb8fa0c10ff1015d79a2ad07160b8af4a5d0306e997",
  "kind": "structure",
  "lexical_name": "SingleHandleRelativeInvariant",
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
  "slug": "singlehandlerelativeinvariant--0c245c01640d243e221581c2",
  "source": {
    "blob": "4c0cf203b0b4e4681fac58b362ce8628421da4de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c245c01640d243e221581c2533a693f989b7d92fb0c11582f0aa1f8176fae26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1171580215928ccfe6a86bb8fa0c10ff1015d79a2ad07160b8af4a5d0306e997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SingleHandleRelativeInvariant
    (R : Type uH) [CommRing R] (index : Nat) where
  Carrier : Nat -> Type uH
  carrierAddCommGroup : (k : Nat) -> AddCommGroup (Carrier k)
  atIndex :
    letI := carrierAddCommGroup index
    Carrier index ≃+ R
  offIndex :
    forall k, k ≠ index ->
      letI := carrierAddCommGroup k
      forall x : Carrier k, x = 0
  BoundaryTarget : Type uH
  boundaryTargetAddCommGroup : AddCommGroup BoundaryTarget
  boundary :
    letI := carrierAddCommGroup index
    letI := boundaryTargetAddCommGroup
    Carrier index →+ BoundaryTarget
  attachingClass : BoundaryTarget
  boundary_generator :
    letI := carrierAddCommGroup index
    letI := boundaryTargetAddCommGroup
    boundary (atIndex.symm 1) = attachingClass

namespace SingleHandleRelativeInvariant

variable {R : Type uH} [CommRing R] {index : Nat}

/-- The selected handle degree is additively equivalent to one copy of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c0cf203b0b4e4681fac58b362ce8628421da4de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
