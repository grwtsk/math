# liftRight_inv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "078dd7986007ac6c665d6255501918a9a1668514",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67e56df4-ed04-eae5-909d-65b1edaff3f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:865df278-4d3e-d1ec-f0dd-d624b3ce646f",
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
  "slug": "liftright-inv-mul--971b8e6229c3f9f371b7a7f1",
  "source": {
    "blob": "078dd7986007ac6c665d6255501918a9a1668514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 261,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:971b8e6229c3f9f371b7a7f1a91c7b07ae759db6622d09fa1317f9d854ec103b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:865df278-4d3e-d1ec-f0dd-d624b3ce646f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–279.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant9f0ff1321764dae32a8a71b8303730a9a2b616e557b68ccb843d4de78731cb21.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `078dd7986007ac6c665d6255501918a9a1668514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
