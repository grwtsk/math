# isArrowProposition'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cea6eb01edc2c086f9e6e0e10fcc9bdc644905ddba87af2b40d08d9b1bed5d1",
  "kind": "def",
  "lexical_name": "isArrowProposition'",
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
  "slug": "isarrowproposition--35a807d71111b5c3c9df7134",
  "source": {
    "blob": "68e891218c77293ca50ef032668e98f5999063f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35a807d71111b5c3c9df7134618870be5f36c86c1f755924c38457c6fe05de12",
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

Occurrence: `declaration:8cea6eb01edc2c086f9e6e0e10fcc9bdc644905ddba87af2b40d08d9b1bed5d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isArrowProposition' : Expr → Nat → MetaM ArrowPropResult
  | .forallE _ t b _, n+1 => return processResult (← isArrowProposition' b n) t
  | .letE _ t _ b _,  n   => return processResult (← isArrowProposition' b n) t
  | .mdata _ e,       n   => isArrowProposition' e n
  | .bvar idx,        0   => return .bvar idx
  | type,             0   => return toArrowPropResult (← isPropQuick type)
  | _,                _   => return .undef
where
  /-- Auxiliary function for processing the result for the binders `forallE` and `letE`. -/
  processResult (r : ArrowPropResult) (binderType : Expr) : ArrowPropResult :=
    match r with
    | .bvar 0       => checkProp binderType
    | .bvar (idx+1) => .bvar idx
    | r             => r

  /-- Returns `.true` if `e` is `Prop`, `.false` if it is `Type _`, and `.undef` otherwise. -/
  checkProp : (e : Expr) → ArrowPropResult
    | .sort u => if u.isNeverZero then .false else if u.isZero then .true else .undef
    /- `outParam` is used in many polymorphic functions in Lean. -/
    | .app (.const ``outParam _) a => checkProp a
    | _ => .undef

/--
`isArrowProposition type n` is an "approximate" predicate which returns `LBool.true`
if `type` is of the form `A_1 → ... → A_n → B`, where `B` is a proposition.

Remark: `type` can be a dependent arrow.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e891218c77293ca50ef032668e98f5999063f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
