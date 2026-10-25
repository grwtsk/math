# internalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c41f81e7da817466ed2627317de32140f93e32a7aa75b4b34a558afaf96fc3d4",
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
  "slug": "internalize--125793dbcbffaff050573b28",
  "source": {
    "blob": "d42e9efc7d24cb5af822793562774c9740f80183",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 338,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:125793dbcbffaff050573b28f26da16e9833f21c1aef4486bd3c63ea4c5b6e36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c41f81e7da817466ed2627317de32140f93e32a7aa75b4b34a558afaf96fc3d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–353.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42e9efc7d24cb5af822793562774c9740f80183` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
