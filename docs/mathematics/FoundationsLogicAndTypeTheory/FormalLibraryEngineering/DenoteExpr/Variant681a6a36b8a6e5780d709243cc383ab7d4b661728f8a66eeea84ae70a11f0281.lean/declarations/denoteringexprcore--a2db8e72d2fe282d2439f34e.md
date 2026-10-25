# denoteRingExprCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b2762720800b96f23dba2dbd6a3e9ecb50b389b4f4831d0519c4eb8e8a61dd7",
  "kind": "def",
  "lexical_name": "denoteRingExprCore",
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
  "slug": "denoteringexprcore--a2db8e72d2fe282d2439f34e",
  "source": {
    "blob": "5c776be3bed3625d3ad03c9ab941c063efee1246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DenoteExpr/Variant681a6a36b8a6e5780d709243cc383ab7d4b661728f8a66eeea84ae70a11f0281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2db8e72d2fe282d2439f34e05483a26fc7b91d1b8d1391e8d10306059c265e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DenoteExpr/Variant681a6a36b8a6e5780d709243cc383ab7d4b661728f8a66eeea84ae70a11f0281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b2762720800b96f23dba2dbd6a3e9ecb50b389b4f4831d0519c4eb8e8a61dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def denoteRingExprCore (getVarExpr : Nat → Expr) (e : RingExpr) : m Expr := do
  go e
where
  go : RingExpr → m Expr
  | .num k => denoteNum k
  | .natCast k => return mkApp (← getNatCastFn) (mkNatLit k)
  | .intCast k => return mkApp (← getIntCastFn) (mkIntLit k)
  | .var x => return getVarExpr x
  | .add a b => return mkApp2 (← getAddFn) (← go a) (← go b)
  | .sub a b => return mkApp2 (← getSubFn) (← go a) (← go b)
  | .mul a b => return mkApp2 (← getMulFn) (← go a) (← go b)
  | .pow a k => return mkApp2 (← getPowFn) (← go a) (toExpr k)
  | .neg a => return mkApp (← getNegFn) (← go a)

/-- Denote a `RingExpr` using an explicit variable array. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DenoteExpr/Variant681a6a36b8a6e5780d709243cc383ab7d4b661728f8a66eeea84ae70a11f0281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DenoteExpr/Variant681a6a36b8a6e5780d709243cc383ab7d4b661728f8a66eeea84ae70a11f0281.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c776be3bed3625d3ad03c9ab941c063efee1246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
