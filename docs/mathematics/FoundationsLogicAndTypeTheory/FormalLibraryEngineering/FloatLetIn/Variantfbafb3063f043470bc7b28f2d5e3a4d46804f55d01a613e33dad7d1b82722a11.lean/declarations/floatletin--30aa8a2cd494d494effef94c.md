# floatLetIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30c9dc51be8865a469b56f0b3b85594ef84b35973ad527f05e2b2fdd84a265db",
  "kind": "def",
  "lexical_name": "floatLetIn",
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
  "slug": "floatletin--30aa8a2cd494d494effef94c",
  "source": {
    "blob": "231bf52cfeacaa53d0f74916accf9a9f1764ea06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 284,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30aa8a2cd494d494effef94c1a7dd3a59a59bce16578a23c26a6b45f7a150fdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30c9dc51be8865a469b56f0b3b85594ef84b35973ad527f05e2b2fdd84a265db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def floatLetIn (decl : Decl .pure) : CompilerM (Decl .pure) := do
  let newValue ← decl.value.mapCodeM go |>.run {}
  return { decl with value := newValue }
where
  /--
  Iterate through the collected declarations,
  determining from the bottom up whether they (and the declarations they refer to)
  should get moved down into the arms of the cases statement or not.
  -/
  goCases : FloatM Unit := do
    for decl in (← read).decls do
      let currentDecision := (← get).decision[decl.fvarId]!
      if currentDecision == .unknown then
        /-
        If the decision is still unknown by now this means `decl` is
        unused in its continuation and can hence be removed.
        -/
        eraseCodeDecl decl
      else if currentDecision == .dont then
        dontFloat decl
      else
        float decl

  go (code : Code .pure) : BaseFloatM (Code .pure) := do
    match code with
    | .let decl k =>
      withNewCandidate (.let decl) do
        go k
    | .jp decl k =>
      let value ← withNewScope do
        go decl.value
      let decl ← decl.updateValue value
      withNewCandidate (.jp decl) do
        go k
    | .fun decl k =>
      let value ← withNewScope do
        go decl.value
      let decl ← decl.updateValue value
      withNewCandidate (.fun decl) do
        go k
    | .cases cs =>
      let base := {
        decision := (← initialDecisions cs)
        newArms := initialNewArms cs
      }
      let (_, res) ← goCases |>.run base
      let remainders := res.newArms[Decision.dont]!
      let newAlts ← cs.alts.mapMonoM fun alt => do
        let decision := Decision.ofAlt alt
        let newCode := res.newArms[decision]!
        trace[Compiler.floatLetIn] "Size of code that was pushed into arm: {repr decision} {newCode.length}"
        let fused ← withNewScope do
          go (attachCodeDecls newCode.toArray alt.getCode)
        return alt.updateCode fused
      let mut newCases := Code.updateCases! code cs.resultType cs.discr newAlts
      return attachCodeDecls remainders.toArray newCases
    | .jmp .. | .return .. | .unreach .. =>
      return attachCodeDecls (← read).decls.toArray.reverse code

end FloatLetIn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `231bf52cfeacaa53d0f74916accf9a9f1764ea06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
