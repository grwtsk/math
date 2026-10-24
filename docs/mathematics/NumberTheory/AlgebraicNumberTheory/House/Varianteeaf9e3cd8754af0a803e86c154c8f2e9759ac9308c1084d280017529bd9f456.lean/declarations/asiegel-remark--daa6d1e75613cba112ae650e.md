# asiegel_remark

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51917a30dcce0839d79e6550bfd70debf303f6a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdfb4a4f-06f7-8703-6893-01e8b03f0cf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccc60aff-3d79-c69c-27df-2cf8d3868886",
  "kind": "theorem",
  "lexical_name": "asiegel_remark",
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
  "slug": "asiegel-remark--daa6d1e75613cba112ae650e",
  "source": {
    "blob": "51917a30dcce0839d79e6550bfd70debf303f6a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 214,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daa6d1e75613cba112ae650e74669758731a7d107650115e516b54be7ff30e92",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccc60aff-3d79-c69c-27df-2cf8d3868886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem asiegel_remark : ‖asiegel K a‖ ≤ c₂ K * A := by
  rw [Matrix.norm_le_iff]
  · intro kr lu
    calc
      ‖asiegel K a kr lu‖ = |asiegel K a kr lu| := ?_
      _ ≤ (c K) *
        house ((algebraMap (𝓞 K) K) (a kr.1 lu.1 * ((newBasis K) lu.2))) := ?_
      _ ≤ (c K) * house ((algebraMap (𝓞 K) K) (a kr.1 lu.1)) *
        house ((algebraMap (𝓞 K) K) ((newBasis K) lu.2)) := ?_
      _ ≤ (c K) * A * house ((algebraMap (𝓞 K) K) ((newBasis K) lu.2)) := ?_
      _ ≤ (c K) * A * (supOfBasis K) := ?_
      _ ≤ (c₂ K) * A := ?_
    · simp only [Int.cast_abs, ← Real.norm_eq_abs (asiegel K a kr lu)]; rfl
    · have remark := basis_repr_norm_le_const_mul_house K
      simp only [Basis.repr_reindex, Finsupp.mapDomain_equiv_apply,
        integralBasis_repr_apply, eq_intCast, Rat.cast_intCast,
          Complex.norm_intCast] at remark
      exact mod_cast remark ((a kr.1 lu.1 * ((newBasis K) lu.2))) kr.2
    · simp only [house, map_mul, mul_assoc]
      exact mul_le_mul_of_nonneg_left (norm_mul_le _ _) (c_nonneg K)
    · rw [mul_assoc, mul_assoc]
      apply mul_le_mul_of_nonneg_left ?_ (c_nonneg K)
      · apply mul_le_mul_of_nonneg_right (habs kr.1 lu.1) ?_
        · exact norm_nonneg ((canonicalEmbedding K) ((algebraMap (𝓞 K) K)
            ((newBasis K) lu.2)))
    ·  apply mul_le_mul_of_nonneg_left ?_ (mul_nonneg (c_nonneg K) Apos)
       · simp only [supOfBasis, le_sup'_iff, mem_univ]; use lu.2
    · rw [mul_right_comm]
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right (le_max_right ..) (supOfBasis_nonneg K)) Apos
  · rw [mul_nonneg_iff]; left; exact ⟨c₂_nonneg K, Apos⟩

/-- `c₁ K` is the product of `finrank ℚ K` and  `c₂ K` and depends on `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Varianteeaf9e3cd8754af0a803e86c154c8f2e9759ac9308c1084d280017529bd9f456.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51917a30dcce0839d79e6550bfd70debf303f6a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
