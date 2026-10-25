# assignUnassigned

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f99506d82c7484643e48f4b29953bc52cd49abf2070de105957d22f299fa7021",
  "kind": "def",
  "lexical_name": "assignUnassigned",
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
  "slug": "assignunassigned--d6daaa81e14a5c9e783ecfc3",
  "source": {
    "blob": "fa83f62dbbe01c089dd8da64cadd685d361464bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelUtil/Variant56745d21af946fff8a220af79efeb24217ce65aea0b68af57479bc08398a46f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6daaa81e14a5c9e783ecfc3e0613e6cfcf4e9db67ef3e3973fd213f65278024",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelUtil/Variant56745d21af946fff8a220af79efeb24217ce65aea0b68af57479bc08398a46f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f99506d82c7484643e48f4b29953bc52cd49abf2070de105957d22f299fa7021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def assignUnassigned (goal : Goal) (isTarget : ENode → MetaM Bool) (model : Std.HashMap Expr Rat) : MetaM (Std.HashMap Expr Rat) := do
  let mut nextVal : Int := 0
  -- Collect used values
  let mut used : Std.HashSet Int := {}
  for (_, v) in model do
    if v.den == 1 then
      used := used.insert v.num
  let mut model := model
  -- Assign the remaining ones with values not used by cutsat
  for e in goal.exprs do
    let node ← goal.getENode e
    if node.isRoot then
    if (← isTarget node) then
    if model[node.self]?.isNone then
      let v := pickUnusedValue goal model node.self nextVal used
      model := assignEqc goal node.self v model
      used := used.insert v
      nextVal := v + 1
  return model

/-- Sorts assignment first by expression generation and then `Expr.lt` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelUtil/Variant56745d21af946fff8a220af79efeb24217ce65aea0b68af57479bc08398a46f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelUtil/Variant56745d21af946fff8a220af79efeb24217ce65aea0b68af57479bc08398a46f9.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa83f62dbbe01c089dd8da64cadd685d361464bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
