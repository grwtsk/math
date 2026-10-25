# mkEncodableCmds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c91c576b125857ba914cbe98881c1673f384634431bac8860c82ea3c38a2e363",
  "kind": "def",
  "lexical_name": "mkEncodableCmds",
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
  "slug": "mkencodablecmds--5c9c0e8ff8c5eeea0c2e0b5c",
  "source": {
    "blob": "fcc9a7d47514df1eecb2e6f85eb24d6acedc65f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c9c0e8ff8c5eeea0c2e0b5c3206cb9a628d973b498d10f1111321d4aa4d400d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c91c576b125857ba914cbe98881c1673f384634431bac8860c82ea3c38a2e363`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkEncodableCmds (indVal : InductiveVal) (declNames : Array Name) :
    TermElabM (Array Syntax) := do
  let ctx ← mkContext "encodable" indVal.name
  let toSFunNames : Array Name ← ctx.auxFunNames.mapM fun name => do
    let .str n' s := name.eraseMacroScopes | unreachable!
    mkFreshUserName <| .str n' (s ++ "_toS")
  let fromSFunNames : Array Name ← ctx.auxFunNames.mapM fun name => do
    let .str n' s := name.eraseMacroScopes | unreachable!
    mkFreshUserName <| .str n' (s ++ "_fromS")
  let cmds :=
    #[← mkToSFuns ctx toSFunNames,
      ← mkFromSFuns ctx fromSFunNames,
      ← mkInjThms ctx toSFunNames fromSFunNames]
    ++ (← mkEncodableInstanceCmds ctx declNames toSFunNames fromSFunNames)
  trace[Mathlib.Deriving.encodable] "\n{cmds}"
  return cmds

open Command

/--
The deriving handler for the `Encodable` class.
Handles non-nested non-reflexive inductive types.
They can be mutual too — in that case, there is an optimization to re-use all the generated
functions and proofs.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcc9a7d47514df1eecb2e6f85eb24d6acedc65f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
