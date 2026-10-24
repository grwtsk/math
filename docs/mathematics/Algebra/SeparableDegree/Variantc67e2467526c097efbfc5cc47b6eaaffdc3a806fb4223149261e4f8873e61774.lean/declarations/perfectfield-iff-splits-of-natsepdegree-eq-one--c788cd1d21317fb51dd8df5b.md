# perfectField_iff_splits_of_natSepDegree_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fba01a2f6998d307b1037125a2c6f0b7bac53525",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 890,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c429619-c978-b950-20fa-00a6a5b13ef5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b5df91f-a7ff-2e46-1112-bfdbfb172891",
  "kind": "theorem",
  "lexical_name": "perfectField_iff_splits_of_natSepDegree_eq_one",
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
  "slug": "perfectfield-iff-splits-of-natsepdegree-eq-one--c788cd1d21317fb51dd8df5b",
  "source": {
    "blob": "fba01a2f6998d307b1037125a2c6f0b7bac53525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 890,
    "path": "GRWTSK/Algebra/SeparableDegree/Variantc67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c788cd1d21317fb51dd8df5ba53f1b8da0559bf6d193287cf182621f3edb74d2",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variantc67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b5df91f-a7ff-2e46-1112-bfdbfb172891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 890–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfectField_iff_splits_of_natSepDegree_eq_one (F : Type*) [Field F] :
    PerfectField F ↔ ∀ f : F[X], f.natSepDegree = 1 → Splits f := by
  refine ⟨fun ⟨h⟩ f hf ↦ ?_, fun h ↦ ?_⟩
  · have hf0 : f ≠ 0 := by aesop
    obtain ⟨u, hu⟩ := UniqueFactorizationMonoid.factors_prod hf0
    rw [← hu]
    refine (Splits.multisetProd fun g hg ↦ ?_).mul u.isUnit.splits
    specialize h (UniqueFactorizationMonoid.irreducible_of_factor g hg)
    have key := natSepDegree_le_of_dvd g f (UniqueFactorizationMonoid.dvd_of_mem_factors hg) hf0
    rw [h.natSepDegree_eq_natDegree, hf] at key
    exact Splits.of_natDegree_le_one key
  obtain ⟨p, _⟩ := ExpChar.exists F
  have := PerfectRing.ofSurjective F p fun x ↦ by
    obtain ⟨y, hy⟩ := Splits.exists_eval_eq_zero
      (h _ (pow_one p ▸ natSepDegree_X_pow_char_pow_sub_C p 1 x))
      ((degree_X_pow_sub_C (expChar_pos F p) x).symm ▸ Nat.cast_pos.2 (expChar_pos F p)).ne'
    exact ⟨y, by rwa [eval_sub, eval_X_pow, eval_C, sub_eq_zero] at hy⟩
  exact PerfectRing.toPerfectField F p

variable {E K} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variantc67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variantc67e2467526c097efbfc5cc47b6eaaffdc3a806fb4223149261e4f8873e61774.lean#L890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba01a2f6998d307b1037125a2c6f0b7bac53525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
