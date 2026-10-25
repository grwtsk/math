# mkKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7727eaa4bb25b4e59f735a760381524b2e8dd69308d9dae89dcf22ba6e086fbd",
  "kind": "def",
  "lexical_name": "mkKey",
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
  "slug": "mkkey--61031ca621deebefc62b20fa",
  "source": {
    "blob": "744889b1f1b063ca4b83b2d59f4bbd45a923754c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 296,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61031ca621deebefc62b20fa7ca4a5ab54f9598182c01f869c2f4171a8d199d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7727eaa4bb25b4e59f735a760381524b2e8dd69308d9dae89dcf22ba6e086fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkKey (params : Array (Param .pure)) (decls : Array (CodeDecl .pure)) (body : LetValue .pure) :
    CompilerM (Expr × List Name) := do
  let body ← expandCodeDecls decls body
  let key := ToExpr.run do
    ToExpr.withParams params do
      ToExpr.mkLambdaM params (← ToExpr.abstractM body)
  let pre e := do
    -- beta reduce if possible
    if e.isHeadBetaTarget then
      return .visit e.headBeta
    else
      return .continue
  let key ← Meta.MetaM.run' <| Meta.transform (usedLetOnly := true) key pre
  return normLevelParams key

open Internalize in
/--
Specialize `decl` using
- `us`: the universe level used to instantiate `decl.name`
- `argMask`: arguments that are being used to specialize the declaration.
- `params`: new parameters that arguments in `argMask` depend on.
- `decls`: local declarations that arguments in `argMask` depend on.
- `levelParamsNew`: the universe level parameters for the new declaration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744889b1f1b063ca4b83b2d59f4bbd45a923754c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
