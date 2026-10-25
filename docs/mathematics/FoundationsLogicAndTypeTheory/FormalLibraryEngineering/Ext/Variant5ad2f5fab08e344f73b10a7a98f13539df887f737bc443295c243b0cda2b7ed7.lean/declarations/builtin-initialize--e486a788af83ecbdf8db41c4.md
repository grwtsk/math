# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:321accbe0eef5fa08900f3c7fcdde7046f6a481481a596093e7a6340081299d2",
  "kind": "builtin_initialize",
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
  "slug": "builtin-initialize--e486a788af83ecbdf8db41c4",
  "source": {
    "blob": "526ed04905f730e568144cbf0043f439a6d86651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e486a788af83ecbdf8db41c4244ceff72dfa3d65af6de3acfd8a94f241d09149",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:321accbe0eef5fa08900f3c7fcdde7046f6a481481a596093e7a6340081299d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize registerBuiltinAttribute {
  name := `ext
  descr := "Marks a theorem as an extensionality theorem"
  add := fun declName stx kind => MetaM.run' <| TermElabM.run' do
    let `(attr| ext $[(iff := false%$iffFalse?)]? $[(flat := false%$flatFalse?)]? $(prio)?) := stx
      | throwError "Invalid `[ext]` attribute syntax"
    let iff := iffFalse?.isNone
    let flat := flatFalse?.isNone
    let mut declName := declName
    if isStructure (← getEnv) declName then
      declName ← withRef stx <| realizeExtTheorem declName flat
    else if let some stx := flatFalse? then
      throwErrorAt stx "Unexpected `flat` configuration on `[ext]` theorem"
    -- Validate and add theorem to environment extension
    let declTy := (← getConstInfo declName).type
    let (_, _, declTy) ← withDefault <| forallMetaTelescopeReducing declTy
    let failNotEq := throwError "\
      `[ext]` attribute only applies to structures and to theorems proving `x = y` where `x` and `y` are variables, \
      but this theorem proves{indentD declTy}"
    let some (ty, lhs, rhs) := declTy.eq? | failNotEq
    unless lhs.isMVar && rhs.isMVar do failNotEq
    let keys ← withReducible <| DiscrTree.mkPath ty
    let priority ← liftMacroM <| evalPrio (prio.getD (← `(prio| default)))
    extExtension.add {declName, keys, priority} kind
    -- Realize iff theorem
    if iff then
      discard <| withRef stx <| realizeExtIffTheorem declName
  erase := fun declName => do
    let s := extExtension.getState (← getEnv)
    let s ← s.erase declName
    modifyEnv fun env => extExtension.modifyState env fun _ => s
}


/-!
### Implementation of `ext` tactic
-/

/-- Apply a single extensionality theorem to `goal`. -/
-- Tis is public for now as it is used internally in `aesop`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant5ad2f5fab08e344f73b10a7a98f13539df887f737bc443295c243b0cda2b7ed7.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `526ed04905f730e568144cbf0043f439a6d86651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
