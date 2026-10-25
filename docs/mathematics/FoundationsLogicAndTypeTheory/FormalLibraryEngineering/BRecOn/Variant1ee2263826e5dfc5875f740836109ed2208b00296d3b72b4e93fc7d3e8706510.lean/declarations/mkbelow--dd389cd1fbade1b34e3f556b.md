# mkBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f29670c7361a2330c07d1e16683557d51e85e4b98bfebdb0f14050eb90760fce",
  "kind": "def",
  "lexical_name": "mkBelow",
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
  "slug": "mkbelow--dd389cd1fbade1b34e3f556b",
  "source": {
    "blob": "7a47d1979b14d644592160eef63ef17fb45b972a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd389cd1fbade1b34e3f556bb7a96ac65f9acb79b67e9f1a8cc199f5e4ac9e57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f29670c7361a2330c07d1e16683557d51e85e4b98bfebdb0f14050eb90760fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public def mkBelow (indName : Name) : MetaM Unit := do
  withTraceNode `Meta.mkBelow (fun _ => return m!"{indName}") do
  let .inductInfo indVal ← getConstInfo indName | return
  unless indVal.isRec do return
  if ← isPropFormerType indVal.type then return

  let recName := mkRecName indName
  let belowName := mkBelowName indName
  mkBelowFromRec recName indVal.numParams belowName

  -- If this is the first inductive in a mutual group with nested inductives,
  -- generate the constructions for the nested inductives now
  if indVal.all[0]! = indName then
    for i in *...indVal.numNested do
      let recName := recName.appendIndexAfter (i + 1)
      let belowName := belowName.appendIndexAfter (i + 1)
      mkBelowFromRec recName indVal.numParams belowName

/--
If `minorType` is the type of a minor premies of a recursor, such as
```
  (cons : (head : α) → (tail : List α) → (tail_hs : motive tail) → motive (head :: tail))
```
of `List.rec`, constructs the corresponding argument to `List.rec` in the construction
of `.brecOn` definition; in this case
```
fun head tail tail_ih =>
  ⟨F_1 (head :: tail) ⟨tail_ih, PUnit.unit⟩, ⟨tail_ih, PUnit.unit⟩⟩
```
of type
```
(head : α) → (tail : List α) →
  PProd (motive tail) (List.below tail) →
  PProd (motive (head :: tail)) (PProd (PProd (motive tail) (List.below tail)) PUnit)
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a47d1979b14d644592160eef63ef17fb45b972a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
