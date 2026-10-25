# internalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf492dc15dc678163baac4567dc8e073b4d3a24997cb8a9a10d33e9b3bf1d6fc",
  "kind": "def",
  "lexical_name": "internalize",
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
  "slug": "internalize--1511a93a8da962de5206b389",
  "source": {
    "blob": "17752c2e0822b1773d8ec93a26234685793bdb82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 330,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1511a93a8da962de5206b38916ffa2ec32bffb26046102a66b69dcbedd2e1241",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf492dc15dc678163baac4567dc8e073b4d3a24997cb8a9a10d33e9b3bf1d6fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def internalize (e : Expr) (parent? : Option Expr) : GoalM Unit := do
  unless (← getConfig).order do return ()
  let some α := getType? e | return ()
  let (α, e) ← adapt α e
  if isForbiddenParent parent? then return ()
  if let some structId ← getStructId? α then OrderM.run structId do
    if (← alreadyInternalizedHere e) then return ()
    match_expr e with
    | LE.le _ _ lhs rhs => internalizeCnstr e .le lhs rhs
    | LT.lt _ _ lhs rhs => if (← hasLt) then internalizeCnstr e .lt lhs rhs
    | HAdd.hAdd _ _ _ _ _ _ => internalizeTerm e
    | HSub.hSub _ _ _ _ _ _ => internalizeTerm e
    | OfNat.ofNat _ _ _ => internalizeTerm e
    | _ => return ()

end Lean.Meta.Grind.Order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17752c2e0822b1773d8ec93a26234685793bdb82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
