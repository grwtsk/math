# mul_inv_lt_mul_inv_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffad0da7-5e6b-6ab9-ce1a-78f6538094bb",
  "kind": "theorem",
  "lexical_name": "mul_inv_lt_mul_inv_iff'",
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
  "slug": "mul-inv-lt-mul-inv-iff--965b4cdd10080f90975b5ae3",
  "source": {
    "blob": "ea18360b914ab983543e53ac3d1ed90a151ad8f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 567,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantd531f15a4cd051401d02529e9b226e228cda86fd82fbc3a9420462d228a83a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965b4cdd10080f90975b5ae3bfd8ae1d8fa4cf225e3250121e7621dbc662f229",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantd531f15a4cd051401d02529e9b226e228cda86fd82fbc3a9420462d228a83a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffad0da7-5e6b-6ab9-ce1a-78f6538094bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_inv_lt_mul_inv_iff' : a * b⁻¹ < c * d⁻¹ ↔ a * d < c * b := by
  rw [mul_comm c, mul_inv_lt_inv_mul_iff, mul_comm]
#align mul_inv_lt_mul_inv_iff' mul_inv_lt_mul_inv_iff'
#align add_neg_lt_add_neg_iff add_neg_lt_add_neg_iff

end LT

end CommGroup

alias ⟨one_le_of_inv_le_one, _⟩ := Left.inv_le_one_iff
#align one_le_of_inv_le_one one_le_of_inv_le_one

attribute [to_additive] one_le_of_inv_le_one
#align nonneg_of_neg_nonpos nonneg_of_neg_nonpos

alias ⟨le_one_of_one_le_inv, _⟩ := Left.one_le_inv_iff
#align le_one_of_one_le_inv le_one_of_one_le_inv

attribute [to_additive nonpos_of_neg_nonneg] le_one_of_one_le_inv
#align nonpos_of_neg_nonneg nonpos_of_neg_nonneg

alias ⟨lt_of_inv_lt_inv, _⟩ := inv_lt_inv_iff
#align lt_of_inv_lt_inv lt_of_inv_lt_inv

attribute [to_additive] lt_of_inv_lt_inv
#align lt_of_neg_lt_neg lt_of_neg_lt_neg

alias ⟨one_lt_of_inv_lt_one, _⟩ := Left.inv_lt_one_iff
#align one_lt_of_inv_lt_one one_lt_of_inv_lt_one

attribute [to_additive] one_lt_of_inv_lt_one
#align pos_of_neg_neg pos_of_neg_neg

alias inv_lt_one_iff_one_lt := Left.inv_lt_one_iff
#align inv_lt_one_iff_one_lt inv_lt_one_iff_one_lt

attribute [to_additive] inv_lt_one_iff_one_lt
#align neg_neg_iff_pos neg_neg_iff_pos

alias inv_lt_one' := Left.inv_lt_one_iff
#align inv_lt_one' inv_lt_one'

attribute [to_additive neg_lt_zero] inv_lt_one'
#align neg_lt_zero neg_lt_zero

alias ⟨inv_of_one_lt_inv, _⟩ := Left.one_lt_inv_iff
#align inv_of_one_lt_inv inv_of_one_lt_inv

attribute [to_additive neg_of_neg_pos] inv_of_one_lt_inv
#align neg_of_neg_pos neg_of_neg_pos

alias ⟨_, one_lt_inv_of_inv⟩ := Left.one_lt_inv_iff
#align one_lt_inv_of_inv one_lt_inv_of_inv

attribute [to_additive neg_pos_of_neg] one_lt_inv_of_inv
#align neg_pos_of_neg neg_pos_of_neg

alias ⟨mul_le_of_le_inv_mul, _⟩ := le_inv_mul_iff_mul_le
#align mul_le_of_le_inv_mul mul_le_of_le_inv_mul

attribute [to_additive] mul_le_of_le_inv_mul
#align add_le_of_le_neg_add add_le_of_le_neg_add

alias ⟨_, le_inv_mul_of_mul_le⟩ := le_inv_mul_iff_mul_le
#align le_inv_mul_of_mul_le le_inv_mul_of_mul_le

attribute [to_additive] le_inv_mul_of_mul_le
#align le_neg_add_of_add_le le_neg_add_of_add_le

alias ⟨_, inv_mul_le_of_le_mul⟩ := inv_mul_le_iff_le_mul
#align inv_mul_le_of_le_mul inv_mul_le_of_le_mul

-- Porting note: was `inv_mul_le_iff_le_mul`
attribute [to_additive] inv_mul_le_of_le_mul

alias ⟨mul_lt_of_lt_inv_mul, _⟩ := lt_inv_mul_iff_mul_lt
#align mul_lt_of_lt_inv_mul mul_lt_of_lt_inv_mul

attribute [to_additive] mul_lt_of_lt_inv_mul
#align add_lt_of_lt_neg_add add_lt_of_lt_neg_add

alias ⟨_, lt_inv_mul_of_mul_lt⟩ := lt_inv_mul_iff_mul_lt
#align lt_inv_mul_of_mul_lt lt_inv_mul_of_mul_lt

attribute [to_additive] lt_inv_mul_of_mul_lt
#align lt_neg_add_of_add_lt lt_neg_add_of_add_lt

alias ⟨lt_mul_of_inv_mul_lt, inv_mul_lt_of_lt_mul⟩ := inv_mul_lt_iff_lt_mul
#align lt_mul_of_inv_mul_lt lt_mul_of_inv_mul_lt
#align inv_mul_lt_of_lt_mul inv_mul_lt_of_lt_mul

attribute [to_additive] lt_mul_of_inv_mul_lt
#align lt_add_of_neg_add_lt lt_add_of_neg_add_lt

attribute [to_additive] inv_mul_lt_of_lt_mul
#align neg_add_lt_of_lt_add neg_add_lt_of_lt_add

alias lt_mul_of_inv_mul_lt_left := lt_mul_of_inv_mul_lt
#align lt_mul_of_inv_mul_lt_left lt_mul_of_inv_mul_lt_left

attribute [to_additive] lt_mul_of_inv_mul_lt_left
#align lt_add_of_neg_add_lt_left lt_add_of_neg_add_lt_left

alias inv_le_one' := Left.inv_le_one_iff
#align inv_le_one' inv_le_one'

attribute [to_additive neg_nonpos] inv_le_one'
#align neg_nonpos neg_nonpos

alias one_le_inv' := Left.one_le_inv_iff
#align one_le_inv' one_le_inv'

attribute [to_additive neg_nonneg] one_le_inv'
#align neg_nonneg neg_nonneg

alias one_lt_inv' := Left.one_lt_inv_iff
#align one_lt_inv' one_lt_inv'

attribute [to_additive neg_pos] one_lt_inv'
#align neg_pos neg_pos

alias OrderedCommGroup.mul_lt_mul_left' := mul_lt_mul_left'
#align ordered_comm_group.mul_lt_mul_left' OrderedCommGroup.mul_lt_mul_left'

attribute [to_additive OrderedAddCommGroup.add_lt_add_left] OrderedCommGroup.mul_lt_mul_left'
#align ordered_add_comm_group.add_lt_add_left OrderedAddCommGroup.add_lt_add_left

alias OrderedCommGroup.le_of_mul_le_mul_left := le_of_mul_le_mul_left'
#align ordered_comm_group.le_of_mul_le_mul_left OrderedCommGroup.le_of_mul_le_mul_left

attribute [to_additive] OrderedCommGroup.le_of_mul_le_mul_left
#align ordered_add_comm_group.le_of_add_le_add_left OrderedAddCommGroup.le_of_add_le_add_left

alias OrderedCommGroup.lt_of_mul_lt_mul_left := lt_of_mul_lt_mul_left'
#align ordered_comm_group.lt_of_mul_lt_mul_left OrderedCommGroup.lt_of_mul_lt_mul_left

attribute [to_additive] OrderedCommGroup.lt_of_mul_lt_mul_left
#align ordered_add_comm_group.lt_of_add_lt_add_left OrderedAddCommGroup.lt_of_add_lt_add_left

--  Most of the lemmas that are primed in this section appear in ordered_field.
--  I (DT) did not try to minimise the assumptions.
section Group

variable [Group α] [LE α]

section Right

variable [CovariantClass α α (swap (· * ·)) (· ≤ ·)] {a b c d : α}

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantd531f15a4cd051401d02529e9b226e228cda86fd82fbc3a9420462d228a83a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantd531f15a4cd051401d02529e9b226e228cda86fd82fbc3a9420462d228a83a37.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea18360b914ab983543e53ac3d1ed90a151ad8f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
