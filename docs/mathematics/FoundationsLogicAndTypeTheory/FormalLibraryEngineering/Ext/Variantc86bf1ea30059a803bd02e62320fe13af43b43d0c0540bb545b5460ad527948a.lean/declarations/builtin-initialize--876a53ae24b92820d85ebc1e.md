# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecb1c9452fde03b2f7adc634dd6431f7b6dad42498af22db6615caf5306c5785",
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
  "slug": "builtin-initialize--876a53ae24b92820d85ebc1e",
  "source": {
    "blob": "9696f8a49876b9f79f9b348db541de0167786ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:876a53ae24b92820d85ebc1e8bdbdcf48602685761b1c2e9e3d928a5ba4262cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecb1c9452fde03b2f7adc634dd6431f7b6dad42498af22db6615caf5306c5785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–227.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9696f8a49876b9f79f9b348db541de0167786ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
