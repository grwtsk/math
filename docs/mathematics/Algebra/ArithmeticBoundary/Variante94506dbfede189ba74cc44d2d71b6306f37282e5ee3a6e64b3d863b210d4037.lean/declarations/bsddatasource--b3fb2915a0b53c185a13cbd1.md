# BSDDataSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:171460d68bc467be16a75d4a6713e03a4769dc8a384591c6c151f2f98b041bcd",
  "kind": "structure",
  "lexical_name": "BSDDataSource",
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
  "slug": "bsddatasource--b3fb2915a0b53c185a13cbd1",
  "source": {
    "blob": "700a501e68404ad755bc4c30eabc5e2dde5ef320",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 63,
    "path": "GRWTSK/Algebra/ArithmeticBoundary/Variante94506dbfede189ba74cc44d2d71b6306f37282e5ee3a6e64b3d863b210d4037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3fb2915a0b53c185a13cbd12f52b50ea5f0981808291455af201c31d5f92d4a",
  "verification": {
    "reference": "docs/verification/Algebra/ArithmeticBoundary/Variante94506dbfede189ba74cc44d2d71b6306f37282e5ee3a6e64b3d863b210d4037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:171460d68bc467be16a75d4a6713e03a4769dc8a384591c6c151f2f98b041bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BSDDataSource where
  sourceLabel : String
  CurveId : Type _
  TwistParam : Type _
  baseCurve : CurveId
  twist : TwistParam → CurveId
  certifiedStrongBSD : TwistParam → Prop
  infiniteFamily : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ArithmeticBoundary/Variante94506dbfede189ba74cc44d2d71b6306f37282e5ee3a6e64b3d863b210d4037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ArithmeticBoundary/Variante94506dbfede189ba74cc44d2d71b6306f37282e5ee3a6e64b3d863b210d4037.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `700a501e68404ad755bc4c30eabc5e2dde5ef320` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
