# declToTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82326853e9e660568c91d816a737ef039e25547bcbdb54d3de73e175ac434735",
  "kind": "def",
  "lexical_name": "declToTerm",
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
  "slug": "decltoterm--5ce83efecc977c6158b3d63b",
  "source": {
    "blob": "9d7b9f53f68fc579718fff78079ef78950d29a7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1092,
    "line": 1061,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ce83efecc977c6158b3d63b616ff3430916d38890e5dfcd9508ea74ea5bc75e",
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

Occurrence: `declaration:82326853e9e660568c91d816a737ef039e25547bcbdb54d3de73e175ac434735`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1061–1092.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def declToTerm (decl : Syntax) (k : Syntax) : M Syntax := withRef decl <| withFreshMacroScope do
  let kind := decl.getKind
  if kind == ``Parser.Term.doLet then
    let letConfig : TSyntax ``Parser.Term.letConfig := ⟨decl[2]⟩
    let letDecl := decl[3]
    `(let $letConfig:letConfig $letDecl:letDecl; $k)
  else if kind == ``Parser.Term.doLetRec then
    let letRecToken := decl[0]
    let letRecDecls := decl[1]
    return mkNode ``Parser.Term.letrec #[letRecToken, letRecDecls, mkNullNode, k]
  else if kind == ``Parser.Term.doLetArrow then
    let arg := decl[3]
    if arg.getKind == ``Parser.Term.doIdDecl then
      let id     := arg[0]
      let type   := expandOptType id arg[1]
      let doElem := arg[3]
      -- `doElem` must be a `doExpr action`. See `doLetArrowToCode`
      match isDoExpr? doElem with
      | some action =>
        let action ← withRef action `(($action : $((← read).m) $type))
        ``(Bind.bind $action (fun ($id:ident : $type) => $k))
      | none        => Macro.throwErrorAt decl "unexpected kind of `do` declaration"
    else
      Macro.throwErrorAt decl "unexpected kind of `do` declaration"
  else if kind == ``Parser.Term.doHave then
    -- The `have` term is of the form  `"have " >> letDecl >> optSemicolon termParser`
    let args := decl.getArgs
    let args := args ++ #[mkNullNode /- optional ';' -/, k]
    return mkNode `Lean.Parser.Term.«have» args
  else
    Macro.throwErrorAt decl "unexpected kind of `do` declaration"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Legacy/Variantbc411641e4096e101aa430713816df379a67fa41baf182dd25be2edb10da3860.lean#L1061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7b9f53f68fc579718fff78079ef78950d29a7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
