# evalAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdc2ad7e6981ecd1a00aef23d79fa664efe67b86c411341b1ff845e45ea65def",
  "kind": "def",
  "lexical_name": "evalAdd",
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
  "slug": "evaladd--ab1b494b6e6f34ef4e8063b4",
  "source": {
    "blob": "3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab1b494b6e6f34ef4e8063b41127dd02f21a71c2f7176f52fa312ee35000db72",
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

Occurrence: `declaration:bdc2ad7e6981ecd1a00aef23d79fa664efe67b86c411341b1ff845e45ea65def`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[positivity _ + _, Add.add _ _] def evalAdd : PositivityExt where eval {u α} zα pα e := do
  let .app (.app (f : Q($α → $α → $α)) (a : Q($α))) (b : Q($α)) ← withReducible (whnf e)
    | throwError "not +"
  let _e_eq : $e =Q $f $a $b := ⟨⟩
  let _a ← synthInstanceQ (q(AddZeroClass $α) : Q(Type u))
  assumeInstancesCommute
  let ⟨_f_eq⟩ ← withDefault <| withNewMCtxDepth <| assertDefEqQ (u := u.succ) f q(HAdd.hAdd)
  let ra ← core zα pα a; let rb ← core zα pα b
  match ra, rb with
  | .positive pa, .positive pb =>
    let _a ← synthInstanceQ (q(CovariantClass $α $α (·+·) (·<·)) : Q(Prop))
    pure (.positive q(add_pos $pa $pb))
  | .positive pa, .nonnegative pb =>
    let _a ← synthInstanceQ (q(CovariantClass $α $α (swap (·+·)) (·<·)) : Q(Prop))
    pure (.positive q(lt_add_of_pos_of_le $pa $pb))
  | .nonnegative pa, .positive pb =>
    let _a ← synthInstanceQ (q(CovariantClass $α $α (·+·) (·<·)) : Q(Prop))
    pure (.positive q(lt_add_of_le_of_pos $pa $pb))
  | .nonnegative pa, .nonnegative pb =>
    let _a ← synthInstanceQ (q(CovariantClass $α $α (·+·) (·≤·)) : Q(Prop))
    pure (.nonnegative q(add_nonneg $pa $pb))
  | _, _ => failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
