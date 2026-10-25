# Dependency.mkRequire

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d685c67b04586e2b7b7dedb000a8a2006e68e6b29e9b0824a11333930b1c4c6",
  "kind": "def",
  "lexical_name": "Dependency.mkRequire",
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
  "slug": "dependency-mkrequire--b1610c1d5b55afc5c9cd9aa0",
  "source": {
    "blob": "df0f3ae67fe392b6879fe7439d1e2c5a07db7677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1610c1d5b55afc5c9cd9aa03cd1c8b1b8fd58eea9b87d21ba3ae216472bde02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d685c67b04586e2b7b7dedb000a8a2006e68e6b29e9b0824a11333930b1c4c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Dependency.mkRequire (cfg : Dependency) : RequireDecl := Unhygienic.run do
  let src? ← cfg.src?.mapM fun src =>
    match src with
    | .path dir =>
      `(fromSource|$(toLean dir):term)
    | .git url rev? subDir? =>
      `(fromSource|git $(toLean url) $[@ $(rev?.map toLean)]? $[/ $(subDir?.map toLean)]?)
  let ver? ← id do
    match cfg.version with
    | .none => return none
    | .git rev =>
      match cfg.src? with
      | some (.git (rev := some gitRev) ..) =>
        if gitRev == rev then
          return none -- will be derived from the source above
        else some <$> `(verSpec|git $(toLean rev))
      | _ => some <$> `(verSpec|git $(toLean rev))
    | .ver ver => some <$> `(verSpec|$(toLean ver.toString):term)
  let scope? := if cfg.scope.isEmpty then none else some (toLean cfg.scope)
  let opts? := if cfg.opts.isEmpty then none else some <| Unhygienic.run do
    cfg.opts.foldlM (init := mkCIdent ``NameMap.empty) fun stx opt val =>
      `($stx |>.insert $(toLean opt) $(toLean val))
  `(requireDecl|require $[$scope? /]? $(mkIdent cfg.name):ident $[@ $ver?]?
    $[from $src?]? $[with $opts?]?)

/-! ## Package & Target Configuration Encoders -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantd0af113ee3d6524ad9ab60d7cc9bae1b92f80e159b87e80a74cd404c7b9d4b29.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df0f3ae67fe392b6879fe7439d1e2c5a07db7677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
