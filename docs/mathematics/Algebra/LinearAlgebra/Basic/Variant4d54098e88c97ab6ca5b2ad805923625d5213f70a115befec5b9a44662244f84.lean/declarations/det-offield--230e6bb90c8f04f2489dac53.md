# det_ofField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b605b2e2057e1a7db1edbabbbb4e8f971572c314",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 559,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d36bba3-fca6-131d-d5c9-e8fc94a3018c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a97d2c1-2f28-44f6-3a62-68be1c84221b",
  "kind": "theorem",
  "lexical_name": "det_ofField",
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
  "slug": "det-offield--230e6bb90c8f04f2489dac53",
  "source": {
    "blob": "b605b2e2057e1a7db1edbabbbb4e8f971572c314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 559,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:230e6bb90c8f04f2489dac533a3846a95f2e55356579579bb017e791bbf134f3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a97d2c1-2f28-44f6-3a62-68be1c84221b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem det_ofField [FiniteDimensional K V] (f : Dual K V) (v : V) :
    (LinearMap.transvection f v).det = 1 + f v := by
  classical
  by_cases hfv : f v = 0
  · by_cases hv : v = 0
    · simp [hv]
    by_cases hf : f = 0
    · simp [hf]
    obtain ⟨ι, b, i, j, hi, hj⟩ := exists_basis_of_pairing_eq_zero hfv hf hv
    have : Fintype ι := FiniteDimensional.fintypeBasisIndex b
    rw [← det_toMatrix b]
    suffices toMatrix b b (LinearMap.transvection f v) = Matrix.transvection i j 1 by
      rw [this, Matrix.det_transvection_of_ne i j hi 1, hfv, add_zero]
    ext x y
    rw [toMatrix_apply, transvection.apply, Matrix.transvection]
    simp only [hj.2, Basis.coord_apply, Basis.repr_self, hj.1, map_add, map_smul,
      Finsupp.smul_single, smul_eq_mul, mul_one, Finsupp.coe_add, Pi.add_apply, Matrix.add_apply]
    apply congr_arg₂
    · by_cases h : x = y
      · rw [h]; simp
      · rw [Finsupp.single_eq_of_ne h, Matrix.one_apply_ne h]
    · by_cases h : i = x ∧ j = y
      · rw [h.1, h.2]; simp
      · rcases not_and_or.mp h with h' | h' <;>
          simp [Finsupp.single_eq_of_ne' h',
            Finsupp.single_eq_of_ne h',
            Matrix.single_apply_of_ne (h := h)]
  · obtain ⟨ι, b, i, hv, hf⟩ := exists_basis_of_pairing_ne_zero hfv
    have : Fintype ι := FiniteDimensional.fintypeBasisIndex b
    rw [← det_toMatrix b]
    suffices toMatrix b b (transvection f v) =
      Matrix.diagonal (Function.update 1 i (1 + f v)) by
      rw [this]
      simp only [Matrix.det_diagonal]
      rw [Finset.prod_eq_single i]
      · simp
      · intro j _ hj
        simp [Function.update_of_ne hj]
      · simp
    ext x y
    rw [toMatrix_apply, transvection.apply, Matrix.diagonal]
    simp only [map_add, Basis.repr_self, map_smul, Finsupp.coe_add, Finsupp.coe_smul,
      Pi.add_apply, Pi.smul_apply, smul_eq_mul, Matrix.of_apply]
    rw [hv, Function.update_apply, Basis.repr_self, Pi.one_apply, hf]
    simp only [smul_apply, Basis.coord_apply, Basis.repr_self, smul_eq_mul,
      Finsupp.single_eq_same, mul_one]
    split_ifs with hxy hxi
    · simp [← hxy, hxi]
    · rw [Finsupp.single_eq_of_ne hxi]; simp [hxy]
    · rw [Finsupp.single_eq_of_ne hxy, zero_add, mul_assoc]
      convert! mul_zero _
      by_cases hxi : x = i
      · simp [← hxi, Finsupp.single_eq_of_ne hxy]
      · simp [Finsupp.single_eq_of_ne hxi]

end Field

variable {R V : Type*} [CommRing R] [AddCommGroup V] [Module R V]

/-- Determinant of a transvection, over a domain.

See `LinearMap.transvection.det` for the general case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b605b2e2057e1a7db1edbabbbb4e8f971572c314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
