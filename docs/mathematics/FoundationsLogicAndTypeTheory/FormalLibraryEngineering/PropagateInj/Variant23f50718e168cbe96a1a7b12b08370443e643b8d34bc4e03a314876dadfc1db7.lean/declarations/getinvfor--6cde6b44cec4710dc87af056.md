# getInvFor?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b441317f3ccedf2a430e7cd52e2ea08e0b1d570740fae6cc731a091a94e001e1",
  "kind": "def",
  "lexical_name": "getInvFor?",
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
  "slug": "getinvfor--6cde6b44cec4710dc87af056",
  "source": {
    "blob": "fcafb42b577594a283609578507fa50af4a8d915",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cde6b44cec4710dc87af0564b8b79ecdfe64e1338ea19e62b1cf67d5ceca3fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b441317f3ccedf2a430e7cd52e2ea08e0b1d570740fae6cc731a091a94e001e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getInvFor? (f : Expr) (a : Expr) : GoalM (Option (Expr × Expr)) := do
  let some info := (← get).inj.fns.find? { expr := f } | return none
  if let some inv := info.inv? then
    return some inv
  let [u, _] := info.us | unreachable!
  let nonEmpty := mkApp2 (mkConst ``Nonempty.intro [u]) info.α a
  let inv := mkApp5 (mkConst ``Grind.leftInv info.us) info.α info.β f info.h nonEmpty
  let inv ← preprocessLight inv
  let args := inv.getAppArgs
  let heq := mkAppN (mkConst ``Grind.leftInv_eq info.us) args
  let inv? := some (inv, heq)
  let info := { info with inv? }
  modify fun s => { s with inj.fns := s.inj.fns.insert { expr := f } info }
  return inv?

/--
If `e` is an application of the form `f a` where `f` is an injective function
in `(← get).inj.fns`, asserts `f⁻¹ (f a) = a`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateInj/Variant23f50718e168cbe96a1a7b12b08370443e643b8d34bc4e03a314876dadfc1db7.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcafb42b577594a283609578507fa50af4a8d915` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
