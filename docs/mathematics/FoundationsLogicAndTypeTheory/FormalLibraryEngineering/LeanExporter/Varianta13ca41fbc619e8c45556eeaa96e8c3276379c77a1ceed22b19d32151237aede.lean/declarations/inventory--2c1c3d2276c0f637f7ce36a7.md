# inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a3a1b803e02bd1cb9474b95b34adf4dcc925d9de14a65e18e1fa72676e4024b",
  "kind": "def",
  "lexical_name": "inventory",
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
  "slug": "inventory--2c1c3d2276c0f637f7ce36a7",
  "source": {
    "blob": "23fe21148ee796f9459ae9a39cfc62d243b6c995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c1c3d2276c0f637f7ce36a7e9b1a785434fcf428f41fcbfd705eac8dd42bbb1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a3a1b803e02bd1cb9474b95b34adf4dcc925d9de14a65e18e1fa72676e4024b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inventory (root ownershipRoot : Name) (dependencyProjections : Bool)
    (includeEvidence : Bool := false) (requested : List String := []) : CoreM Json := do
  let env ← getEnv
  let mut selected : Array (Name × ConstantInfo × Name) := #[]
  let mut displayed : Std.HashSet String := {}
  for (n, ci) in env.constants.toList do
    let some index := env.getModuleIdxFor? n
      | throwError "constant has no defining module: {n}"
    let some owner := env.header.moduleNames[index.toNat]?
      | throwError "constant has invalid defining-module index: {n}"
    if displayed.contains n.toString then throwError "ambiguous exact declaration display: {n}"
    displayed := displayed.insert n.toString
    if requested.isEmpty || requested.contains n.toString then
      selected := selected.push (n, ci, owner)
  unless requested.isEmpty || selected.size == requested.length do
    throwError "requested declaration is missing or repeated"
  let rows ← (selected.qsort fun a b => a.1.toString < b.1.toString).mapM fun (n, ci, owner) => do
    let isOwned := owned ownershipRoot owner
    let detailed := isOwned || dependencyProjections
    let projection ← if detailed then do
        let type ← liftExcept (expression ci.levelParams ci.type)
        let (kind, value, details) ← liftExcept (metadata ci)
        pure <| obj [("schema_version", num 1), ("kind", str kind),
          ("name", nameJson n), ("universe_arity", num ci.levelParams.length),
          ("type", type), ("value", value), ("metadata", details)]
      else pure Json.null
    let proof ← if detailed then match ci with
      | .thmInfo v => liftExcept (expression ci.levelParams v.value)
      | _ => pure Json.null
      else pure Json.null
    let evidence ← if includeEvidence && detailed then do
        let axioms ← collectAxioms n
        pure <| obj [("universe_parameters", names ci.levelParams),
          ("axiom_dependencies", arr ((axioms.qsort Name.lt).map fun ax =>
            obj [("name", str ax.toString), ("name_parts", nameJson ax)]))]
      else pure Json.null
    pure <| obj [("name", str n.toString), ("name_parts", nameJson n),
      ("module", str owner.toString), ("module_parts", nameJson owner),
      ("ownership", str (if isOwned then "owned" else "dependency")),
      ("kind", str (kernelKind ci)), ("projection", projection), ("theorem_proof", proof),
      ("evidence", evidence),
      ("annotations", obj [("class", toJson (isClass env n)),
        ("structure", toJson (isStructure env n)), ("instance", toJson (Meta.isInstanceCore env n))])]
  let modules ← env.header.moduleNames.mapM fun n => do
    let fields := [("name", str n.toString), ("name_parts", nameJson n),
      ("ownership", str (if owned ownershipRoot n then "owned" else "dependency"))]
    if includeEvidence then
      let path ← findOLean n
      pure <| obj (fields ++ [("olean_path", str path.toString)])
    else pure <| obj fields
  pure <| obj [("schema_version", num 1), ("exporter", str "lean-environment-export-v1"),
    ("root_module", str root.toString), ("ownership_root", str ownershipRoot.toString),
    ("dependency_projections", toJson dependencyProjections),
    ("modules", arr modules), ("declarations", arr rows)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23fe21148ee796f9459ae9a39cfc62d243b6c995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
