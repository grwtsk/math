# TerminationMeasure.elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c48f7293d3637adb6658d72c95a2be703b421ebabf238fd4a0ea2607b5a825d3",
  "kind": "def",
  "lexical_name": "TerminationMeasure.elab",
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
  "slug": "terminationmeasure-elab--b6e93d838c14948af4aa1747",
  "source": {
    "blob": "dc1af642e40df11c9fd800aef65914851e877af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6e93d838c14948af4aa17474af2399bc12900639b90fe89f81b10f19e3dba0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c48f7293d3637adb6658d72c95a2be703b421ebabf238fd4a0ea2607b5a825d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TerminationMeasure.elab (funName : Name) (type : Expr) (arity extraParams : Nat)
    (hint : TerminationBy) : TermElabM TerminationMeasure := withDeclName funName do
  assert! extraParams ≤ arity
  if h : hint.vars.size > extraParams then
    let mut msg := m!"{parameters hint.vars.size} bound in `termination_by`, but the body of " ++
      m!"{funName} only binds {parameters extraParams}."
    if let `($ident:ident) := hint.vars[0] then
      if ident.getId.isSuffixOf funName then
          msg := msg ++ m!" (Since Lean v4.6.0, the `termination_by` clause no longer " ++
            "expects the function name here.)"
    throwErrorAt hint.ref msg

  -- Bring parameters before the colon into scope
  let r ← withoutErrToSorry <|
    forallBoundedTelescope (cleanupAnnotations := true) type (arity - extraParams) fun ys type' => do
      -- Bring the variables bound by `termination_by` into scope.
      elabFunBinders hint.vars (some type') fun xs type' => do
        -- Elaborate the body in this local environment
        let body ← Lean.Elab.Term.withSynthesize <| elabTermEnsuringType hint.body none

        -- Structural recursion: The body has to be a single parameter, whose index we return
        if hint.structural then unless (ys ++ xs).contains body do
          let params := MessageData.andList ((ys ++ xs).toList.map (m!"'{·}'"))
          throwErrorAt hint.ref m!"The termination measure of a structurally recursive " ++
            m!"function must be one of the parameters {params}, but{indentExpr body}\nisn't " ++
            m!"one of these."

        -- Now abstract also over the remaining extra parameters
        forallBoundedTelescope type'.get! (extraParams - hint.vars.size) fun zs _ => do
          mkLambdaFVars (ys ++ xs ++ zs) body
  check r
  pure { ref := hint.ref, structural := hint.structural, fn := r}
  where
    parameters : Nat → MessageData
    | 1 => "one parameter"
    | n => m!"{n} parameters"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1af642e40df11c9fd800aef65914851e877af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
