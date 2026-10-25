# getProjectionExprs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61a41b6ea5b8aef9a529fe0300f4d6e98f2f389e4ecd5730a712e4db3037f332",
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
  "slug": "getprojectionexprs--18d880505c0ca32c37aee560",
  "source": {
    "blob": "1603411e8560fb5b185f853295fe5f8ae120e862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 949,
    "line": 925,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18d880505c0ca32c37aee5601f24750c4acee61bb64b728a8a04da123f1047b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61a41b6ea5b8aef9a529fe0300f4d6e98f2f389e4ecd5730a712e4db3037f332`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–949.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8768b7dca445a0c297551bee524f43be8692007b2928e9eac33a4377b69fcee2.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1603411e8560fb5b185f853295fe5f8ae120e862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
