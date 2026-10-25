# mkCountableCmds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fabc2255a7e841cf3bf8c142583e334ff2af36024a128336d6f94e7b17c12080",
  "kind": "def",
  "lexical_name": "mkCountableCmds",
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
  "slug": "mkcountablecmds--5323a6e667aea747b05dadb3",
  "source": {
    "blob": "7e0e7c6c15bea1ea7e0e2ce77971c5f4a8c1b23a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant40c22cdebab6fca8556fd8f6008a6c8febc0cafd37be8cd937cbf6a127a86154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5323a6e667aea747b05dadb3ace0988376249670e5070d6a4dea9034ed1bc3f9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant40c22cdebab6fca8556fd8f6008a6c8febc0cafd37be8cd937cbf6a127a86154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fabc2255a7e841cf3bf8c142583e334ff2af36024a128336d6f94e7b17c12080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkCountableCmds (indVal : InductiveVal) (declNames : Array Name) :
    TermElabM (Array Syntax) := do
  let ctx ← mkContext ``Countable "countable" indVal.name
  let toNatFunNames : Array Name ← ctx.auxFunNames.mapM fun name => do
    let .str n' s := name.eraseMacroScopes | unreachable!
    mkFreshUserName <| .str n' (s ++ "ToNat")
  let cmds := #[← mkToNatFuns ctx toNatFunNames, ← mkInjThms ctx toNatFunNames]
    ++ (← mkCountableInstanceCmds ctx declNames)
  trace[Mathlib.Deriving.countable] "\n{cmds}"
  return cmds

open Command

/--
The deriving handler for the `Countable` class.
Handles non-nested non-reflexive inductive types.
They can be mutual too — in that case, there is an optimization to re-use all the generated
functions and proofs.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant40c22cdebab6fca8556fd8f6008a6c8febc0cafd37be8cd937cbf6a127a86154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant40c22cdebab6fca8556fd8f6008a6c8febc0cafd37be8cd937cbf6a127a86154.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e0e7c6c15bea1ea7e0e2ce77971c5f4a8c1b23a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
