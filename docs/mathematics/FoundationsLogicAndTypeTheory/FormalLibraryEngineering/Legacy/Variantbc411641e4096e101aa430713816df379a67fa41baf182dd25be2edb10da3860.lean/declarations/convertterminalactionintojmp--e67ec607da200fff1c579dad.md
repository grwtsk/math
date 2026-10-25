# convertTerminalActionIntoJmp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c500c250521a3812ef8f4a4647a1b6c423aceba180dd417f199ba70827022ee9",
  "kind": "def",
  "lexical_name": "convertTerminalActionIntoJmp",
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
  "slug": "convertterminalactionintojmp--e67ec607da200fff1c579dad",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 335,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e67ec607da200fff1c579dad78c4ec438f39f980ca8ddda2ef7a6d224d38b36d",
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

Occurrence: `declaration:c500c250521a3812ef8f4a4647a1b6c423aceba180dd417f199ba70827022ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def convertTerminalActionIntoJmp (code : Code) (jp : Name) (xs : Array Var) : MacroM Code :=
  let rec loop : Code → MacroM Code
    | .decl xs stx k         => return .decl xs stx (← loop k)
    | .reassign xs stx k     => return .reassign xs stx (← loop k)
    | .joinpoint n ps b k    => return .joinpoint n ps (← loop b) (← loop k)
    | .seq e k               => return .seq e (← loop k)
    | .ite ref x? h c t e    => return .ite ref x? h c (← loop t) (← loop e)
    | .action e              => mkAuxDeclFor e fun y =>
      let ref := e
      -- We jump to `jp` with xs **and** y
      let jmpArgs := xs.push y
      return Code.jmp ref jp jmpArgs
    | .match ref g ds t alts =>
      return .match ref g ds t (← alts.mapM fun alt => do pure { alt with rhs := (← loop alt.rhs) })
    | .matchExpr ref «meta» d alts e => do
      let alts ← alts.mapM fun alt => do pure { alt with rhs := (← loop alt.rhs) }
      let e ← loop e
      return .matchExpr ref «meta» d alts e
    | c => return c
  loop code

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
