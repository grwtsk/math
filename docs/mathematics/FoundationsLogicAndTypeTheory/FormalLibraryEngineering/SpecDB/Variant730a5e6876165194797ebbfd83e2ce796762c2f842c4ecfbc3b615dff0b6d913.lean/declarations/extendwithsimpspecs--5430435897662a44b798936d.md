# extendWithSimpSpecs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08d35742332f8472a3196eb2785fdeaa38f0976cf8348b17bfb09656fdadd50e",
  "kind": "def",
  "lexical_name": "extendWithSimpSpecs",
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
  "slug": "extendwithsimpspecs--5430435897662a44b798936d",
  "source": {
    "blob": "b774ffb8b602f173d5e7c66b706555c85bed1ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5430435897662a44b798936dda224b1119e4464810c896e8e689b1cdd4e37d6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08d35742332f8472a3196eb2785fdeaa38f0976cf8348b17bfb09656fdadd50e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def extendWithSimpSpecs (database : SpecTheorems) (simpThms : SimpTheorems) :
    MetaM SpecTheorems := do
  let mut specs := database.specs
  -- Erased entries are still inserted into `specs` below; `findSpecs` filters them out
  -- at lookup time.
  let erased : PHashSet SpecProof := simpThms.erased.fold (init := database.erased) fun acc o =>
    match SpecProof.ofOrigin o with
    | some p => acc.insert p
    | none => acc
  -- Add simp spec theorems (equational lemmas registered via `@[spec]`)
  for simpThm in simpThms.post.values do
    if let .decl declName .. := simpThm.origin then
      try
        if let some newSpec ← mkSpecTheoremFromSimpDecl? declName simpThm.priority then
          specs := Sym.insertPattern specs newSpec.pattern newSpec
      catch e =>
        trace[Elab.Tactic.Do.vcgen] "Failed to add simp spec {declName}: {e.toMessageData}"
  -- Add definitions to unfold (registered via `attribute [spec] foo`)
  for declName in simpThms.toUnfold.toList do
    let eqThms ← match simpThms.toUnfoldThms.find? declName with
      | some eqThms => pure eqThms
      | none =>
        -- No explicit equational theorems stored; generate them via `getEqnsFor?`
        let some eqThms ← Meta.getEqnsFor? declName | continue
        pure eqThms
    for eqThm in eqThms do
      try
        if let some newSpec ← mkSpecTheoremFromSimpDecl? eqThm (prio := eval_prio default) then
          specs := Sym.insertPattern specs newSpec.pattern newSpec
      catch e =>
        trace[Elab.Tactic.Do.vcgen] "Failed to add unfold spec {declName}/{eqThm}: {e.toMessageData}"
  return { specs, erased }

end VCGen

/--
Look up `SpecTheorem`s in the `@[spec]` database.
Takes all specs that match the given program `e` and sorts by descending priority.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant730a5e6876165194797ebbfd83e2ce796762c2f842c4ecfbc3b615dff0b6d913.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b774ffb8b602f173d5e7c66b706555c85bed1ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
