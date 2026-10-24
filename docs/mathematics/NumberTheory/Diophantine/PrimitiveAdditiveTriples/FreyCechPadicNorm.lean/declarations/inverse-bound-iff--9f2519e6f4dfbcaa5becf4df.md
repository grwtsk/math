# inverse_bound_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18b6f46d-bcb2-42c2-93fb-362849e34e05",
  "kind": "theorem",
  "lexical_name": "inverse_bound_iff",
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
  "slug": "inverse-bound-iff--9f2519e6f4dfbcaa5becf4df",
  "source": {
    "blob": "442a65803df5872febff260baf3473d5e0b0966d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 199,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f2519e6f4dfbcaa5becf4df3c8d0ca22e1554cfee47e54a8f881125453d2ed7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18b6f46d-bcb2-42c2-93fb-362849e34e05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_bound_iff (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (B : ℚ) :
    InverseBound p a b hab k B ↔ inverseFactor p a b k ≤ B := by
  rw [inverse_bound_columns]
  constructor
  · intro h
    let i : Index k := Sum.inl ⟨k, Nat.lt_succ_self k⟩
    have h3 : padicNorm p (1 / ((3 * (-(a*b))^k : ℤ) : ℚ)) ≤ B := by
      simpa [i, weights, combinedWeight, baseWeight, FreyWeightedLattice.weight, mul_comm]
        using h (i,0)
    have h4 : padicNorm p (1 / ((4 * (-(a*b))^k : ℤ) : ℚ)) ≤ B := by
      simpa [i, weights, combinedWeight, baseWeight, FreyWeightedLattice.weight, mul_comm]
        using h (i,2)
    have hn := (WeightedPermutationNorm.inverse_twelve_le_max p ((-(a*b))^k)
      (pow_ne_zero _ (neg_ne_zero.mpr hab))).trans (max_le h3 h4)
    rwa [signed_clearing_norm p a b hab k] at hn
  · intro h s
    have hz : (12 * (-(a*b))^k : ℤ) ≠ 0 :=
      mul_ne_zero (by norm_num) (pow_ne_zero _ (neg_ne_zero.mpr hab))
    have hn := WeightedPermutationNorm.inverse_norm_le_of_dvd p (weights a b k s)
      (12 * (-(a*b))^k) hz (weight_dvd_clearing a b k s)
    rw [signed_clearing_norm p a b hab k] at hn
    exact hn.trans h

/-- Actual p-adic norm converted into the already source-bound prime-depth budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `442a65803df5872febff260baf3473d5e0b0966d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
