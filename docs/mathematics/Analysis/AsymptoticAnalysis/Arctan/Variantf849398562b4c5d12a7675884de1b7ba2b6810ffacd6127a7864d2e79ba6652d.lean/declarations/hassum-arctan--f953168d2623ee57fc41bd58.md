# hasSum_arctan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad3417fde3fac6fbbedda87219300cdf5f4aa03a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fed66db-a864-c4fe-e0ee-efd122ef8842",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14b538db-9b6d-e290-a5b4-a071529bd2b0",
  "kind": "theorem",
  "lexical_name": "hasSum_arctan",
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
  "slug": "hassum-arctan--f953168d2623ee57fc41bd58",
  "source": {
    "blob": "ad3417fde3fac6fbbedda87219300cdf5f4aa03a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 121,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f953168d2623ee57fc41bd58e25bc016b458695df65a0907d045dd027f263a5e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14b538db-9b6d-e290-a5b4-a071529bd2b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_arctan {z : ℂ} (hz : ‖z‖ < 1) :
    HasSum (fun n : ℕ ↦ (-1) ^ n * z ^ (2 * n + 1) / ↑(2 * n + 1)) (arctan z) := by
  have := ((hasSum_taylorSeries_log (z := z * I) (by simpa)).add
    (hasSum_taylorSeries_neg_log (z := z * I) (by simpa))).mul_left (-I / 2)
  simp_rw [← add_div, ← add_one_mul, hasSum_arctan_aux hz] at this
  replace := (Nat.divModEquiv 2).symm.hasSum_iff.mpr this
  dsimp [Function.comp_def] at this
  simp_rw [← mul_comm 2 _] at this
  refine this.prod_fiberwise fun k => ?_
  dsimp only
  convert! hasSum_fintype (_ : Fin 2 → ℂ) using 1
  rw [Fin.sum_univ_two, Fin.val_zero, Fin.val_one, Odd.neg_one_pow (n := 2 * k + 0 + 1) (by simp),
    neg_add_cancel, zero_mul, zero_div, mul_zero, zero_add,
    show 2 * k + 1 + 1 = 2 * (k + 1) by ring, Even.neg_one_pow (n := 2 * (k + 1)) (by simp),
    ← mul_div_assoc (_ / _), ← mul_assoc, show -I / 2 * (1 + 1) = -I by ring]
  congr 1
  rw [mul_pow, pow_succ' I, pow_mul, I_sq,
    show -I * _ = -(I * I) * (-1) ^ k * z ^ (2 * k + 1) by ring, I_mul_I, neg_neg, one_mul]

end Complex

/-- The power series expansion of `Real.arctan`, valid on `-1 < x < 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad3417fde3fac6fbbedda87219300cdf5f4aa03a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
