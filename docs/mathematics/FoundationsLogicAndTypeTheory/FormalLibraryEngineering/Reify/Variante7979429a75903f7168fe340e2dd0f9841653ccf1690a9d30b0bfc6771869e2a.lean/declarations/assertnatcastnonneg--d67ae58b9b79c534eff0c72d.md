# assertNatCastNonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d92424c63e9f058afd8d44ff528969f487afaec7b6add5f73a0bb6b498afd26",
  "kind": "def",
  "lexical_name": "assertNatCastNonneg",
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
  "slug": "assertnatcastnonneg--d67ae58b9b79c534eff0c72d",
  "source": {
    "blob": "c750150e6c8ba437d4582e6a45c365bba1bafed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d67ae58b9b79c534eff0c72d973d9f5ece6e2a004b3b66422c2fb3fa0b10310c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d92424c63e9f058afd8d44ff528969f487afaec7b6add5f73a0bb6b498afd26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def assertNatCastNonneg (a : Expr) : LinearM Unit := do
  let s ← getStruct
  let h := mkApp8 (mkConst ``Grind.OrderedRing.natCast_nonneg [s.u]) s.type s.ringInst?.get!
    s.leInst?.get! s.ltInst?.get! s.lawfulOrderLTInst?.get! s.isPreorderInst?.get! s.orderedRingInst?.get! a
  addNewRawFact h (← inferType h) (← getGeneration a) (.ematch (.decl ``Grind.OrderedRing.natCast_nonneg)) .other

/--
Converts a Lean `IntModule` expression `e` into a `LinExpr`

If `skipVar` is `true`, then the result is `none` if `e` is not an interpreted `IntModule` term.
We use `skipVar := false` when processing inequalities, and `skipVar := true` for equalities and disequalities
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variante7979429a75903f7168fe340e2dd0f9841653ccf1690a9d30b0bfc6771869e2a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c750150e6c8ba437d4582e6a45c365bba1bafed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
