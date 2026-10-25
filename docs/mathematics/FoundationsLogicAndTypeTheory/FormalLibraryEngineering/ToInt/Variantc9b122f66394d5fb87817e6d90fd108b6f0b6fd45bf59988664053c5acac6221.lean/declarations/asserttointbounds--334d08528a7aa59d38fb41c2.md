# assertToIntBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25b07413cc82381eb5da5edef24eae0eade00275496b542d76da1d86728649e3",
  "kind": "def",
  "lexical_name": "assertToIntBounds",
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
  "slug": "asserttointbounds--334d08528a7aa59d38fb41c2",
  "source": {
    "blob": "140085637a8c340df3dfaa979bac94c8af66a417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 512,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:334d08528a7aa59d38fb41c212cc233b211be7d402026570890f22bdd5f07e9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25b07413cc82381eb5da5edef24eae0eade00275496b542d76da1d86728649e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assertToIntBounds (e : Expr) (x : Var) : GoalM Unit := do
  let_expr Grind.ToInt.toInt α _ _ a := e | return ()
  ToIntM.run α do
  let info ← getInfo
  let i := info.range
  if let some lo := i.lo? then
    let some thm := info.lowerThm? | unreachable!
    if let some lo := lo.ival? then
      let p := .add (-1) x (.num lo)
      let c := { p, h := .bound (mkApp thm a) : LeCnstr }
      c.assert
    else
      pushNewFact <| mkApp thm a
  if let some hi := i.hi? then
    let some thm := info.upperThm? | unreachable!
    if let some hi := hi.ival? then
      let p := .add 1 x (.num (-hi + 1))
      let c := { p, h := .bound (mkApp thm a) : LeCnstr }
      c.assert
    else
      pushNewFact <| mkApp thm a

end Lean.Meta.Grind.Arith.Cutsat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToInt/Variantc9b122f66394d5fb87817e6d90fd108b6f0b6fd45bf59988664053c5acac6221.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `140085637a8c340df3dfaa979bac94c8af66a417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
