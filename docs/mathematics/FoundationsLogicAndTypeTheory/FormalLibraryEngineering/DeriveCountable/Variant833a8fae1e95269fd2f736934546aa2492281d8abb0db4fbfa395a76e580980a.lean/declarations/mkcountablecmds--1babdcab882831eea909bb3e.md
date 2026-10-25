# mkCountableCmds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2217b117d51b3a00d2241141b91367436d5a0a99ce9ab5d19193088fe8228cee",
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
  "slug": "mkcountablecmds--1babdcab882831eea909bb3e",
  "source": {
    "blob": "8c7f7f49532428ff4307448e2112f3d86caa7138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 246,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1babdcab882831eea909bb3ec57c6d3afa1bb5dc904a2ee9188b5c21ca4fcf0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2217b117d51b3a00d2241141b91367436d5a0a99ce9ab5d19193088fe8228cee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkCountableCmds (indVal : InductiveVal) (declNames : Array Name) :
    TermElabM (Array Syntax) := do
  let ctx ← mkContext "countable" indVal.name
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant833a8fae1e95269fd2f736934546aa2492281d8abb0db4fbfa395a76e580980a.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c7f7f49532428ff4307448e2112f3d86caa7138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
