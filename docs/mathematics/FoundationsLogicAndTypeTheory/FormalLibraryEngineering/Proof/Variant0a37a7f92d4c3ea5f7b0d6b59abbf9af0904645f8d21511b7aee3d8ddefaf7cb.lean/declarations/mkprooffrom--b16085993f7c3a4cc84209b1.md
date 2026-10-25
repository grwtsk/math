# mkProofFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5553119e214bf87d3c4e2449088027ab8063c682645e16cf845a3b891bdab936",
  "kind": "def",
  "lexical_name": "mkProofFrom",
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
  "slug": "mkprooffrom--b16085993f7c3a4cc84209b1",
  "source": {
    "blob": "8f7f38f5ea05a9d2fc3c433fb6b87d5611b781d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 295,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b16085993f7c3a4cc84209b166c99e0af8ebe1798be4719277bf41b0e96dd9f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5553119e214bf87d3c4e2449088027ab8063c682645e16cf845a3b891bdab936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def mkProofFrom (rhs : Expr) (common : Expr) (lhsEqCommon? : Option Expr) (heq : Bool) : GoalM (Option Expr) := do
    if isSameExpr rhs common then
      return lhsEqCommon?
    let n ← getENode rhs
    let some target := n.target? | unreachable!
    let some h := n.proof? | unreachable!
    let h ← realizeEqProof target rhs h (!n.flipped) heq
    -- `h : target = rhs`
    let h' ← mkProofFrom target common lhsEqCommon? heq
    -- `h' : lhs = target`
    mkTrans' h' h heq

  /--
  Returns a proof of `lhs = rhs` (`lhs ≍ rhs`) if `heq = false` (`heq = true`).
  If `heq = false`, this function assumes that `lhs` and `rhs` have the same type.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f7f38f5ea05a9d2fc3c433fb6b87d5611b781d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
