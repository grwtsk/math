# inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02b99c8b82f1f0935a0cc730fa831c4da5f1145aae14365fd526da64d0af1fc1",
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
  "slug": "inventory--40ac51df1c196ad8093ee988",
  "source": {
    "blob": "a4ce5bbf56672345c89cc8c366b250f574b610c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40ac51df1c196ad8093ee98891e573ded2d06ca31e07b24237656584baa81f86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02b99c8b82f1f0935a0cc730fa831c4da5f1145aae14365fd526da64d0af1fc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inventory (modules : Array String) (requested : Option String := none)
    (namespaceRoots : Array String := #["FormalResearch"]) : MetaM Json := do
  let env ← getEnv
  let mut selected : Array (Name × ConstantInfo × String) := #[]
  let mut displayed : Std.HashSet String := {}
  for (n, ci) in env.constants.toList do
    if let some index := env.getModuleIdxFor? n then
      let owner := env.header.moduleNames[index.toNat]!.toString
      if (namespaceRoots.any fun root => owner == root || owner.startsWith (root ++ ".")) &&
          (requested.isNone || requested == some n.toString) then
        unless modules.contains owner do throwError "project owner absent from exact Git source: {owner}"
        if displayed.contains n.toString then throwError "ambiguous declaration name display: {n}"
        displayed := displayed.insert n.toString
        selected := selected.push (n, ci, owner)
  let sorted := selected.qsort fun a b => a.1.toString < b.1.toString
  let rows ← sorted.mapM fun (n, ci, owner) => do
    let type ← liftExcept (expression ci.levelParams ci.type)
    let (rawKind, value, metadataValue) ← liftExcept (metadata ci)
    let axioms ← collectAxioms n
    return obj [("name", str n.toString), ("name_parts", nameJson n), ("module", str owner),
      ("kind", str (declarationKind env ci)), ("raw_kind", str rawKind), ("universe_arity", num ci.levelParams.length),
      ("type", type), ("value", value), ("metadata", metadataValue),
      ("is_proposition", toJson (← Meta.isProp ci.type)), ("axioms", toJson (axioms.map Name.toString))]
  return obj [("generator", str "lean-declaration-export-v1"), ("declarations", arr rows)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanInventory/Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4ce5bbf56672345c89cc8c366b250f574b610c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
