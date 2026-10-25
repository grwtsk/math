# dependencyClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab5cdc6c1b5174ec55de05c76a8c5c40071c5fc4fe7654e594686863c3e2c823",
  "kind": "def",
  "lexical_name": "dependencyClosure",
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
  "slug": "dependencyclosure--8cd44e7713e4b248dda00b8d",
  "source": {
    "blob": "23fe21148ee796f9459ae9a39cfc62d243b6c995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cd44e7713e4b248dda00b8d006012a02b149f8eafbc481e331d541deca39e87",
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

Occurrence: `declaration:ab5cdc6c1b5174ec55de05c76a8c5c40071c5fc4fe7654e594686863c3e2c823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dependencyClosure (ownershipRoot : Name) (displayName : String) : CoreM Json := do
  let env ← getEnv
  let candidates := env.constants.toList.filter fun (name, _) => name.toString == displayName
  let [(root, _)] := candidates | throwError "missing or ambiguous declaration"
  let visited ← reachableDependencies [root]
  let describe (name : Name) : CoreM Json := do
    let some ci := env.find? name | throwError "missing dependency"
    let some index := env.getModuleIdxFor? name | throwError "missing dependency owner"
    let owner := env.header.moduleNames[index.toNat]!
    pure <| obj [("name", str name.toString), ("name_parts", nameJson name),
      ("kind", str (kernelKind ci)), ("module", str owner.toString),
      ("ownership", str (if owned ownershipRoot owner then "owned" else "dependency"))]
  let allNames := visited.toArray.qsort fun a b => a.toString < b.toString
  let axioms := allNames.filter fun name => (env.find? name).any (fun ci => ci.isAxiom)
  pure <| obj [("root", nameJson root), ("dependencies", arr (← (allNames.filter (· != root)).mapM describe)),
    ("axioms", arr (← axioms.mapM describe)),
    ("semantics", str "transitive-type-value-projection-and-inductive-kernel-dependencies-v1")]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Varianta13ca41fbc619e8c45556eeaa96e8c3276379c77a1ceed22b19d32151237aede.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23fe21148ee796f9459ae9a39cfc62d243b6c995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
