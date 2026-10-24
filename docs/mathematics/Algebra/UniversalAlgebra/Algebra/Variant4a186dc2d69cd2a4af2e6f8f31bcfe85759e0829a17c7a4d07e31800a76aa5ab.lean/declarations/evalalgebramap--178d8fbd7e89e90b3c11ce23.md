# evalAlgebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3741bee311897d4357a87f9aef636ba86cb00cc57707425518eeedb7166c58cc",
  "kind": "def",
  "lexical_name": "evalAlgebraMap",
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
  "slug": "evalalgebramap--178d8fbd7e89e90b3c11ce23",
  "source": {
    "blob": "fdae63c280445ca4b49bcf3d966f6a6052d7ee9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 106,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant4a186dc2d69cd2a4af2e6f8f31bcfe85759e0829a17c7a4d07e31800a76aa5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:178d8fbd7e89e90b3c11ce23fff1523dfc4bde9177297f7b05969e887b107196",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Algebra/Variant4a186dc2d69cd2a4af2e6f8f31bcfe85759e0829a17c7a4d07e31800a76aa5ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3741bee311897d4357a87f9aef636ba86cb00cc57707425518eeedb7166c58cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalAlgebraMap : PositivityExt where eval {u β} _zβ pβ? e :=
  match pβ? with | none => pure .none | some _ => do
  let ~q(@algebraMap $α _ $instα $instβ $instαβ $a) := e | throwError "not `algebraMap`"
  let some pα ← try? <| synthInstanceQ q(PartialOrder $α) | pure .none
  match ← core q(inferInstance) (some pα) a with
  | .positive pa =>
    let _instαSemiring ← synthInstanceQ q(Semiring $α)
    try
      let _instβSemiring ← synthInstanceQ q(Semiring $β)
      let _instβPartialOrder ← synthInstanceQ q(PartialOrder $β)
      let _instβIsStrictOrderedRing ← synthInstanceQ q(IsStrictOrderedRing $β)
      let _instαβsmul ← synthInstanceQ q(SMulPosStrictMono $α $β)
      assertInstancesCommute
      return .positive q(algebraMap_pos $β $pa)
    catch _ =>
      let _instβSemiring ← synthInstanceQ q(Semiring $β)
      let _instβPartialOrder ← synthInstanceQ q(PartialOrder $β)
      let _instβIsOrderedRing ← synthInstanceQ q(IsOrderedRing $β)
      let _instαβsmul ← synthInstanceQ q(SMulPosMono $α $β)
      assertInstancesCommute
      return .nonnegative q(algebraMap_nonneg $β <| le_of_lt $pa)
  | .nonnegative pa =>
    let _instαSemiring ← synthInstanceQ q(CommSemiring $α)
    let _instβSemiring ← synthInstanceQ q(Semiring $β)
    let _instβPartialOrder ← synthInstanceQ q(PartialOrder $β)
    let _instβIsOrderedRing ← synthInstanceQ q(IsOrderedRing $β)
    let _instαβsmul ← synthInstanceQ q(SMulPosMono $α $β)
    assertInstancesCommute
    return .nonnegative q(algebraMap_nonneg $β $pa)
  | _ => pure .none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Algebra/Variant4a186dc2d69cd2a4af2e6f8f31bcfe85759e0829a17c7a4d07e31800a76aa5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant4a186dc2d69cd2a4af2e6f8f31bcfe85759e0829a17c7a4d07e31800a76aa5ab.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdae63c280445ca4b49bcf3d966f6a6052d7ee9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
