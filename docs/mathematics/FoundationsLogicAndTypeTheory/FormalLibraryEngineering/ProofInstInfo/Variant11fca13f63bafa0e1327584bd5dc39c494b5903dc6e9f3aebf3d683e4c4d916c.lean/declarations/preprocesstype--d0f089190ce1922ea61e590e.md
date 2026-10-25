# preprocessType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7ead3851956f5243b26d711899ec6c0e005a64752a3096e3d8e190d07386629",
  "kind": "def",
  "lexical_name": "preprocessType",
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
  "slug": "preprocesstype--d0f089190ce1922ea61e590e",
  "source": {
    "blob": "fef082357b474373719e585343711cc66d15018a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0f089190ce1922ea61e590e7d8a7075dbf14a287af97dca6117708cd114d328",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7ead3851956f5243b26d711899ec6c0e005a64752a3096e3d8e190d07386629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def preprocessType (type : Expr) (zetaReduceLHSOnly := false) : MetaM Expr := do
  let type ← Sym.unfoldReducible type
  let type ← Core.betaReduce type
  let type ← if zetaReduceLHSOnly then
    forallTelescope type fun xs body => do
      match_expr body with
      | f@Eq α lhs rhs => mkForallFVars xs <| mkApp3 f α (← zetaReduce lhs) rhs
      | f@Iff lhs rhs => mkForallFVars xs <| mkApp2 f (← zetaReduce lhs) rhs
      | _ => zetaReduce type
  else
    zetaReduce type
  etaReduceAll type

/--
Analyzes whether the given free variables (aka arguments) are proofs or instances.
Returns `none` if no arguments are proofs or instances.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofInstInfo/Variant11fca13f63bafa0e1327584bd5dc39c494b5903dc6e9f3aebf3d683e4c4d916c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fef082357b474373719e585343711cc66d15018a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
