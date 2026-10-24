# Subgroup.isLeast_of_closure_iff_eq_mabs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1662abefae9ae2f71c08820aa9bbfa621a9151b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2b0eb6d-b90d-890c-130e-3431495be4a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df5e0b22-6c63-d6f9-2386-78d24f37894c",
  "kind": "lemma",
  "lexical_name": "Subgroup.isLeast_of_closure_iff_eq_mabs",
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
  "slug": "subgroup-isleast-of-closure-iff-eq-mabs--19540f654bcb16b3d496f597",
  "source": {
    "blob": "1662abefae9ae2f71c08820aa9bbfa621a9151b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 138,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19540f654bcb16b3d496f5979fb0d0fb3a0db32865cc25ea787ba772dee16d0d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df5e0b22-6c63-d6f9-2386-78d24f37894c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subgroup.isLeast_of_closure_iff_eq_mabs {a b : G} :
    IsLeast {y : G | y ∈ closure ({a} : Set G) ∧ 1 < y} b ↔ b = |a|ₘ ∧ 1 < b := by
  constructor <;> intro h
  · have := Subgroup.cyclic_of_min h
    have ha : a ∈ closure ({b} : Set G) := by
      simp [← this]
    rw [mem_closure_singleton] at ha
    obtain ⟨n, rfl⟩ := ha
    have := h.left
    simp only [mem_closure_singleton, mem_setOf_eq, ← mul_zsmul] at this
    obtain ⟨m, hm⟩ := this.left
    have key : m * n = 1 := by
      rw [← zpow_right_inj this.right, zpow_mul', hm, zpow_one]
    rw [Int.mul_eq_one_iff_eq_one_or_neg_one] at key
    rw [eq_comm]
    rcases key with ⟨rfl, rfl⟩|⟨rfl, rfl⟩ <;>
    simp [this.right.le, this.right, mabs]
  · wlog ha : 1 ≤ a generalizing a
    · convert @this (a⁻¹) ?_ (by simpa using le_of_not_le ha) using 4
      · simp
      · rwa [mabs_inv]
    rw [mabs, sup_eq_left.mpr ((inv_le_one'.mpr ha).trans ha)] at h
    rcases h with ⟨rfl, h⟩
    refine ⟨?_, ?_⟩
    · simp [h]
    · intro x
      simp only [mem_closure_singleton, mem_setOf_eq, and_imp, forall_exists_index]
      rintro k rfl hk
      rw [← zpow_one b, ← zpow_mul, one_mul, zpow_le_zpow_iff_right h, ← zero_add 1,
          ← Int.lt_iff_add_one_le]
      contrapose! hk
      rw [← Left.one_le_inv_iff, ← zpow_neg]
      exact one_le_zpow ha (by simp [hk])

/-- If an element of a linearly ordered archimedean additive group is the least positive element,
then the whole group is isomorphic (and order-isomorphic) to the integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1662abefae9ae2f71c08820aa9bbfa621a9151b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
