# inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66435b44cf31ef6350fbf7392511bf31225bc22ea63e6de5f2c41554b1c2eb48",
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
  "slug": "inventory--5cd8da20dc2acfc16cb802d9",
  "source": {
    "blob": "63bf890d8f3f0a0f43b651d49097895079d1e1f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbeb3b459a5f8e5249c2d6b816018ed1aa121cd7c0b61608915d6bd84c1d101c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cd8da20dc2acfc16cb802d9de636dd0e990aff1090d74e9c321cd8c7cc1aae6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbeb3b459a5f8e5249c2d6b816018ed1aa121cd7c0b61608915d6bd84c1d101c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66435b44cf31ef6350fbf7392511bf31225bc22ea63e6de5f2c41554b1c2eb48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inventory (env : Environment) (root : Name) : IO Json := do
  let context : Core.Context :=
    { fileName := "<formal-inventory>", fileMap := default,
      options := ({} : Options).setBool `pp.universes true |>.setBool `pp.fullNames true }
  let mut coreState : Core.State := { env := env }
  let mut metaState : Meta.State := {}
  let names := env.constants.fold (fun ns n _ =>
    if (moduleFor env n).startsWith "Riemann" then ns.push n else ns) (#[] : Array Name)
    |>.qsort Name.lt
  let mut declarations : Array Json := #[]
  for n in names do
    let some c := env.find? n | throw <| IO.userError "missing compiled declaration"
    let ((result, nextMetaState), nextCoreState) ←
      ((boundedObservation env c).run {} metaState).toIO context coreState
    declarations := declarations.push result
    metaState := nextMetaState
    coreState := nextCoreState
  let some target := env.find? `RiemannHypothesis |
    throw <| IO.userError "literal Mathlib target is missing"
  let ((targetObservation, _), _) ←
    ((boundedObservation env target).run {} metaState).toIO context coreState
  let modules := env.header.moduleNames.mapIdx fun i n => Json.mkObj [
    ("name", toJson n.toString),
    ("directImports", toJson (env.header.moduleData[i]!.imports.map (·.module.toString)))]
  return Json.mkObj [
    ("schema", "riemann.compiled-observations/v1"), ("leanVersion", toJson Lean.versionString),
    ("root", toJson root.toString), ("modules", .arr modules),
    ("declarations", .arr declarations), ("target", targetObservation),
    ("canonicalEndpointPresent", toJson ((env.find? `Riemann.Canonical.Main).isSome))]

end RiemannAudit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbeb3b459a5f8e5249c2d6b816018ed1aa121cd7c0b61608915d6bd84c1d101c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantbeb3b459a5f8e5249c2d6b816018ed1aa121cd7c0b61608915d6bd84c1d101c5.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63bf890d8f3f0a0f43b651d49097895079d1e1f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
