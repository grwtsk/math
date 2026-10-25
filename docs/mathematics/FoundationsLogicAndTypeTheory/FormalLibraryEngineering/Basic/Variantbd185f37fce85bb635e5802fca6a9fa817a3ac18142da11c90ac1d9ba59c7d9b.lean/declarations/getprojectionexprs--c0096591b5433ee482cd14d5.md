# getProjectionExprs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5026aba6244fe627bd084577d8e23304c3d10ecac8ef0e2f954828d9225c360a",
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
  "slug": "getprojectionexprs--c0096591b5433ee482cd14d5",
  "source": {
    "blob": "2d9ee464994d5563431c41fba169e9e9bf48ef5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 918,
    "line": 898,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0096591b5433ee482cd14d590e3420054add27b9d050dd5036ae8063c4ba8d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5026aba6244fe627bd084577d8e23304c3d10ecac8ef0e2f954828d9225c360a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 898–918.

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
  return projDeclata.map fun proj ↦
    (rhsArgs.getD (a₀ := default) proj.projNrs.head!,
      { proj with
        expr := (proj.expr.instantiateLevelParams rawUnivs
          tgt.getAppFn.constLevels!).instantiateLambdasOrApps params
        projNrs := proj.projNrs.tail })

variable (ref : Syntax) (univs : List Name)

/-- Add a lemma with `nm` stating that `lhs = rhs`. `type` is the type of both `lhs` and `rhs`,
  `args` is the list of local constants occurring, and `univs` is the list of universe variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd185f37fce85bb635e5802fca6a9fa817a3ac18142da11c90ac1d9ba59c7d9b.lean#L898).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d9ee464994d5563431c41fba169e9e9bf48ef5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
