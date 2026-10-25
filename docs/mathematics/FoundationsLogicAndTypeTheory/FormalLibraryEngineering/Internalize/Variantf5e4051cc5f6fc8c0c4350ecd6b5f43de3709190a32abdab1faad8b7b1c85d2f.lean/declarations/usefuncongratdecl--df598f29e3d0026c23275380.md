# useFunCongrAtDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21731d393227c6de4b16d385300e8d1bd2d4c5303cb4548be936916c491b6a80",
  "kind": "def",
  "lexical_name": "useFunCongrAtDecl",
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
  "slug": "usefuncongratdecl--df598f29e3d0026c23275380",
  "source": {
    "blob": "30785a5302abff1277a64edfeba73f2859bb7cb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 445,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df598f29e3d0026c232753807ef8869d5b952ec48cc78b16a0bffce923fe9300",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21731d393227c6de4b16d385300e8d1bd2d4c5303cb4548be936916c491b6a80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def useFunCongrAtDecl (declName : Name) : GrindM Bool := do
  if (← hasFunCCModifier declName) then
    return true
  if (← isInstanceReducible declName) then
    /- **Note**: Instances are support elements. No `funCC` -/
    return false
  if let some projInfo ← getProjectionFnInfo? declName then
    if projInfo.fromClass then
      /- **Note**: Field of a class are treated as support elements. No `funCC`. -/
      return false
    /- **Note**: Check the type of the field. If it is a function type, use `funCC` -/
    let declInfo ← getConstInfo declName
    let isFn ← forallBoundedTelescope declInfo.type (some (projInfo.numParams + 1)) fun _ type => do
      let type ← whnf type
      return type.isForall
    return isFn
  return false

/--
Returns `true` if we should use `funCC` for `f`-applications.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30785a5302abff1277a64edfeba73f2859bb7cb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
