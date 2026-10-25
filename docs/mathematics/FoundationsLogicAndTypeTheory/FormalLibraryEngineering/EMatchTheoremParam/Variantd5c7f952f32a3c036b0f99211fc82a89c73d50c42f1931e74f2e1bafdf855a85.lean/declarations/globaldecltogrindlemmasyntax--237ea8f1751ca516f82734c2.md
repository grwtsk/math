# globalDeclToGrindLemmaSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c1095a70e566f0760b3810c0654acc9ba91ea723738ce8c2b5662813b3961f3",
  "kind": "def",
  "lexical_name": "globalDeclToGrindLemmaSyntax",
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
  "slug": "globaldecltogrindlemmasyntax--237ea8f1751ca516f82734c2",
  "source": {
    "blob": "759b237d5704da687de6a8ddd442f3de0a42c73d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:237ea8f1751ca516f82734c201528f219818b3dcac72a433dabbb53c2a11cad4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c1095a70e566f0760b3810c0654acc9ba91ea723738ce8c2b5662813b3961f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def globalDeclToGrindLemmaSyntax (declName : Name) (kind : EMatchTheoremKind) (minIndexable : Bool)
    : MetaM (TSyntax [``Parser.Tactic.grindLemma, ``Parser.Tactic.grindLemmaMin]) := do
  if let some declName ← isEqnThm? declName then
    let decl : Ident := mkIdent (← unresolveNameGlobalAvoidingLocals declName)
    `(Parser.Tactic.grindLemma| $decl:ident)
  else
    let decl : Ident := mkIdent (← unresolveNameGlobalAvoidingLocals declName)
    match kind, minIndexable with
    | .eqLhs false,   _     => `(Parser.Tactic.grindLemma| = $decl:ident)
    | .eqLhs true,    _     => `(Parser.Tactic.grindLemma| = gen $decl:ident)
    | .eqRhs false,   _     => `(Parser.Tactic.grindLemma| =_ $decl:ident)
    | .eqRhs true,    _     => `(Parser.Tactic.grindLemma| =_ gen $decl:ident)
    | .eqBoth false,  _     => `(Parser.Tactic.grindLemma| _=_ $decl:ident)
    | .eqBoth true,   _     => `(Parser.Tactic.grindLemma| _=_ gen $decl:ident)
    | .eqBwd,         _     => `(Parser.Tactic.grindLemma| ←= $decl:ident)
    | .user,          _     => `(Parser.Tactic.grindLemma| usr $decl:ident)
    | .bwd false,     false => `(Parser.Tactic.grindLemma| ← $decl:ident)
    | .bwd true,      false => `(Parser.Tactic.grindLemma| ← gen $decl:ident)
    | .fwd,           false => `(Parser.Tactic.grindLemma| → $decl:ident)
    | .leftRight,     false => `(Parser.Tactic.grindLemma| => $decl:ident)
    | .rightLeft,     false => `(Parser.Tactic.grindLemma| <= $decl:ident)
    | .default false, false => `(Parser.Tactic.grindLemma| $decl:ident)
    | .default true,  false => `(Parser.Tactic.grindLemma| gen $decl:ident)
    | .bwd false,     true  => `(Parser.Tactic.grindLemmaMin| ! ← $decl:ident)
    | .bwd true,      true  => `(Parser.Tactic.grindLemmaMin| ! ← gen $decl:ident)
    | .fwd,           true  => `(Parser.Tactic.grindLemmaMin| ! → $decl:ident)
    | .leftRight,     true  => `(Parser.Tactic.grindLemmaMin| ! => $decl:ident)
    | .rightLeft,     true  => `(Parser.Tactic.grindLemmaMin| ! <= $decl:ident)
    | .default false, true  => `(Parser.Tactic.grindLemmaMin| ! $decl:ident)
    | .default true,  true  => `(Parser.Tactic.grindLemmaMin| ! gen $decl:ident)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759b237d5704da687de6a8ddd442f3de0a42c73d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
