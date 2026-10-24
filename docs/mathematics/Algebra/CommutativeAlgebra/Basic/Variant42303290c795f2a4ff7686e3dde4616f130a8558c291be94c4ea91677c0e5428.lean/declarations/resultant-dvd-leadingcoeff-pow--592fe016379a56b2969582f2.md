# resultant_dvd_leadingCoeff_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dae8a8a2-5352-0f74-3f24-4cc4962f997a",
  "kind": "lemma",
  "lexical_name": "resultant_dvd_leadingCoeff_pow",
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
  "slug": "resultant-dvd-leadingcoeff-pow--592fe016379a56b2969582f2",
  "source": {
    "blob": "3ed264ee72c569807fee84ec7696bcf5a010dfb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 615,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:592fe016379a56b2969582f27be08f8ebd971b7bb0fdace6bf8fe05e317d3a43",
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

Occurrence: `result:dae8a8a2-5352-0f74-3f24-4cc4962f997a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma resultant_dvd_leadingCoeff_pow [IsDomain R] (f g : R[X]) (H : IsCoprime f g) :
    ∃ n, resultant f g ∣ f.leadingCoeff ^ n := by
  obtain rfl | hf := eq_or_ne f 0
  · simp only [isCoprime_zero_left, isUnit_iff] at H
    aesop
  obtain rfl | hg := eq_or_ne g 0
  · simp only [isCoprime_zero_right, isUnit_iff] at H
    aesop
  have ⟨a, b, e⟩ := H
  obtain rfl | ha := eq_or_ne a 0
  · obtain ⟨r, hr, rfl⟩ := isUnit_iff.mp (.of_mul_eq_one_right b (by simpa using e))
    simp [hr.pow]
  obtain rfl | hb := eq_or_ne b 0
  · obtain ⟨r, hr, rfl⟩ := isUnit_iff.mp (.of_mul_eq_one_right a (by simpa using e))
    simp [hr.pow]
  have := resultant_mul_right f b g _ le_rfl
  rw [← resultant_add_mul_right _ _ a _ _ _ le_rfl, add_comm, mul_comm f, e,
    resultant_one_right] at this
  · exact ⟨_, _, this.trans (mul_comm _ _)⟩
  · by_contra! H
    rw [← natDegree_mul ha hf, ← natDegree_mul hb hg] at H
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed264ee72c569807fee84ec7696bcf5a010dfb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
