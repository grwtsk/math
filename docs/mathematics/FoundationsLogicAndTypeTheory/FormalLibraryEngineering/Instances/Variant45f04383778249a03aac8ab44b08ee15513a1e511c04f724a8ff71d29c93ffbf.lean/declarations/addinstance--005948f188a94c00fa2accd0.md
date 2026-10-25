# addInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:701358c646beb795a41a81c605860f2a8845b4a5b7433cd4862a654244cc4ac4",
  "kind": "def",
  "lexical_name": "addInstance",
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
  "slug": "addinstance--005948f188a94c00fa2accd0",
  "source": {
    "blob": "98ed55bb22bb9d5af101bc354753b0b7f629b730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:005948f188a94c00fa2accd0fc930543b83b43bf5f1c28dbf63714b793559298",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:701358c646beb795a41a81c605860f2a8845b4a5b7433cd4862a654244cc4ac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def addInstance (declName : Name) (attrKind : AttributeKind) (prio : Nat) : MetaM Unit := do
  let c ← mkConstWithLevelParams declName
  let cinfo ← getConstInfo declName
  -- If there is a sorry, we skip the `NonClassInstance` and `ImpossibleInstance` checks completely
  unless cinfo.type.hasSorry do
    checkNonClassInstance c
    checkImpossibleInstance cinfo
  let keys ← mkInstanceKey c
  let status ← getReducibilityStatus declName
  if status == .semireducible then do
    let info ← getConstInfo declName
    if info.isDefinition then
      if warnClassDefReducibility.get (← getOptions) then
        logWarning m!"Definition `{declName}` of class type is semireducible. \
Most type class instances should be instance-reducible, so consider marking this
definition with `@[instance_reducible]`. If it is intentionally semireducible, \
this warning can be disabled with `set_option warn.classDefReducibility false`."
    else if wasOriginallyDefn (← getEnv) declName then
      logWarning m!"instance `{declName}` must be marked with `@[expose]`"
  let projInfo? ← getProjectionFnInfo? declName
  let synthOrder ← computeSynthOrder c projInfo?
  instanceExtension.add { keys, val := c, priority := prio, globalName? := declName, attrKind, synthOrder } attrKind

/-
Adds instance **and** marks it with reducibility status `@[instance_reducible]`. We use this function
to elaborate `instance` command.

**Note**: We used to check whether `declName` had `instance` reducibility by using `isInstance declName`.
However, this was not a robust solution because:

- We have scoped instances, and `isInstance declName` returns true only if the scope is active.

- We have auxiliary declarations used to construct instances manually, such as:
  ```
  def lt_wfRel : WellFoundedRelation Nat
  ```
  `isInstance` also returns `false` for this kind of declaration.

In both cases, the declaration may be (or may have been) used to construct an instance, but `isInstance`
returns `false`. We claim it is a mistake to check the reducibility status using `isInstance`.
`isInstance` indicates whether a declaration is available for the type class resolution mechanism,
not its transparency status.

Thus, we added a new transparency setting and set it here.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ed55bb22bb9d5af101bc354753b0b7f629b730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
