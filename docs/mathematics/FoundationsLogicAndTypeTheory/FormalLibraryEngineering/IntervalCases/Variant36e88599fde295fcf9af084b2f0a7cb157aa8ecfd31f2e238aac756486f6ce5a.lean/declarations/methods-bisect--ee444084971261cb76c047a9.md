# Methods.bisect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df779e7d7407ef65b7fd6e2318c8dbcf7e5f7c514f600c9c4d914a3eb78cb1d4",
  "kind": "def",
  "lexical_name": "Methods.bisect",
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
  "slug": "methods-bisect--ee444084971261cb76c047a9",
  "source": {
    "blob": "d1fdf7b7d018cdc1bf84f43fa53b17bf5d338608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee444084971261cb76c047a904dd5f9e297ed61e8374c3bac32b35eaa5a88d08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df779e7d7407ef65b7fd6e2318c8dbcf7e5f7c514f600c9c4d914a3eb78cb1d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Methods.bisect (m : Methods) (g : MVarId) (cases : Subarray IntervalCasesSubgoal)
    (z1 z2 : Bound) (e1 e2 p1 p2 e : Expr) : MetaM Unit := g.withContext do
  if 1 < cases.size then
    let tgt ← g.getType
    let mid := cases.size / 2
    let z3 := z1.asLower + mid
    let e3 ← m.mkNumeral z3
    let le ← mkAppM ``LE.le #[e3, e]
    let g₁ ← mkFreshExprMVar (← mkArrow (mkNot le) tgt) .syntheticOpaque
    let g₂ ← mkFreshExprMVar (← mkArrow le tgt) .syntheticOpaque
    g.assign <| ← mkAppM ``dite #[le, g₂, g₁]
    let (x₁, g₁) ← g₁.mvarId!.intro1
    m.bisect g₁ cases[:mid] z1 (.lt z3) e1 e3 p1 (.fvar x₁) e
    let (x₂, g₂) ← g₂.mvarId!.intro1
    m.bisect g₂ cases[mid:] (.le z3) z2 e3 e2 (.fvar x₂) p2 e
  else if _x : 0 < cases.size then
    let { goal, rhs, .. } := cases[0]
    let pf₁ ← match z1 with | .le _ => pure p1 | .lt _ => m.roundUp e1 e rhs p1
    let pf₂ ← match z2 with | .le _ => pure p2 | .lt _ => m.roundDown e e2 rhs p2
    g.assign (.app (.mvar goal) (← mkAppM ``le_antisymm #[pf₂, pf₁]))
  else panic! "no goals"

/-- A `Methods` implementation for `ℕ`.
This tells `interval_cases` how to work on natural numbers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variant36e88599fde295fcf9af084b2f0a7cb157aa8ecfd31f2e238aac756486f6ce5a.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1fdf7b7d018cdc1bf84f43fa53b17bf5d338608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
