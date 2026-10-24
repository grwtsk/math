# isUnit_of_natDegree_eq_zero_of_isPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53367534c7a24e9d025d68a1e0bb7b0463aab68b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:542db78d-0c3f-f90e-d80a-3da468de742c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c66f9eff-9ea1-57dd-10ec-5dbf75f0c260",
  "kind": "theorem",
  "lexical_name": "isUnit_of_natDegree_eq_zero_of_isPrimitive",
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
  "slug": "isunit-of-natdegree-eq-zero-of-isprimitive--a01b81ea65637fdf4c61631e",
  "source": {
    "blob": "53367534c7a24e9d025d68a1e0bb7b0463aab68b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 74,
    "path": "GRWTSK/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a01b81ea65637fdf4c61631ef665a4050475dfc1163309c1ac92bc5ab529c073",
  "verification": {
    "reference": "docs/verification/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c66f9eff-9ea1-57dd-10ec-5dbf75f0c260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_of_natDegree_eq_zero_of_isPrimitive {p q : R[X]}
  --Porting note: stated using `IsPrimitive` which is defeq to old statement.
    (hu : IsPrimitive (p * q)) (hpm : p.natDegree = 0) : IsUnit p := by
  rw [eq_C_of_degree_le_zero (natDegree_eq_zero_iff_degree_le_zero.1 hpm), isUnit_C]
  refine' hu _ _
  rw [← eq_C_of_degree_le_zero (natDegree_eq_zero_iff_degree_le_zero.1 hpm)]
  exact dvd_mul_right _ _
#align polynomial.eisenstein_criterion_aux.is_unit_of_nat_degree_eq_zero_of_forall_dvd_is_unit Polynomial.EisensteinCriterionAux.isUnit_of_natDegree_eq_zero_of_isPrimitive

end EisensteinCriterionAux

open EisensteinCriterionAux

variable [IsDomain R]

/-- If `f` is a non constant polynomial with coefficients in `R`, and `P` is a prime ideal in `R`,
then if every coefficient in `R` except the leading coefficient is in `P`, and
the trailing coefficient is not in `P^2` and no non units in `R` divide `f`, then `f` is
irreducible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53367534c7a24e9d025d68a1e0bb7b0463aab68b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
