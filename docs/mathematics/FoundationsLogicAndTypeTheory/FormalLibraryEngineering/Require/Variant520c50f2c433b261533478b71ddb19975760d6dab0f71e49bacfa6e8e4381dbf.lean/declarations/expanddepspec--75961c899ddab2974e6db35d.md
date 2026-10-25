# expandDepSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2b94c9ec81f3afc4b63ba41a3477df71e05cbf686f71a3c3301fc5cd6295b6f",
  "kind": "def",
  "lexical_name": "expandDepSpec",
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
  "slug": "expanddepspec--75961c899ddab2974e6db35d",
  "source": {
    "blob": "dc6ab417438abb8d979897b57aed269c7bdd27ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Require/Variant520c50f2c433b261533478b71ddb19975760d6dab0f71e49bacfa6e8e4381dbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75961c899ddab2974e6db35d2c3c22a4b02b72f9c8afc80d2b397cd630a5a8d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Require/Variant520c50f2c433b261533478b71ddb19975760d6dab0f71e49bacfa6e8e4381dbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2b94c9ec81f3afc4b63ba41a3477df71e05cbf686f71a3c3301fc5cd6295b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandDepSpec (stx : TSyntax ``depSpec) (doc? : Option DocComment) : MacroM Command := do
  let `(depSpec| $fullNameStx $[@ $ver?]? $[from $src?]? $[with $opts?]?) := stx
    | Macro.throwErrorAt stx "ill-formed require syntax"
  let src? ← src?.mapM fun src =>
    match src with
    | `(fromSource|git%$tk $url $[@ $rev?]? $[/ $subDir?]?) => withRef tk do
      let rev ← quoteOptTerm rev?
      let subDir ← quoteOptTerm subDir?
      ``(DependencySrc.git $url $rev $subDir)
    | `(fromSource|$path:term) => withRef src do
      ``(DependencySrc.path $path)
    | _ => Macro.throwErrorAt src "ill-formed from syntax"
  let `(depName|$[$scope? /]? $nameStx) := fullNameStx
    | Macro.throwErrorAt fullNameStx "ill-formed name syntax"
  let scope :=
    match scope? with
    | some scope => scope
    | none => Syntax.mkStrLit "" (.fromRef fullNameStx)
  let ver ←
    if let some ver := ver? then withRef ver do
      match ver with
      | `(verSpec|git $rev) => ``(InputVer.git $rev)
      | `(verSpec|$ver:term) => ``((eval_ver% $ver : InputVer))
      | _ => Macro.throwErrorAt ver "ill-formed version syntax"
    else if let some src := src? then
      match src with
      | `(fromSource|git $_ @ $rev $[/ $_]?) => withRef rev ``(InputVer.git $rev)
      | _ => ``(InputVer.none)
    else
       ``(InputVer.none)
  let name := expandIdentOrStrAsIdent nameStx
  `($[$doc?:docComment]? @[package_dep] def $name : $(mkCIdent ``Dependency) := {
    name :=  $(quote name.getId),
    scope := $scope,
    version := $ver,
    src? := $(← quoteOptTerm src?),
    opts := $(opts?.getD <| ← `({})),
  })

@[builtin_macro requireDecl]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Require/Variant520c50f2c433b261533478b71ddb19975760d6dab0f71e49bacfa6e8e4381dbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Require/Variant520c50f2c433b261533478b71ddb19975760d6dab0f71e49bacfa6e8e4381dbf.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc6ab417438abb8d979897b57aed269c7bdd27ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
