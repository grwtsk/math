# Mat2FpStateCountSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cae9f19a9b6648be8fcab24a31c02def556fff94f7bf82522c922f564d16e83",
  "kind": "structure",
  "lexical_name": "Mat2FpStateCountSurface",
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
  "slug": "mat2fpstatecountsurface--c09872265d29f384b7b91c89",
  "source": {
    "blob": "e72349962b2c63696f6db9d063d600f738ea327a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 212,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c09872265d29f384b7b91c894eb35b2f898315730f3efda166a7ff5fc778361a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0cae9f19a9b6648be8fcab24a31c02def556fff94f7bf82522c922f564d16e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Mat2FpStateCountSurface where
  prime : Nat
  stateCount : Nat
  binaryTruthTableOnlyAtTwo : Bool
  spin4ReductionClaim : Bool
deriving Repr, DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FinitePhaseBitmatrixAlgebra/Variantd7096e8ad3c4e7866af01c933c7e4121a0dcf1fa2ba8a78d6b6f6d435e43275a.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72349962b2c63696f6db9d063d600f738ea327a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
