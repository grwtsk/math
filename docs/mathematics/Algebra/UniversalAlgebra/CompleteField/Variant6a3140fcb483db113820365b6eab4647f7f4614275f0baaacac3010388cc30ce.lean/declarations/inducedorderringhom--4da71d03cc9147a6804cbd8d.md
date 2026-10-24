# inducedOrderRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:935ec1370764953ac8223120a676edf939520688c704536c150ffcacd73e1a8d",
  "kind": "def",
  "lexical_name": "inducedOrderRingHom",
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
  "slug": "inducedorderringhom--4da71d03cc9147a6804cbd8d",
  "source": {
    "blob": "23c9f80a6cc53ef2243a1b103a73413a7f6e05d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 303,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4da71d03cc9147a6804cbd8d6429c1ee0f3e9c2df3f079536b35081e8ba31c40",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:935ec1370764953ac8223120a676edf939520688c704536c150ffcacd73e1a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inducedOrderRingHom : α →+*o β :=
  { AddMonoidHom.mkRingHomOfMulSelfOfTwoNeZero (inducedAddHom α β) (by
      suffices : ∀ x, 0 < x → inducedAddHom α β (x * x)
          = inducedAddHom α β x * inducedAddHom α β x
      · intro x
        obtain h | rfl | h := lt_trichotomy x 0
        · convert this (-x) (neg_pos.2 h) using 1
          · rw [neg_mul, mul_neg, neg_neg]
          · simp_rw [AddMonoidHom.map_neg, neg_mul, mul_neg, neg_neg]
        · simp only [mul_zero, AddMonoidHom.map_zero]
        · exact this x h
        -- prove that the (Sup of rationals less than x) ^ 2 is the Sup of the set of rationals less
        -- than (x ^ 2) by showing it is an upper bound and any smaller number is not an upper bound
      refine fun x hx => csSup_eq_of_forall_le_of_forall_lt_exists_gt (cutMap_nonempty β _) ?_ ?_
      · exact le_inducedMap_mul_self_of_mem_cutMap hx
      · exact exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self hx)
      (two_ne_zero) (inducedMap_one _ _) with
    monotone' := inducedMap_mono _ _ }
#align linear_ordered_field.induced_order_ring_hom LinearOrderedField.inducedOrderRingHom

/-- The isomorphism of ordered rings between two conditionally complete linearly ordered fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c9f80a6cc53ef2243a1b103a73413a7f6e05d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
