# elabDeclareSyntaxCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24f2d024414b247fc20b28cdbf04d826bdf2b1a30cee23693a4e424b9b931051",
  "kind": "def",
  "lexical_name": "elabDeclareSyntaxCat",
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
  "slug": "elabdeclaresyntaxcat--b19c76bac667e0c51bfd66a1",
  "source": {
    "blob": "26ba9576232a398d9deb7cfbf6accb85ac97720b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 307,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b19c76bac667e0c51bfd66a1cebaaf11a68ec6beb518b02f5b08dba44c479ac6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24f2d024414b247fc20b28cdbf04d826bdf2b1a30cee23693a4e424b9b931051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[builtin_command_elab syntaxCat] def elabDeclareSyntaxCat : CommandElab := fun stx => do
  let docString? := stx[0].getOptional?.map fun stx => ⟨stx⟩
  let catName    := stx[2].getId
  let catBehavior :=
    if stx[3].isNone then
      Parser.LeadingIdentBehavior.default
    else if stx[3][3].getKind == ``Parser.Command.catBehaviorBoth then
      Parser.LeadingIdentBehavior.both
    else
      Parser.LeadingIdentBehavior.symbol
  let attrName := catName.appendAfter "_parser"
  let catDeclName := ``Lean.Parser.Category ++ catName
  setEnv (← Parser.registerParserCategory (← getEnv) attrName catName catBehavior catDeclName)
  let cmd ← `($[$docString?]? public meta def $(mkIdentFrom stx[2] (`_root_ ++ catDeclName) (canonical := true)) : Lean.Parser.Category := {})
  declareSyntaxCatQuotParser catName
  elabCommand cmd

/--
  Auxiliary function for creating declaration names from parser descriptions.
  Example:
  Given
  ```
  syntax term "+" term : term
  syntax "[" sepBy(term, ", ") "]"  : term
  ```
  It generates the names `term_+_` and `term[_,]`
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ba9576232a398d9deb7cfbf6accb85ac97720b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
