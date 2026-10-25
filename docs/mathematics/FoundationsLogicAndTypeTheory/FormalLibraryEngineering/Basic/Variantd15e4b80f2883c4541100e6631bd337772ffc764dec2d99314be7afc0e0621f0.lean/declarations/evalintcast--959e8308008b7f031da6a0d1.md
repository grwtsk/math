# evalIntCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fadbcda8d4a00aa30784cbc7bb2aaf09f3b59dbd625897bc8097056102cf749",
  "kind": "def",
  "lexical_name": "evalIntCast",
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
  "slug": "evalintcast--959e8308008b7f031da6a0d1",
  "source": {
    "blob": "3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 435,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:959e8308008b7f031da6a0d1a2336e765f84b7e64901cf9c8a8668a8fde94c2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fadbcda8d4a00aa30784cbc7bb2aaf09f3b59dbd625897bc8097056102cf749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalIntCast : PositivityExt where eval {u α} _zα _pα e := do
  let (.app _ (a : Q(Int))) ← withReducible (whnf e) | throwError "not Int.cast"
  let zα' : Q(Zero Int) := q(inferInstance)
  let pα' : Q(PartialOrder Int) := q(inferInstance)
  let ra ← core zα' pα' a
  match ra with
  | .positive pa =>
    let _oα ← synthInstanceQ (q(OrderedRing $α) : Q(Type u))
    let _nt ← synthInstanceQ (q(Nontrivial $α))
    assumeInstancesCommute
    haveI' : $e =Q Int.cast $a := ⟨⟩
    pure (.positive q(Int.cast_pos.mpr $pa))
  | .nonnegative pa =>
    let _oα ← synthInstanceQ (q(OrderedRing $α))
    let _nt ← synthInstanceQ (q(Nontrivial $α))
    assumeInstancesCommute
    haveI' : $e =Q Int.cast $a := ⟨⟩
    pure (.nonnegative q(Int.cast_nonneg.mpr $pa))
  | .nonzero pa =>
    let _oα ← synthInstanceQ (q(AddGroupWithOne $α) : Q(Type $u))
    haveI' : $e =Q Int.cast $a := ⟨⟩
    let _nt ← synthInstanceQ (q(CharZero $α) : Q(Prop))
    assumeInstancesCommute
    pure (.nonzero q(Int.cast_ne_zero.mpr $pa))
  | .none =>
    pure .none

/-- Extension for Nat.succ. -/
@[positivity Nat.succ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
