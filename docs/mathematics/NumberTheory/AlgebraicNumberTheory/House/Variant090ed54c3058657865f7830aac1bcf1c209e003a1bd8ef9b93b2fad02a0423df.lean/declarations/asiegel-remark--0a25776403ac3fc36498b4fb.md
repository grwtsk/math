# asiegel_remark

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be3bf510-f734-b5e7-83f6-e68b37c82f9c",
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
  "slug": "asiegel-remark--0a25776403ac3fc36498b4fb",
  "source": {
    "blob": "c8ed24826fa9449efbaea34b87659bb52a1583a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 222,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a25776403ac3fc36498b4fbcb973ac90c794c1e645b86e8d205465e35d9f4db",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be3bf510-f734-b5e7-83f6-e68b37c82f9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–254.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8ed24826fa9449efbaea34b87659bb52a1583a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
