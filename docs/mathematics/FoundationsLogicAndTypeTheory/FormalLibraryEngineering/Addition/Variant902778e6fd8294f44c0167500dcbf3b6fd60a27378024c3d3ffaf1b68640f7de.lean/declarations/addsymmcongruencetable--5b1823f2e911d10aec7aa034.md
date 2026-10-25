# addSymmCongruenceTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eee02084b2968e768be0c0d2db24f9b2ad266930e7e825646a9f2bad0d09ab4f",
  "kind": "def",
  "lexical_name": "addSymmCongruenceTable",
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
  "slug": "addsymmcongruencetable--5b1823f2e911d10aec7aa034",
  "source": {
    "blob": "cab91cdf92ef91ceb61392d33d99236b369fae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b1823f2e911d10aec7aa034778b414bcfe5b81f170bb4d81fe16e12f1d45253",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eee02084b2968e768be0c0d2db24f9b2ad266930e7e825646a9f2bad0d09ab4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addSymmCongruenceTable (e : Expr) : CCM Unit := do
  let some (rel, lhs, rhs) ← e.relSidesIfSymm? | failure
  let k ← mkSymmCongruencesKey lhs rhs
  let newP := (e, rel)
  if let some ps := (← get).symmCongruences[k]? then
    for p in ps do
      if ← compareSymm newP p then
        -- Found new equivalence: `e ~ p.1`
        -- 1. Update `cgRoot` field for `e`
        let some currEntry ← getEntry e | failure
        let newEntry := { currEntry with cgRoot := p.1 }
        modify fun ccs => { ccs with entries := ccs.entries.insert e newEntry }
        -- 2. Put new equivalence in the TODO queue
        -- NOTE(gabriel): support for symmetric relations is pretty much broken,
        -- since it ignores all arguments except the last two ones.
        -- e.g. this would claim that `ModEq n a b` and `ModEq m a b` are equivalent.
        -- Whitelist some relations to contain breakage:
        if rel == ``Eq || e.getAppNumArgs == 2 then
          pushEq e p.1 .congr
        checkEqTrue e
        return
    modify fun ccs =>
      { ccs with symmCongruences := ccs.symmCongruences.insert k (newP :: ps) }
    checkEqTrue e
  else
    modify fun ccs =>
      { ccs with symmCongruences := ccs.symmCongruences.insert k [newP] }
    checkEqTrue e

/-- Given subsingleton elements `a` and `b` which are not necessarily of the same type, if the
types of `a` and `b` are equivalent, add the (heterogeneous) equality proof between `a` and `b` to
the todo list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab91cdf92ef91ceb61392d33d99236b369fae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
