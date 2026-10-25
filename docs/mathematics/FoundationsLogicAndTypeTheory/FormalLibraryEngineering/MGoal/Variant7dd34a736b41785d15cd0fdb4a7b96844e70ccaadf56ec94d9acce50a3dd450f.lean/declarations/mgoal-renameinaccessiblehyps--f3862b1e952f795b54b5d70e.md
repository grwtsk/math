# MGoal.renameInaccessibleHyps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbb4590e81b3644e5093b0a4210b48b1f6c2af51d578278f9b2d38e9e1c47675",
  "kind": "def",
  "lexical_name": "MGoal.renameInaccessibleHyps",
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
  "slug": "mgoal-renameinaccessiblehyps--f3862b1e952f795b54b5d70e",
  "source": {
    "blob": "231fcf6c1cef301eace9484644ce98071c44af19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variant7dd34a736b41785d15cd0fdb4a7b96844e70ccaadf56ec94d9acce50a3dd450f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3862b1e952f795b54b5d70e148c7fdba691b4b9149365944cc6d764c257a946",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variant7dd34a736b41785d15cd0fdb4a7b96844e70ccaadf56ec94d9acce50a3dd450f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbb4590e81b3644e5093b0a4210b48b1f6c2af51d578278f9b2d38e9e1c47675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def MGoal.renameInaccessibleHyps (goal : MGoal) (idents : Array (TSyntax ``binderIdent)) : MetaM MGoal := do
  let (hyps, (_, idents)) ← StateT.run (go goal.hyps) ({}, idents) -- NB: idents in reverse order
  unless idents.isEmpty do
    throwError "mrename_i: Could not find inaccessible hypotheses for {idents} in {goal.toExpr}"
  return { goal with hyps := hyps }
  where
    go (H : Expr) : StateT (NameSet × Array (TSyntax ``binderIdent)) MetaM Expr := do
      let mut (shadowed, idents) ← StateT.get
      if idents.isEmpty then
        return H
      if let some _ := parseEmptyHyp? H then
        return H
      if let some hyp := parseHyp? H then
        if hyp.name.hasMacroScopes || shadowed.contains hyp.name then
          if let `(binderIdent| $name:ident) := idents.back! then
            let hyp := { hyp with name := name.getId }
            StateT.set (shadowed, idents.pop)
            return hyp.toExpr
          idents := idents.pop
        StateT.set (shadowed.insert hyp.name, idents)
        return H
      if let some (u, σs, lhs, rhs) := parseAnd? H then
        let rhs ← go rhs -- NB: First go right because those are the "most recent" hypotheses
        let lhs ← go lhs
        return SPred.mkAnd! u σs lhs rhs
      return H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variant7dd34a736b41785d15cd0fdb4a7b96844e70ccaadf56ec94d9acce50a3dd450f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MGoal/Variant7dd34a736b41785d15cd0fdb4a7b96844e70ccaadf56ec94d9acce50a3dd450f.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `231fcf6c1cef301eace9484644ce98071c44af19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
