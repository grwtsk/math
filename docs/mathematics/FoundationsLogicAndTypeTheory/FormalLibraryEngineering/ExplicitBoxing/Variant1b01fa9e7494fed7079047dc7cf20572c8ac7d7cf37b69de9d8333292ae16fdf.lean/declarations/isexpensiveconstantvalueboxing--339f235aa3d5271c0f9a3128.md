# isExpensiveConstantValueBoxing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6342911bf3267ebab21b158f196210af3c2fc81ef32836e993f365d91ea64371",
  "kind": "def",
  "lexical_name": "isExpensiveConstantValueBoxing",
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
  "slug": "isexpensiveconstantvalueboxing--339f235aa3d5271c0f9a3128",
  "source": {
    "blob": "369c3ef3621873e9550f59326dbd6bea475af529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:339f235aa3d5271c0f9a31284ba07746090853105b175dc57ff1ae5685f020f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6342911bf3267ebab21b158f196210af3c2fc81ef32836e993f365d91ea64371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isExpensiveConstantValueBoxing (x : FVarId) (xType : Expr) :
    BoxM (Option (LetValue .impure)) :=
  match xType with
  | uint8 | uint16 => return none
  | _ => do
    let some val ← findLetValue? x | return none
    match val with
    | .lit _ => return some val
    | .fap _ args => return if args.size == 0 then some val else none
    | _ => return none

/--
Auxiliary function used by `castVarIfNeeded`.
It is used when the expected type does not match `fvarIdType`.
If `fvarIdType` is scalar, then we need to box it. Otherwise, we need to unbox it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variant1b01fa9e7494fed7079047dc7cf20572c8ac7d7cf37b69de9d8333292ae16fdf.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `369c3ef3621873e9550f59326dbd6bea475af529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
