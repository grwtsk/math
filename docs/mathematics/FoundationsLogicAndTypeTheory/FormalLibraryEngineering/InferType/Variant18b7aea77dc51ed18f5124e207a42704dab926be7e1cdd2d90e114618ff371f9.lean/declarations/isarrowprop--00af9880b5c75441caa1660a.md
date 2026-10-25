# isArrowProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8486fe2c52231c7c0c0a8c67c8080ad43b13f195184c75a0da2232c4a32de09",
  "kind": "def",
  "lexical_name": "isArrowProp",
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
  "slug": "isarrowprop--00af9880b5c75441caa1660a",
  "source": {
    "blob": "68e891218c77293ca50ef032668e98f5999063f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00af9880b5c75441caa1660a3554bba875899fca6e22aaf838744887afc645d9",
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

Occurrence: `declaration:c8486fe2c52231c7c0c0a8c67c8080ad43b13f195184c75a0da2232c4a32de09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isArrowProp : Expr → Nat → MetaM LBool
  | .sort u,          0   => return isAlwaysZero (← instantiateLevelMVars u) |>.toLBool
  | .forallE ..,      0   => return LBool.false
  | .forallE _ _ b _, n+1 => isArrowProp b n
  | .letE _ _ _ b _,  n   => isArrowProp b n
  | .mdata _ e,       n   => isArrowProp e n
  | _,                _   => return LBool.undef

/--
`isPropQuickApp f n` is an "approximate" predicate which returns `LBool.true`
if `f` applied to `n` arguments is a proposition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant18b7aea77dc51ed18f5124e207a42704dab926be7e1cdd2d90e114618ff371f9.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68e891218c77293ca50ef032668e98f5999063f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
