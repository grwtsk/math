# cardinal_mk_lift_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9932c58-9a88-2829-df17-71e9afffc230",
  "kind": "theorem",
  "lexical_name": "cardinal_mk_lift_le_mul",
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
  "slug": "cardinal-mk-lift-le-mul--ae68dfd18c1258336069a1a2",
  "source": {
    "blob": "7b88d2f5ba8ed1a81fa88aba2e1fd16d948b4edd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae68dfd18c1258336069a1a27646ec204f4d448d0e5d21835b3514fe1261b544",
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

Occurrence: `result:c9932c58-9a88-2829-df17-71e9afffc230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_mk_lift_le_mul :
    Cardinal.lift.{u} #{ x : A // IsAlgebraic R x } ≤ Cardinal.lift.{v} #(R[X]) * ℵ₀ := by
  rw [← mk_uLift, ← mk_uLift]
  choose g hg₁ hg₂ using fun x : { x : A | IsAlgebraic R x } => x.coe_prop
  refine' lift_mk_le_lift_mk_mul_of_lift_mk_preimage_le g fun f => _
  rw [lift_le_aleph0, le_aleph0_iff_set_countable]
  suffices : MapsTo (↑) (g ⁻¹' {f}) (f.rootSet A)
  exact this.countable_of_injOn (Subtype.coe_injective.injOn _) (f.rootSet_finite A).countable
  rintro x (rfl : g x = f)
  exact mem_rootSet.2 ⟨hg₁ x, hg₂ x⟩
#align algebraic.cardinal_mk_lift_le_mul Algebraic.cardinal_mk_lift_le_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/AlgebraicCard/Variant7c541ab64baceb65a6d9cfba19be15299aadbd7b3183fb8e9116cbcf1ae5718e.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b88d2f5ba8ed1a81fa88aba2e1fd16d948b4edd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
