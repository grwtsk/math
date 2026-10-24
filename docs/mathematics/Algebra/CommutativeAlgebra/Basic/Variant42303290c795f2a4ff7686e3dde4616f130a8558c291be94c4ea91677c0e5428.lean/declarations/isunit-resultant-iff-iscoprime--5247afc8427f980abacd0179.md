# isUnit_resultant_iff_isCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:020c5ae8-dbac-f54d-208f-9b87f3a90b16",
  "kind": "lemma",
  "lexical_name": "isUnit_resultant_iff_isCoprime",
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
  "slug": "isunit-resultant-iff-iscoprime--5247afc8427f980abacd0179",
  "source": {
    "blob": "3ed264ee72c569807fee84ec7696bcf5a010dfb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 915,
    "line": 893,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5247afc8427f980abacd0179eb83e12ba86dbcb0dd338ace9768492072d273e5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:020c5ae8-dbac-f54d-208f-9b87f3a90b16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 893–915.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_resultant_iff_isCoprime {f g : R[X]} (hf : f.Monic) :
    IsUnit (resultant f g) ↔ IsCoprime f g := by
  by_cases hf0 : f.natDegree = 0
  · obtain rfl := eq_one_of_monic_natDegree_zero hf hf0; simp [isCoprime_one_left]
  refine ⟨fun H ↦ ?_, ?_⟩
  · obtain ⟨p, q, hp, hq, e⟩ := exists_mul_add_mul_eq_C_resultant f g le_rfl le_rfl (by simp [hf0])
    exact ⟨C (H.unit⁻¹).1 * p, C (H.unit⁻¹).1 * q, by simp only [mul_assoc, ← mul_add, mul_comm p,
      mul_comm q, e, ← map_mul, IsUnit.val_inv_mul, map_one]⟩
  · intro ⟨a, b, e⟩
    suffices 1 = f.resultant b * f.resultant g from isUnit_iff_exists_inv'.mpr ⟨_, this.symm⟩
    have := resultant_mul_right f b g _ le_rfl
    obtain rfl | hb0 := eq_or_ne a 0
    · rw [show b * g = 1 by simpa using e, resultant_one_right] at this
      simpa [hf.leadingCoeff] using this
    · rw [← resultant_add_mul_right _ _ a _ _ _ le_rfl, add_comm, mul_comm, e, ← C.map_one] at this
      · simpa [hf.leadingCoeff] using this
      · by_contra! H
        replace H := natDegree_mul_le.trans_lt H
        rw [add_comm, ← hf.natDegree_mul' hb0, mul_comm f] at H
        have := natDegree_add_eq_left_of_natDegree_lt H
        simp only [e, natDegree_one] at this
        lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean#L893).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed264ee72c569807fee84ec7696bcf5a010dfb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
