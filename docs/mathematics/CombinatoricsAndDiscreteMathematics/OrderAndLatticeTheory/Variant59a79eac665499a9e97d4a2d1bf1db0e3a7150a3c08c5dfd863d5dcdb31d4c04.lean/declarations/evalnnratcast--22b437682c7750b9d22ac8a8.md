# evalNNRatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9d21a01cace2a4df4cf933732344613b94e29cd5be1fe952f9e9e310d72d4d3",
  "kind": "def",
  "lexical_name": "evalNNRatCast",
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
  "slug": "evalnnratcast--22b437682c7750b9d22ac8a8",
  "source": {
    "blob": "10951d5e3ded2f1bc58d6967624aa6ae0c924fe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant59a79eac665499a9e97d4a2d1bf1db0e3a7150a3c08c5dfd863d5dcdb31d4c04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22b437682c7750b9d22ac8a843f3aa364fbb0d57098230ab660e7b9985a3ce1c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant59a79eac665499a9e97d4a2d1bf1db0e3a7150a3c08c5dfd863d5dcdb31d4c04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9d21a01cace2a4df4cf933732344613b94e29cd5be1fe952f9e9e310d72d4d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalNNRatCast : PositivityExt where eval {u α} _zα _pα e := do
  let ~q(@NNRat.cast _ (_) ($a : ℚ≥0)) := e | throwError "not NNRat.cast"
  match ← core q(inferInstance) q(inferInstance) a with
  | .positive pa =>
    let _oα ← synthInstanceQ q(Semifield $α)
    let _oα ← synthInstanceQ q(LinearOrder $α)
    let _oα ← synthInstanceQ q(IsStrictOrderedRing $α)
    assumeInstancesCommute
    return .positive q((NNRat.cast_pos (K := $α)).mpr $pa)
  | _ =>
    let _oα ← synthInstanceQ q(Semifield $α)
    let _oα ← synthInstanceQ q(LinearOrder $α)
    let _oα ← synthInstanceQ q(IsStrictOrderedRing $α)
    assumeInstancesCommute
    return .nonnegative q(NNRat.cast_nonneg _)

end Mathlib.Meta.Positivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant59a79eac665499a9e97d4a2d1bf1db0e3a7150a3c08c5dfd863d5dcdb31d4c04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant59a79eac665499a9e97d4a2d1bf1db0e3a7150a3c08c5dfd863d5dcdb31d4c04.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10951d5e3ded2f1bc58d6967624aa6ae0c924fe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
