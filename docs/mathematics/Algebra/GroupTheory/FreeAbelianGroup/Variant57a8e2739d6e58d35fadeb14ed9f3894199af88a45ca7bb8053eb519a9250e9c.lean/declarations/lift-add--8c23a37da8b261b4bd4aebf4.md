# lift.add'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac0fcf33a584a0ab938b10d7b50a771e691b0c88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebe106be-801e-73d0-4a46-9b8da31aab02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6918c056-0bf9-ca96-e334-24433002f5ff",
  "kind": "theorem",
  "lexical_name": "lift.add'",
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
  "slug": "lift-add--8c23a37da8b261b4bd4aebf4",
  "source": {
    "blob": "ac0fcf33a584a0ab938b10d7b50a771e691b0c88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c23a37da8b261b4bd4aebf45f352041f402cc4212735c465e46941a7ac89659",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6918c056-0bf9-ca96-e334-24433002f5ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift.add' {α β} [AddCommGroup β] (a : FreeAbelianGroup α) (f g : α → β) :
    lift (f + g) a = lift f a + lift g a := by
  refine' FreeAbelianGroup.induction_on a _ _ _ _
  · simp only [(lift _).map_zero, zero_add]
  · intro x
    simp only [lift.of, Pi.add_apply]
  · intro x _
    simp only [map_neg, lift.of, Pi.add_apply, neg_add]
  · intro x y hx hy
    simp only [(lift _).map_add, hx, hy, add_add_add_comm]
#align free_abelian_group.lift.add' FreeAbelianGroup.lift.add'

/-- If `g : FreeAbelianGroup X` and `A` is an abelian group then `liftAddGroupHom g`
is the additive group homomorphism sending a function `X → A` to the term of type `A`
corresponding to the evaluation of the induced map `FreeAbelianGroup X → A` at `g`. -/
@[simps!]  -- Porting note: Changed `simps` to `simps!`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant57a8e2739d6e58d35fadeb14ed9f3894199af88a45ca7bb8053eb519a9250e9c.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac0fcf33a584a0ab938b10d7b50a771e691b0c88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
