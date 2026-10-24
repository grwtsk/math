# natSepDegree_eq_one_iff_eq_X_sub_C_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5bf4540985e4ca58160e62e2b1ee530f01c1b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 662,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee880ee4-0cfc-5b34-ab63-f86cc8929ad5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9574e4d-6cf3-0d0c-3212-e1f522859f5d",
  "kind": "theorem",
  "lexical_name": "natSepDegree_eq_one_iff_eq_X_sub_C_pow",
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
  "slug": "natsepdegree-eq-one-iff-eq-x-sub-c-pow--985a875ad7a6fb9fd1f620f0",
  "source": {
    "blob": "a5bf4540985e4ca58160e62e2b1ee530f01c1b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 662,
    "path": "GRWTSK/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:985a875ad7a6fb9fd1f620f000c3c523a90a7218719dd0ec40d29162c4653969",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9574e4d-6cf3-0d0c-3212-e1f522859f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natSepDegree_eq_one_iff_eq_X_sub_C_pow : (minpoly F x).natSepDegree = 1 ↔
    ∃ n : ℕ, (minpoly F x).map (algebraMap F E) = (X - C x) ^ q ^ n := by
  haveI := expChar_of_injective_algebraMap (algebraMap F E).injective q
  haveI := expChar_of_injective_ringHom (C_injective (R := E)) q
  refine ⟨fun h ↦ ?_, fun ⟨n, h⟩ ↦ (natSepDegree_eq_one_iff_pow_mem q).2 ?_⟩
  · obtain ⟨n, y, h⟩ := (natSepDegree_eq_one_iff_eq_X_pow_sub_C q).1 h
    have hx := congr_arg (Polynomial.aeval x) h.symm
    rw [minpoly.aeval, map_sub, map_pow, aeval_X, aeval_C, sub_eq_zero, eq_comm] at hx
    use n
    rw [h, Polynomial.map_sub, Polynomial.map_pow, map_X, map_C, hx, map_pow,
      ← sub_pow_expChar_pow_of_commute _ _ (commute_X _)]
  apply_fun constantCoeff at h
  simp_rw [map_pow, map_sub, constantCoeff_apply, coeff_map, coeff_X_zero, coeff_C_zero] at h
  rw [zero_sub, neg_pow, neg_one_pow_expChar_pow] at h
  exact ⟨n, -(minpoly F x).coeff 0, by rw [map_neg, h, neg_mul, one_mul, neg_neg]⟩

end minpoly

namespace IntermediateField

/-- The separable degree of `F⟮α⟯ / F` is equal to the separable degree of the
minimal polynomial of `α` over `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variantfb183b881bd872bcd35bb7cbf7dce1653c7e01e12ea989a6f68fdd13890e68c9.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bf4540985e4ca58160e62e2b1ee530f01c1b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
