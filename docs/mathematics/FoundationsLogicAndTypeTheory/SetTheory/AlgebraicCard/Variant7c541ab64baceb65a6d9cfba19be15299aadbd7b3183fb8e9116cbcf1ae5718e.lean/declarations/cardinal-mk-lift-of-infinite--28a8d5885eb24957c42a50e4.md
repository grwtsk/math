# cardinal_mk_lift_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be1a24c7-1b7f-6622-3a5f-65a0cd7d5104",
  "kind": "theorem",
  "lexical_name": "cardinal_mk_lift_of_infinite",
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
  "slug": "cardinal-mk-lift-of-infinite--28a8d5885eb24957c42a50e4",
  "source": {
    "blob": "7b88d2f5ba8ed1a81fa88aba2e1fd16d948b4edd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a8d5885eb24957c42a50e4088e5dbafdf05dc999ad57107637b5a016462d07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be1a24c7-1b7f-6622-3a5f-65a0cd7d5104`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_mk_lift_of_infinite [Infinite R] :
    Cardinal.lift.{u} #{ x : A // IsAlgebraic R x } = Cardinal.lift.{v} #R :=
  ((cardinal_mk_lift_le_max R A).trans_eq (max_eq_left <| aleph0_le_mk _)).antisymm <|
    lift_mk_le'.2 ⟨⟨fun x => ⟨algebraMap R A x, isAlgebraic_algebraMap _⟩, fun _ _ h =>
      NoZeroSMulDivisors.algebraMap_injective R A (Subtype.ext_iff.1 h)⟩⟩
#align algebraic.cardinal_mk_lift_of_infinite Algebraic.cardinal_mk_lift_of_infinite

variable [Countable R]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b88d2f5ba8ed1a81fa88aba2e1fd16d948b4edd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
