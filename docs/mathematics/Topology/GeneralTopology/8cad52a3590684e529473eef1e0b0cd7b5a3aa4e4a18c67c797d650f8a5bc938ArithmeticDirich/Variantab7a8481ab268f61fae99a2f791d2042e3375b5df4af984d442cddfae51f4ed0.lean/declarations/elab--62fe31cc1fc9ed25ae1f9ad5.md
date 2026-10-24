# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:423e2071763f7b808d69daadc810fa08dea1b14441c61ae7278d2179038736eb",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--62fe31cc1fc9ed25ae1f9ad5",
  "source": {
    "blob": "3ea655c05e3b43c90f5b324c4173f5e86aa9dc71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/8cad52a3590684e529473eef1e0b0cd7b5a3aa4e4a18c67c797d650f8a5bc938ArithmeticDirich/Variantab7a8481ab268f61fae99a2f791d2042e3375b5df4af984d442cddfae51f4ed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62fe31cc1fc9ed25ae1f9ad5b20b16a404e35057400bb50c7455dc82279aeccd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/8cad52a3590684e529473eef1e0b0cd7b5a3aa4e4a18c67c797d650f8a5bc938ArithmeticDirich/Variantab7a8481ab268f61fae99a2f791d2042e3375b5df4af984d442cddfae51f4ed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:423e2071763f7b808d69daadc810fa08dea1b14441c61ae7278d2179038736eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "audit_maintained_environment" : command => do
  let env := (← getEnv).setExporting false
  let modules := env.allImportedModuleNames
  let candidates := (env.constants.toList.filter fun entry =>
    match env.getModuleIdxFor? entry.1 with
    | some index => structureAuditMaintainedModule modules[index]!
    | none => false).toArray.qsort (fun a b => Name.quickLt a.1 b.1)
  let mut results : Array Json := #[]
  let mut forbidden : Array Json := #[]
  let mut directAxioms : Array Json := #[]
  for (name, info) in candidates do
    if let some moduleIndex := env.getModuleIdxFor? name then
      let owner := modules[moduleIndex]!
      if structureAuditMaintainedModule owner then
        let axioms ← collectAxioms name
        let bad := axioms.filter fun ax =>
          ax != ``propext && ax != ``Classical.choice && ax != ``Quot.sound
        let entry := Json.mkObj [
          ("name", toJson name.toString),
          ("name_parts", toJson (structureAuditNameParts name)),
          ("module", toJson owner.toString),
          ("kind", toJson (structureAuditKind info)),
          ("unsafe", toJson info.isUnsafe),
          ("axioms", toJson (axioms.map Name.toString)),
          ("forbidden_axioms", toJson (bad.map Name.toString))]
        results := results.push entry
        if !bad.isEmpty then forbidden := forbidden.push entry
        if let .axiomInfo _ := info then directAxioms := directAxioms.push entry
        -- Use the actual Lean.Name. Numeric private-name components are retained.
        let ident := mkIdent name
        logInfo m!"ARITHMETIC_GRAM_SIGNATURE_BEGIN {name}"
        elabCommand (← `(command| #print sig $ident:ident))
        logInfo m!"ARITHMETIC_GRAM_SIGNATURE_END {name}"
        elabCommand (← `(command| #print axioms $ident:ident))
  let report := Json.mkObj [
    ("schema", toJson "formal-research/whole-maintained-axiom-environment/v1"),
    ("root_import", toJson "FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit"),
    ("selection", toJson "owning imported module is exactly FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit"),
    ("allowed_axioms", toJson #["propext", "Classical.choice", "Quot.sound"]),
    ("maintained_imported_modules", toJson
      ((modules.filter structureAuditMaintainedModule).map Name.toString)),
    ("declarations", toJson results),
    ("count", toJson results.size),
    ("forbidden_count", toJson forbidden.size),
    ("direct_axiom_count", toJson directAxioms.size),
    ("forbidden", toJson forbidden),
    ("direct_axioms", toJson directAxioms)]
  liftIO <| IO.FS.writeFile "artifacts/structure-audit/arithmetic-dirichlet-gram-environment.json"
    (report.pretty ++ "\n")
  logInfo m!"Whole maintained environment: {results.size} declarations; {forbidden.size} forbidden axiom sets; {directAxioms.size} direct axiom declarations."
  if !forbidden.isEmpty || !directAxioms.isEmpty then
    throwError "Whole maintained environment axiom audit rejected the candidate."

audit_maintained_environment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/8cad52a3590684e529473eef1e0b0cd7b5a3aa4e4a18c67c797d650f8a5bc938ArithmeticDirich/Variantab7a8481ab268f61fae99a2f791d2042e3375b5df4af984d442cddfae51f4ed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/8cad52a3590684e529473eef1e0b0cd7b5a3aa4e4a18c67c797d650f8a5bc938ArithmeticDirich/Variantab7a8481ab268f61fae99a2f791d2042e3375b5df4af984d442cddfae51f4ed0.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea655c05e3b43c90f5b324c4173f5e86aa9dc71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
