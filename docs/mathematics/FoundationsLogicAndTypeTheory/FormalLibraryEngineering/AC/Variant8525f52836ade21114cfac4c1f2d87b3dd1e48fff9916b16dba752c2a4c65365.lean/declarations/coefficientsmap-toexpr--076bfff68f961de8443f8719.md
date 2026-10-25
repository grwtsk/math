# CoefficientsMap.toExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b42495ccd4c199849826c08ab128c2a8de05365720df5e7c2e4ae5b07314e22",
  "kind": "def",
  "lexical_name": "CoefficientsMap.toExpr",
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
  "slug": "coefficientsmap-toexpr--076bfff68f961de8443f8719",
  "source": {
    "blob": "a870cf98f43dfa2e50523d59cfe3ec39c5c19b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:076bfff68f961de8443f8719e41a4d00be4f279ac8dab13ef67e3712c122b1ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b42495ccd4c199849826c08ab128c2a8de05365720df5e7c2e4ae5b07314e22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CoefficientsMap.toExpr (coeff : CoefficientsMap) (op : Op) : VarStateM (Option Expr) := do
  -- Note: we iterate over a sorted array of indices
  -- to ensure a canonical order of variables in the returned expression.
  -- This is O(|coeff| log |coeff|).
  let coeffArr := coeff.toArray.qsort (·.fst < ·.fst)
  let mut acc : Option Expr := none
  for (var, coeff) in coeffArr do
    let expr := (← get).varToExpr[var]!
    for _ in *...coeff do
      acc := match acc with
      | none => expr
      | some acc => some <| mkApp2 op.toExpr acc expr
  return acc

open VarStateM Lean.Meta Lean.Elab Term


/--
Given two expressions `x, y` which are equal up to associativity and commutativity,
construct and return a proof of `x = y`.

Uses `ac_rfl` internally to construct said proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant8525f52836ade21114cfac4c1f2d87b3dd1e48fff9916b16dba752c2a4c65365.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a870cf98f43dfa2e50523d59cfe3ec39c5c19b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
