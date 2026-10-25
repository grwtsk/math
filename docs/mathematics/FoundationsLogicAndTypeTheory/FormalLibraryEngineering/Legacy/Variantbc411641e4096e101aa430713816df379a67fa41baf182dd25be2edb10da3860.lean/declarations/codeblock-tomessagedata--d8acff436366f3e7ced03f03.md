# CodeBlock.toMessageData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6e3673efb4f3964da3edc24c4c841d7c036d50af23f7b2d2a434e40dd05846d",
  "kind": "def",
  "lexical_name": "CodeBlock.toMessageData",
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
  "slug": "codeblock-tomessagedata--d8acff436366f3e7ced03f03",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8acff436366f3e7ced03f036066b589e2bdfe0136591f56e094ba613b2dd8d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6e3673efb4f3964da3edc24c4c841d7c036d50af23f7b2d2a434e40dd05846d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def CodeBlock.toMessageData (codeBlock : CodeBlock) : MessageData :=
  let us := MessageData.ofList <| (varSetToArray codeBlock.uvars).toList.map MessageData.ofSyntax
  let rec loop : Code → MessageData
    | .decl xs _ k           => m!"let {varsToMessageData xs} := ...\n{loop k}"
    | .reassign xs _ k       => m!"{varsToMessageData xs} := ...\n{loop k}"
    | .joinpoint n ps body k => m!"let {n.simpMacroScopes} {varsToMessageData (ps.map Prod.fst)} := {indentD (loop body)}\n{loop k}"
    | .seq e k               => m!"{e}\n{loop k}"
    | .action e              => e
    | .ite _ _ _ c t e       => m!"if {c} then {indentD (loop t)}\nelse{loop e}"
    | .jmp _ j xs            => m!"jmp {j.simpMacroScopes} {xs.toList}"
    | .break _               => m!"break {us}"
    | .continue _            => m!"continue {us}"
    | .return _ v            => m!"return {v} {us}"
    | .match _ _ ds _ alts   =>
      m!"match {ds} with"
      ++ alts.foldl (init := m!"") fun acc alt => acc ++ m!"\n| {alt.patterns} => {loop alt.rhs}"
    | .matchExpr _ «meta» d alts elseCode =>
      let r := m!"match_expr {if «meta» then "" else "(meta := false)"} {d} with"
      let r := r ++ alts.foldl (init := m!"") fun acc alt =>
            let acc := acc ++ m!"\n| {if let some var := alt.var? then m!"{var}@" else ""}"
            let acc := acc ++ m!"{alt.funName}"
            let acc := acc ++ alt.pvars.foldl (init := m!"") fun acc pvar => acc ++ m!" {pvar}"
            acc ++ m!" => {loop alt.rhs}"
      r ++ m!"| _ => {loop elseCode}"
  loop codeBlock.code

/-- Return true if the give code contains an exit point that satisfies `p` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
