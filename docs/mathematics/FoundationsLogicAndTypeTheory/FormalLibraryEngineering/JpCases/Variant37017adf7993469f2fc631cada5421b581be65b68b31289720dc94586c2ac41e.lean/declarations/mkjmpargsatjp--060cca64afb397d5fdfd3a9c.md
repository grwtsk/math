# mkJmpArgsAtJp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72bb5f707d484512b0a4212d4f939b010f7b9a81f9f3d2e466099c5902598197",
  "kind": "def",
  "lexical_name": "mkJmpArgsAtJp",
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
  "slug": "mkjmpargsatjp--060cca64afb397d5fdfd3a9c",
  "source": {
    "blob": "534ab7e42bff4196aeb7ea6786ae927c32a63714",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant37017adf7993469f2fc631cada5421b581be65b68b31289720dc94586c2ac41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:060cca64afb397d5fdfd3a9c263ac1aadc8e3fc0d28d8ab2af4b0f43cda3b96b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant37017adf7993469f2fc631cada5421b581be65b68b31289720dc94586c2ac41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72bb5f707d484512b0a4212d4f939b010f7b9a81f9f3d2e466099c5902598197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def mkJmpArgsAtJp (params : Array (Param .pure)) (targetParamIdx : Nat)
    (fields : Array (Param .pure)) (dependsOnTarget : Bool) : Array (Arg .pure) := Id.run do
  mkJmpNewArgs (params.map (Arg.fvar ·.fvarId)) targetParamIdx (fields.map (Arg.fvar ·.fvarId)) dependsOnTarget

/--
Try to optimize `jpCases` join points.
We say a join point is a `jpCases` when it satisfies the predicate `isJpCases`.
If we have a jump to `jpCases` with a constructor, then we can optimize the code by creating an new join point for
the constructor.
Example: suppose we have
```lean
jp _jp.1 y :=
  let x.1 := true
  cases y
  | nil => let x.2 := g x.1; return x.2
  | cons h t => let x.3 := h x.1; return x.3
...
cases x.4
| ctor1 =>
  let x.5 := cons z.1 z.2
  jmp _jp.1 x.5
| ctor2 =>
  let x.6 := f x.4
  jmp _jp.1 x.6
```
This `simpJpCases?` converts it to
```lean
jp _jp.2 h t :=
  let x.1 := true
  let x.3 := h x.1
  return x.3
jp _jp.1 y :=
  let x.1 := true
  cases y
  | nil => let x.2 := g x.1; return x.2
  | cons h t => jmp _jp.2 h t
...
cases x.4
| ctor1 =>
  -- The constructor has been eliminated here
  jmp _jp.2 z.1 z.2
| ctor2 =>
  let x.6 := f x.4
  jmp _jp.1 x.6
```
Note that if all jumps to the join point are with constructors,
then the join point is eliminated as dead code.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant37017adf7993469f2fc631cada5421b581be65b68b31289720dc94586c2ac41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant37017adf7993469f2fc631cada5421b581be65b68b31289720dc94586c2ac41e.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `534ab7e42bff4196aeb7ea6786ae927c32a63714` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
