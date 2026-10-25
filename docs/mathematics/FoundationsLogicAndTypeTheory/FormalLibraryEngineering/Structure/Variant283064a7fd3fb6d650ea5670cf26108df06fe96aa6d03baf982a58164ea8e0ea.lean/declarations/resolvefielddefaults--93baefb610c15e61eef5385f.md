# resolveFieldDefaults

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cd4330f4ef0b57f988db172ac8f46c5741a59b6e6c1d6038a574239882d4b1e",
  "kind": "def",
  "lexical_name": "resolveFieldDefaults",
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
  "slug": "resolvefielddefaults--93baefb610c15e61eef5385f",
  "source": {
    "blob": "a1c91bd6fe151224d413a2c083e3d0385d2386eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1353,
    "line": 1321,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93baefb610c15e61eef5385f6a38ed363ea55e40d1a7864a462d9c3b4f1a9eb7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cd4330f4ef0b57f988db172ac8f46c5741a59b6e6c1d6038a574239882d4b1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1321–1353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def resolveFieldDefaults (structName : Name) : StructElabM Unit := do
  -- Resolve the order, but don't report any resolution order issues at this point.
  -- We will do that in `checkResolutionOrder`, which is after the structure is registered.
  let { resolutionOrder, .. } ← mergeStructureResolutionOrders structName ((← get).parents.map (·.structName)) (relaxed := true)
  let mut resOrderMap : NameMap Nat := {}
  for h : i in *...resolutionOrder.size do
    resOrderMap := resOrderMap.insert resolutionOrder[i] i
  for fieldInfo in (← get).fields do
    if fieldInfo.default?.isSome then
      replaceFieldInfo { fieldInfo with resolvedDefault? := fieldInfo.default? }
    else if !fieldInfo.inheritedDefaults.isEmpty then
      let inheritedDefaults := fieldInfo.inheritedDefaults.insertionSort fun d1 d2 => resOrderMap.get! d1.1 < resOrderMap.get! d2.1
      trace[Elab.structure] "inherited defaults for '{fieldInfo.name}' are {repr inheritedDefaults}"
      replaceFieldInfo { fieldInfo with
        inheritedDefaults
        resolvedDefault? := inheritedDefaults[0]?.map (·.2)
      }

/--
Adds declarations representing default values to the environment.

- Default values introduced for this structure specifically are registered under the name given by `mkDefaultFnOfProjFn`
- Default values inherited by this structure are registered under the name given by `mkInheritedDefaultFnOfProjFn`

Having both is how we are able to handle diamond inheritance of default values.
When a `structure` extends other structures, only the first type of default values are considered.

In both cases, the default values take the fields as arguments, and everything is suitably normalized.
It used to be that subobject fields would appear as fields too, but that required
the structure instance notation elaborator to do reductions when making use of default values.
This arrangement of having declarations for all inherited values also makes
the structure instance notation delaborator able to omit default values reliably.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean#L1321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c91bd6fe151224d413a2c083e3d0385d2386eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
