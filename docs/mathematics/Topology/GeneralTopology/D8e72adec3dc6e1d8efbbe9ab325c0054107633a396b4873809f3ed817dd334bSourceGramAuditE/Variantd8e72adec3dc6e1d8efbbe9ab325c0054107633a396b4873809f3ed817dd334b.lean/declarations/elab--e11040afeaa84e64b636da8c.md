# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d8ce7806b6d9d349e00d55159d9d7506c920e5c36150afb6b7e3a25b69deb1a",
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
  "slug": "elab--e11040afeaa84e64b636da8c",
  "source": {
    "blob": "cb68722f23fbe96c0b5e48e93159add8f0c167fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/D8e72adec3dc6e1d8efbbe9ab325c0054107633a396b4873809f3ed817dd334bSourceGramAuditE/Variantd8e72adec3dc6e1d8efbbe9ab325c0054107633a396b4873809f3ed817dd334b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e11040afeaa84e64b636da8cc44b29a3f0198d4be2ed24bc971f194a4692e684",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/D8e72adec3dc6e1d8efbbe9ab325c0054107633a396b4873809f3ed817dd334bSourceGramAuditE/Variantd8e72adec3dc6e1d8efbbe9ab325c0054107633a396b4873809f3ed817dd334b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d8ce7806b6d9d349e00d55159d9d7506c920e5c36150afb6b7e3a25b69deb1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–81.

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
        logInfo m!"BOUNDARY_SIGNATURE_BEGIN {name}"
        elabCommand (← `(command| #print sig $ident:ident))
        logInfo m!"BOUNDARY_SIGNATURE_END {name}"
        elabCommand (← `(command| #print axioms $ident:ident))
  let report := Json.mkObj [
    ("schema", toJson "formal-research/whole-maintained-axiom-environment/v1"),
    ("root_import", toJson "FormalResearch.RiemannHypothesis.SourceGramAudit"),
    ("selection", toJson "owning imported module is exactly FormalResearch.RiemannHypothesis.SourceGramAudit"),
    ("allowed_axioms", toJson #["propext", "Classical.choice", "Quot.sound"]),
    ("maintained_imported_modules", toJson
      ((modules.filter structureAuditMaintainedModule).map Name.toString)),
    ("declarations", toJson results),
    ("count", toJson results.size),
    ("forbidden_count", toJson forbidden.size),
    ("direct_axiom_count", toJson directAxioms.size),
    ("forbidden", toJson forbidden),
    ("direct_axioms", toJson directAxioms)]
  liftIO <| IO.FS.writeFile "artifacts/structure-audit/intrinsic-source-gram-environment.json"
    (report.pretty ++ "\n")
  logInfo m!"Whole maintained environment: {results.size} declarations; {forbidden.size} forbidden axiom sets; {directAxioms.size} direct axiom declarations."
  if !forbidden.isEmpty || !directAxioms.isEmpty then
    throwError "Whole maintained environment axiom audit rejected the candidate."

audit_maintained_environment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/D8e72adec3dc6e1d8efbbe9ab325c0054107633a396b4873809f3ed817dd334bSourceGramAuditE/Variantd8e72adec3dc6e1d8efbbe9ab325c0054107633a396b4873809f3ed817dd334b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/D8e72adec3dc6e1d8efbbe9ab325c0054107633a396b4873809f3ed817dd334bSourceGramAuditE/Variantd8e72adec3dc6e1d8efbbe9ab325c0054107633a396b4873809f3ed817dd334b.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb68722f23fbe96c0b5e48e93159add8f0c167fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
