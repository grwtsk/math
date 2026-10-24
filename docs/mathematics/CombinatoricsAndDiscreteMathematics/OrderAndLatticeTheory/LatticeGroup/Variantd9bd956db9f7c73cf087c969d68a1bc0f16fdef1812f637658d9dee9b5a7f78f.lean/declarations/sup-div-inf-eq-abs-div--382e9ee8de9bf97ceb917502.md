# sup_div_inf_eq_abs_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf25bd27a15e1d1388b458266fe1267c0b1e7f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 422,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e270d836-cee5-40e0-8846-816efe823de6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ec96766-bce8-930e-95ca-551bbb3d1f40",
  "kind": "theorem",
  "lexical_name": "sup_div_inf_eq_abs_div",
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
  "slug": "sup-div-inf-eq-abs-div--382e9ee8de9bf97ceb917502",
  "source": {
    "blob": "fbf25bd27a15e1d1388b458266fe1267c0b1e7f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 422,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variantd9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:382e9ee8de9bf97ceb917502eccb7193c8041b8288f91ce2be3b819867d6ccc3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variantd9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ec96766-bce8-930e-95ca-551bbb3d1f40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_div_inf_eq_abs_div
    [CovariantClass α α (· * ·) (· ≤ ·)] [CovariantClass α α (swap (· * ·)) (· ≤ ·)] (a b : α) :
    (a ⊔ b) / (a ⊓ b) = |b / a| :=
calc
  (a ⊔ b) / (a ⊓ b) = (a ⊔ b) * (a⁻¹ ⊔ b⁻¹) := by rw [div_eq_mul_inv, ← inv_inf_eq_sup_inv]
  _ = (a * a⁻¹ ⊔ b * a⁻¹) ⊔ (a * b⁻¹ ⊔ b * b⁻¹) := by rw [mul_sup, sup_mul, sup_mul]
  _ = (1 ⊔ b / a) ⊔ (a / b ⊔ 1) := by
    rw [mul_right_inv, mul_right_inv, ←div_eq_mul_inv, ←div_eq_mul_inv]
  _ = 1 ⊔ b / a ⊔ (1 / (b / a) ⊔ 1) := by rw [one_div_div]
  _ = 1 ⊔ (b / a) ⊔ ((b / a)⁻¹ ⊔ 1) := by rw [inv_eq_one_div]
  _ = 1 ⊔ (((b / a) ⊔ (b / a)⁻¹) ⊔ 1) := by rw [sup_assoc, sup_assoc]
  _= 1 ⊔ (|b / a| ⊔ 1) := by rw [abs_eq_sup_inv]
  _= 1 ⊔ |b / a| := by rw [← m_pos_part_def, m_pos_abs]
  _= |b / a| ⊔ 1 := by rw [sup_comm]
  _= |b / a| := by rw [← m_pos_part_def, m_pos_abs]
#align lattice_ordered_comm_group.sup_div_inf_eq_abs_div LatticeOrderedGroup.sup_div_inf_eq_abs_div
#align lattice_ordered_comm_group.sup_sub_inf_eq_abs_sub LatticeOrderedGroup.sup_sub_inf_eq_abs_sub

/-- The unary operation of taking the absolute value is idempotent. -/
@[to_additive (attr := simp) abs_abs
  "The unary operation of taking the absolute value is idempotent."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variantd9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variantd9bd956db9f7c73cf087c969d68a1bc0f16fdef1812f637658d9dee9b5a7f78f.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf25bd27a15e1d1388b458266fe1267c0b1e7f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
