# two_mul_riemannZeta_eq_tsum_int_inv_pow_of_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b382f3d6c15762c9db38ddea5e1b572455631f27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d24b729a30f1fef0820f0f7c9cdbb5910df30dfac2c597eb666794bead08b1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e82f2b7-ebb6-711d-3c3b-7a974d34daa8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02551a03-a5dd-d469-1b58-5b36de3d88f7",
  "kind": "lemma",
  "lexical_name": "two_mul_riemannZeta_eq_tsum_int_inv_pow_of_even",
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
  "slug": "two-mul-riemannzeta-eq-tsum-int-inv-pow-of-even--32e6eab42ae9666f5776b6ab",
  "source": {
    "blob": "b382f3d6c15762c9db38ddea5e1b572455631f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 229,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant8d24b729a30f1fef0820f0f7c9cdbb5910df30dfac2c597eb666794bead08b1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32e6eab42ae9666f5776b6ab4da94277a41320e8e4ca8a858be533ae02d5e782",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant8d24b729a30f1fef0820f0f7c9cdbb5910df30dfac2c597eb666794bead08b1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02551a03-a5dd-d469-1b58-5b36de3d88f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_mul_riemannZeta_eq_tsum_int_inv_pow_of_even {k : ℕ} (hk : 2 ≤ k) (hk2 : Even k) :
    2 * riemannZeta k = ∑' (n : ℤ), ((n : ℂ) ^ k)⁻¹ := by
  have hkk : 1 < k := by linarith
  rw [tsum_int_eq_zero_add_two_mul_tsum_pnat]
  · have h0 : (0 ^ k : ℂ)⁻¹ = 0 := by simp; lia
    norm_cast
    simp [h0, zeta_eq_tsum_one_div_nat_add_one_cpow (s := k) (by simp [hkk]),
      tsum_pnat_eq_tsum_succ (f := fun n => ((n : ℂ) ^ k)⁻¹)]
  · intro n
    simp [Even.neg_pow hk2]
  · exact (Summable.of_nat_of_neg (by simp [hkk]) (by simp [hkk])).of_norm

/-- The residue of `ζ(s)` at `s = 1` is equal to 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant8d24b729a30f1fef0820f0f7c9cdbb5910df30dfac2c597eb666794bead08b1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZeta/Variant8d24b729a30f1fef0820f0f7c9cdbb5910df30dfac2c597eb666794bead08b1c.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b382f3d6c15762c9db38ddea5e1b572455631f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
