# liftRight_inv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:454638e3-7ab7-1483-e44b-bd065cd3cdb3",
  "kind": "theorem",
  "lexical_name": "liftRight_inv_mul",
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
  "slug": "liftright-inv-mul--beb658472dac74b71f757e7d",
  "source": {
    "blob": "9f9b58642dc0c8fdc24941b2507d4e8a94aeee8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 269,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beb658472dac74b71f757e7d06d4b0815eed3b8f20aa24420ac3cb2e5a939c60",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:454638e3-7ab7-1483-e44b-bd065cd3cdb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftRight_inv_mul (f : M →* N) (h : ∀ x, IsUnit (f x)) (x) :
  ↑(IsUnit.liftRight f h x)⁻¹ * f x = 1 := Units.liftRight_inv_mul (by intro; rfl) x
#align is_unit.lift_right_inv_mul IsUnit.liftRight_inv_mul
#align is_add_unit.lift_right_neg_add IsAddUnit.liftRight_neg_add

end Monoid

section DivisionMonoid

variable [DivisionMonoid α] {a b c : α}

/-- The element of the group of units, corresponding to an element of a monoid which is a unit. As
opposed to `IsUnit.unit`, the inverse is computable and comes from the inversion on `α`. This is
useful to transfer properties of inversion in `Units α` to `α`. See also `toUnits`. -/
@[to_additive (attr := simps val)
  "The element of the additive group of additive units, corresponding to an element of
  an additive monoid which is an additive unit. As opposed to `IsAddUnit.addUnit`, the negation is
  computable and comes from the negation on `α`. This is useful to transfer properties of negation
  in `AddUnits α` to `α`. See also `toAddUnits`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantfeb03cc6e7091d42592644fa253ad66821a78445e285278733946de308565b23.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f9b58642dc0c8fdc24941b2507d4e8a94aeee8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
