# asiegel_remark

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:309bd5c2-12cb-eb27-cc7b-6bef5b42ecdc",
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
  "slug": "asiegel-remark--b0f7fa29a292a85594f8eb6f",
  "source": {
    "blob": "f215b5b670e1726de5499c0e831b0cfce0acfdfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 287,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0f7fa29a292a85594f8eb6fd51c2370f0076c7f44fad667ce14c9f6b8c8b113",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:309bd5c2-12cb-eb27-cc7b-6bef5b42ecdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem asiegel_remark : ‖asiegel K a‖ ≤ c₂ K * A := by
  have := c_nonneg K
  rw [Matrix.norm_le_iff]
  · intro kr lu
    calc
      ‖asiegel K a kr lu‖ = |asiegel K a kr lu| := ?_
      _ ≤ c K * house ((algebraMap (𝓞 K) K) (a kr.1 lu.1 * ((newBasis K) lu.2))) := ?_
      _ ≤ c K * house ((algebraMap (𝓞 K) K) (a kr.1 lu.1)) *
        house ((algebraMap (𝓞 K) K) ((newBasis K) lu.2)) := ?_
      _ ≤ c K * A * house ((algebraMap (𝓞 K) K) ((newBasis K) lu.2)) := ?_
      _ ≤ c K * A * supOfBasis K := ?_
      _ ≤ c₂ K * A := ?_
    · simp only [Int.cast_abs, ← Real.norm_eq_abs (asiegel K a kr lu)]; rfl
    · have remark := basis_repr_norm_le_const_mul_house K
      simp only [Basis.repr_reindex, Finsupp.equivMapDomain_apply, Equiv.symm_symm,
        integralBasis_repr_apply, algebraMap_int_eq, eq_intCast, Rat.cast_intCast,
        Complex.norm_intCast] at remark
      exact mod_cast remark ((a kr.1 lu.1 * ((newBasis K) lu.2))) kr.2
    · simp only [house, map_mul, mul_assoc]
      gcongr
      apply norm_mul_le
    · rw [mul_assoc, mul_assoc]
      gcongr _ * (?_ * _)
      · apply house_nonneg
      · exact habs kr.1 lu.1
    · gcongr
      simp only [supOfBasis, le_sup'_iff, mem_univ]; use lu.2
    · rw [mul_right_comm, c₂]
      gcongr
      exacts [supOfBasis_nonneg _, le_max_right ..]
  · exact mul_nonneg (c₂_nonneg _) Apos

/-- `c₁ K` is the product of `finrank ℚ K` and  `c₂ K` and depends on `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f215b5b670e1726de5499c0e831b0cfce0acfdfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
