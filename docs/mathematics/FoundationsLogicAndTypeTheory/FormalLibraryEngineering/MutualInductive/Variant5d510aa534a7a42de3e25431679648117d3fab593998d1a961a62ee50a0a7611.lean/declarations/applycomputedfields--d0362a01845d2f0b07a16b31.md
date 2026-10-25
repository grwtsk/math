# applyComputedFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aac70cf2bb3ad86b17f337efaa10acc0662940e3b5604e75c44675ab74d28bd1",
  "kind": "def",
  "lexical_name": "applyComputedFields",
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
  "slug": "applycomputedfields--d0362a01845d2f0b07a16b31",
  "source": {
    "blob": "2f896ef31359aad0ee273d30032f02e843781076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1656,
    "line": 1630,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0362a01845d2f0b07a16b3102a56d4c870e01f4e4b74562cff09f78d566261f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aac70cf2bb3ad86b17f337efaa10acc0662940e3b5604e75c44675ab74d28bd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1630–1656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applyComputedFields (indViews : Array InductiveView) : CommandElabM Unit := do
  if indViews.all (·.computedFields.isEmpty) then return

  let mut computedFields := #[]
  let mut computedFieldDefs := #[]
  for indView@{declName, ..} in indViews do
    for {ref, fieldId, type, matchAlts, modifiers, ..} in indView.computedFields do
      computedFieldDefs := computedFieldDefs.push <| ← do
        let modifiers ← match modifiers with
          | `(Lean.Parser.Command.declModifiersT| $[$doc:docComment]? $[$attrs:attributes]? $[$vis]? $[protected%$protectedTk]? $[noncomputable]?) =>
            `(Lean.Parser.Command.declModifiersT| $[$doc]? $[$attrs]? $[$vis]? $[protected%$protectedTk]? noncomputable)
          | _ => do
            withRef modifiers do logError "Unsupported modifiers for computed field"
            `(Parser.Command.declModifiersT| noncomputable)
        `($(⟨modifiers⟩):declModifiers
          def%$ref $(mkIdent <| `_root_ ++ declName ++ fieldId):ident : $type $matchAlts:matchAlts)
    let computedFieldNames := indView.computedFields.map fun {fieldId, ..} => declName ++ fieldId
    computedFields := computedFields.push (declName, computedFieldNames)
  withScope (fun scope => { scope with
      opts := scope.opts
        |>.set `bootstrap.genMatcherCode false
        |>.set `elaboratingComputedFields true}) <|
    elabCommand <| ← `(mutual $computedFieldDefs* end)

  liftTermElabM do Term.withDeclName indViews[0]!.declName do
    ComputedFields.setComputedFields computedFields

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean#L1630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f896ef31359aad0ee273d30032f02e843781076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
