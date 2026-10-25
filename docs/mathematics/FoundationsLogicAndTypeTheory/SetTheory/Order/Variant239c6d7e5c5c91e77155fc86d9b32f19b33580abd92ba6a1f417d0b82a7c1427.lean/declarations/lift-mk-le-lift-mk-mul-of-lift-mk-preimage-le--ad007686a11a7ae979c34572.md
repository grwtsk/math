# lift_mk_le_lift_mk_mul_of_lift_mk_preimage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:811b2ae8-4275-5133-db1d-f4227ef5ae50",
  "kind": "theorem",
  "lexical_name": "lift_mk_le_lift_mk_mul_of_lift_mk_preimage_le",
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
  "slug": "lift-mk-le-lift-mk-mul-of-lift-mk-preimage-le--ad007686a11a7ae979c34572",
  "source": {
    "blob": "056e359aadb5dbb586cf75ae2743cf9294b97c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 489,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad007686a11a7ae979c34572c0e3792d83f3ef219b6a237f372b01a3ecb8e2dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:811b2ae8-4275-5133-db1d-f4227ef5ae50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_mk_le_lift_mk_mul_of_lift_mk_preimage_le {α : Type u} {β : Type v} {c : Cardinal}
    (f : α → β) (hf : ∀ b : β, lift.{v} #(f ⁻¹' {b}) ≤ c) : lift.{v} #α ≤ lift.{u} #β * c :=
  (mk_le_mk_mul_of_mk_preimage_le fun x : ULift.{v} α => ULift.up.{u} (f x.1)) <|
    ULift.forall.2 fun b =>
      (mk_congr <|
            (Equiv.ulift.image _).trans
              (Equiv.trans
                (by
                  rw [Equiv.image_eq_preimage]
                  /- Porting note: Need to insert the following `have` b/c bad fun coercion
                   behaviour for Equivs -/
                  have : DFunLike.coe (Equiv.symm (Equiv.ulift (α := α))) = ULift.up (α := α) := rfl
                  rw [this]
                  simp only [preimage, mem_singleton_iff, ULift.up_inj, mem_setOf_eq, coe_setOf]
                  exact Equiv.refl _)
                Equiv.ulift.symm)).trans_le
        (hf b)

end Cardinal

/-! ### Well-ordering theorem -/

open Cardinal in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variant239c6d7e5c5c91e77155fc86d9b32f19b33580abd92ba6a1f417d0b82a7c1427.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `056e359aadb5dbb586cf75ae2743cf9294b97c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
