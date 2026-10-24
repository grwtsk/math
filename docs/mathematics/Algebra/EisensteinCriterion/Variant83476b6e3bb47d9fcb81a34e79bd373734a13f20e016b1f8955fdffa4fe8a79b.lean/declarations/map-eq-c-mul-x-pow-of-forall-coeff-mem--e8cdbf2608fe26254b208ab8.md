# map_eq_C_mul_X_pow_of_forall_coeff_mem

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
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7b3d1df-28c6-ca75-c31e-4ce8a48c04c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:089d9930-c238-4576-cebc-3d2556404983",
  "kind": "theorem",
  "lexical_name": "map_eq_C_mul_X_pow_of_forall_coeff_mem",
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
  "slug": "map-eq-c-mul-x-pow-of-forall-coeff-mem--e8cdbf2608fe26254b208ab8",
  "source": {
    "blob": "53367534c7a24e9d025d68a1e0bb7b0463aab68b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 32,
    "path": "GRWTSK/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8cdbf2608fe26254b208ab811f4887e1dfe276aefda2e890a695dcc97b7e7b6",
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

Occurrence: `result:089d9930-c238-4576-cebc-3d2556404983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_eq_C_mul_X_pow_of_forall_coeff_mem {f : R[X]} {P : Ideal R}
    (hfP : ∀ n : ℕ, ↑n < f.degree → f.coeff n ∈ P) :
    map (mk P) f = C ((mk P) f.leadingCoeff) * X ^ f.natDegree :=
  Polynomial.ext fun n => by
    by_cases hf0 : f = 0
    · simp [hf0]
    rcases lt_trichotomy (n : WithBot ℕ) (degree f) with (h | h | h)
    · erw [coeff_map, eq_zero_iff_mem.2 (hfP n h), coeff_C_mul, coeff_X_pow, if_neg,
        mul_zero]
      rintro rfl
      exact not_lt_of_ge degree_le_natDegree h
    · have : natDegree f = n := natDegree_eq_of_degree_eq_some h.symm
      rw [coeff_C_mul, coeff_X_pow, if_pos this.symm, mul_one, leadingCoeff, this, coeff_map]
    · rw [coeff_eq_zero_of_degree_lt, coeff_eq_zero_of_degree_lt]
      · refine' lt_of_le_of_lt (degree_C_mul_X_pow_le _ _) _
        rwa [← degree_eq_natDegree hf0]
      · exact lt_of_le_of_lt (degree_map_le _ _) h
set_option linter.uppercaseLean3 false in
#align polynomial.eisenstein_criterion_aux.map_eq_C_mul_X_pow_of_forall_coeff_mem Polynomial.EisensteinCriterionAux.map_eq_C_mul_X_pow_of_forall_coeff_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EisensteinCriterion/Variant83476b6e3bb47d9fcb81a34e79bd373734a13f20e016b1f8955fdffa4fe8a79b.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53367534c7a24e9d025d68a1e0bb7b0463aab68b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
