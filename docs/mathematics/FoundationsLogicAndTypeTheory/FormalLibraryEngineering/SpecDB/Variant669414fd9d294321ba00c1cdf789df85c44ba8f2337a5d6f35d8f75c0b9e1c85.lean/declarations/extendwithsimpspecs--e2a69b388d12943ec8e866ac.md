# extendWithSimpSpecs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2e3d676dc46264d13b4eef85a876690d6dcf5a02910c9db513305abb0e877d3",
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
  "slug": "extendwithsimpspecs--e2a69b388d12943ec8e866ac",
  "source": {
    "blob": "a43de50729d035246f57a650e2d10c893ba0406e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2a69b388d12943ec8e866ac42683efa98262986988f8538b697e503d27fb2bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2e3d676dc46264d13b4eef85a876690d6dcf5a02910c9db513305abb0e877d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–137.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecDB/Variant669414fd9d294321ba00c1cdf789df85c44ba8f2337a5d6f35d8f75c0b9e1c85.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43de50729d035246f57a650e2d10c893ba0406e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
