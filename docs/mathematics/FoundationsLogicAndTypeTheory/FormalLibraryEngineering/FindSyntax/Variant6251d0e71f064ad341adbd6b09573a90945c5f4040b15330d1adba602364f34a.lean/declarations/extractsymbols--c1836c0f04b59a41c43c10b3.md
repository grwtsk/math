# extractSymbols

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d12c972071b92117ddd084f394f7e313019a52adf6fc7568dfc56f6ab95a4ae1",
  "kind": "def",
  "lexical_name": "extractSymbols",
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
  "slug": "extractsymbols--c1836c0f04b59a41c43c10b3",
  "source": {
    "blob": "ff85b46c91d60f8431405ab3aac98e7545357952",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindSyntax/Variant6251d0e71f064ad341adbd6b09573a90945c5f4040b15330d1adba602364f34a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1836c0f04b59a41c43c10b3b0cb0e9bcc71678e5f13de9a04039cf9ddaf072d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindSyntax/Variant6251d0e71f064ad341adbd6b09573a90945c5f4040b15330d1adba602364f34a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d12c972071b92117ddd084f394f7e313019a52adf6fc7568dfc56f6ab95a4ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extractSymbols : Expr → Array Expr
  | .app a b =>
    let rest := extractSymbols a ++ extractSymbols b
    match a.constName with
      | ``Lean.ParserDescr.symbol | ``Lean.ParserDescr.nonReservedSymbol => rest.push b
      | _ => rest
  | .letE _ a b c _ => extractSymbols a ++ extractSymbols b ++ extractSymbols c
  | .lam _ a b _ => extractSymbols a ++ extractSymbols b
  | .forallE _ a b _ => extractSymbols a ++ extractSymbols b
  | .mdata _ a => extractSymbols a
  | .proj _ _ a => extractSymbols a
  | _ => #[]

/--
`litToString expr` converts the input `Expr`ession `expr` into the "natural" string that
it corresponds to, in case `expr` is a `String`/`Nat`-literal, returning the empty string `""`
otherwise.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindSyntax/Variant6251d0e71f064ad341adbd6b09573a90945c5f4040b15330d1adba602364f34a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindSyntax/Variant6251d0e71f064ad341adbd6b09573a90945c5f4040b15330d1adba602364f34a.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff85b46c91d60f8431405ab3aac98e7545357952` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
