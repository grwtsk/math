# withInlining

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c409e84b7941a92bae2d8f8712902951867d04b659cf03c5040b90014a012586",
  "kind": "def",
  "lexical_name": "withInlining",
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
  "slug": "withinlining--4b7d414a9d10b54f4bf34add",
  "source": {
    "blob": "83844781faf121c82e311269ae9e7550907e9db5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Varianta7e03fc32eb92ca1f91e9b48ac73c4d858b030602df353a25c7aab1c09183208.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b7d414a9d10b54f4bf34add65707aa70469c2eb5af59a7a527b90c8f8bec9b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Varianta7e03fc32eb92ca1f91e9b48ac73c4d858b030602df353a25c7aab1c09183208.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c409e84b7941a92bae2d8f8712902951867d04b659cf03c5040b90014a012586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def withInlining (value : LetValue .pure) (recursive : Bool) (x : SimpM α) : SimpM α := do
  if let .const declName _ _ := value then
    let numOccs ← check declName
    withReader (fun ctx => { ctx with inlineStack := declName :: ctx.inlineStack, inlineStackOccs := ctx.inlineStackOccs.insert declName numOccs }) x
  else
    x
where
  check (declName : Name) : SimpM Nat := do
    trace[Compiler.simp.inline] "{.ofConstName declName}"
    let numOccs := (← read).inlineStackOccs.find? declName |>.getD 0
    let numOccs := numOccs + 1
    let inlineIfReduce ← if let some ⟨_, decl⟩ ← getDecl? declName then pure decl.inlineIfReduceAttr else pure false
    if recursive && inlineIfReduce && numOccs > (← getConfig).maxRecInlineIfReduce then
      throwError "function `{.ofConstName declName}` has been recursively inlined more than #{(← getConfig).maxRecInlineIfReduce}, consider removing the attribute `[inline_if_reduce]` from this declaration or increasing the limit using `set_option compiler.maxRecInlineIfReduce <num>`"
    return numOccs

/--
Similar to the default `Lean.withIncRecDepth`, but include the `inlineStack` in the error message.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Varianta7e03fc32eb92ca1f91e9b48ac73c4d858b030602df353a25c7aab1c09183208.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Varianta7e03fc32eb92ca1f91e9b48ac73c4d858b030602df353a25c7aab1c09183208.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83844781faf121c82e311269ae9e7550907e9db5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
