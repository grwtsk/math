# isProofQuick

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30871b5db36a9fc3e46b3212cd87e809e9850dc5ccc0af860f59d3c53694cc67",
  "kind": "def",
  "lexical_name": "isProofQuick",
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
  "slug": "isproofquick--f70e58dd47ee2dc62a748182",
  "source": {
    "blob": "68e891218c77293ca50ef032668e98f5999063f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 439,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f70e58dd47ee2dc62a7481827b5fe39b5472f5ac760778f3205dce6f5a53514d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30871b5db36a9fc3e46b3212cd87e809e9850dc5ccc0af860f59d3c53694cc67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isProofQuick : Expr → MetaM LBool
  | .bvar ..          => return LBool.undef
  | .lit ..           => return LBool.false
  | .sort ..          => return LBool.false
  | .lam _ _ b _      => isProofQuick b
  | .letE _ _ _ b _   => isProofQuick b
  | .proj ..          => return LBool.undef
  | .forallE ..       => return LBool.false
  | .mdata _ e        => isProofQuick e
  | .const c lvls     => do let constType ← inferConstType c lvls; isArrowProposition constType 0
  | .fvar fvarId      => do let fvarType  ← inferFVarType fvarId;  isArrowProposition fvarType 0
  | .mvar mvarId      => do let mvarType  ← inferMVarType mvarId;  isArrowProposition mvarType 0
  | .app f ..         => isProofQuickApp f 1

end

/-- Check if `e` is a proof, i.e. the type of `e` is a proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e891218c77293ca50ef032668e98f5999063f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
