# getProjectionExprs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6325116c70ca04b947edfa7211105350e68dd1f658be6ed5837ba63ad9fbec2",
  "kind": "def",
  "lexical_name": "getProjectionExprs",
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
  "slug": "getprojectionexprs--fceaa1b62ea3e24c1e30d0cb",
  "source": {
    "blob": "373c37e1ed79c058cc173787d3c0450d7deb1f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 983,
    "line": 959,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fceaa1b62ea3e24c1e30d0cb45484a6fe2ab6af56b7523146c4802e2bfc11c84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6325116c70ca04b947edfa7211105350e68dd1f658be6ed5837ba63ad9fbec2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 959–983.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getProjectionExprs (stx : Syntax) (tgt : Expr) (rhs : Expr) (cfg : Config) :
    MetaM <| Array <| Expr × ProjectionData := do
  -- the parameters of the structure
  let params := tgt.getAppArgs
  if cfg.debug && !(← (params.zip rhs.getAppArgs).allM fun ⟨a, b⟩ ↦ isDefEq a b) then
    throwError "unreachable code: parameters are not definitionally equal"
  let str := tgt.getAppFn.constName?.getD default
  -- the fields of the object
  let rhsArgs := rhs.getAppArgs.toList.drop params.size
  let (rawUnivs, projDeclata) ← getRawProjections stx str
  projDeclata.mapM fun proj ↦ do
    let expr := proj.expr.instantiateLevelParams rawUnivs tgt.getAppFn.constLevels!
    -- after instantiating universes, we have to check again whether the expression is a proof.
    let proj := if ← isProof expr
      then { proj with isDefault := false }
      else proj
    return (rhsArgs.getD (fallback := default) proj.projNrs.head!,
      { proj with
        expr := expr.instantiateLambdasOrApps params
        projNrs := proj.projNrs.tail })

variable (ref : Syntax) (univs : List Name)

/-- Add a lemma with `nm` stating that `lhs = rhs`. `type` is the type of both `lhs` and `rhs`,
`args` is the list of local constants occurring, and `univs` is the list of universe variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean#L959).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373c37e1ed79c058cc173787d3c0450d7deb1f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
