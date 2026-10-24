# _root_.GRWTSK.Algebra.CommutativeAlgebra.AnchorRef.Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.Lean.MVarId.assignFalseProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b2c1a2cccd44114ed02cb340f64d1dc75b99c47c20a911d383282f7827cb856",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.AnchorRef.Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.Lean.MVarId.assignFalseProof",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-anchorref-varianta6693ff328279b61--a96e057df4467816a6066b45",
  "source": {
    "blob": "319df85256f66e0b9295ed3113fcc6a61dd47bac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1545,
    "line": 1532,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a96e057df4467816a6066b45c52c3245ac523956f94213ef7d7e0d26aa03cfa5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b2c1a2cccd44114ed02cb340f64d1dc75b99c47c20a911d383282f7827cb856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1532–1545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.CommutativeAlgebra.AnchorRef.Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.Lean.MVarId.assignFalseProof (mvarId : MVarId) (falseProof : Expr) : MetaM Unit := mvarId.withContext do
  let target ← mvarId.getType
  if target.isFalse then
    /-
    **Note**: We add the marker to assist `getFalseExpr?` used to implement
    non-chronological backtracking. -/
    mvarId.assign (mkExpectedPropHint falseProof (mkConst ``False))
  else
    mvarId.assign (← mkFalseElim target falseProof)

/--
`goal.withContext x` executes `x` using the given metavariable `LocalContext` and `LocalInstances`.
The type class resolution cache is flushed when executing `x` if its `LocalInstances` are
different from the current ones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean#L1532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319df85256f66e0b9295ed3113fcc6a61dd47bac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
