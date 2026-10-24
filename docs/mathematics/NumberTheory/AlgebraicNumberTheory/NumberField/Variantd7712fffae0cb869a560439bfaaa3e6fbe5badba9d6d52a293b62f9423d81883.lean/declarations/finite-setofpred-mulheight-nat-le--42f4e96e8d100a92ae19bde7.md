# finite_setOfPred_mulHeight_nat_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57cc8ee4-53fe-635d-1c81-6ac5e037f6bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d10339d9-80d7-1ae8-2bf2-20962d5e92ec",
  "kind": "lemma",
  "lexical_name": "finite_setOfPred_mulHeight_nat_le",
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
  "slug": "finite-setofpred-mulheight-nat-le--42f4e96e8d100a92ae19bde7",
  "source": {
    "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 374,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42f4e96e8d100a92ae19bde732fd95737906dfa3952bb9067b84635169382cfe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d10339d9-80d7-1ae8-2bf2-20962d5e92ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_setOfPred_mulHeight_nat_le {n : ℕ} (hn : n ≠ 0) (B : ℝ) :
    {a : 𝓞 K | mulHeight ![(a : K), n] ≤ B}.Finite := by
  suffices {a : 𝓞 K | mulHeight ![(a : K), n] ≤ B} ⊆
      {a | ∏ v : InfinitePlace K, (⨆ i, v (![(a : K), n] i)) ^ v.mult ≤ n ^ totalWeight K * B} from
    (finite_setOfPred_prod_infinitePlace_iSup_le hn _).subset this
  refine Set.ofPred_subset_ofPred_of_imp fun a ha ↦ ?_
  rw [mulHeight_eq <| by simp [hn], mul_comm] at ha
  grw [← ha, ← mul_assoc, ← one_le_pow_totalWeight_mul_finprod hn, one_mul]
  -- nonnegativity side goal
  exact Finset.prod_nonneg fun _ _ ↦ pow_nonneg (Real.iSup_nonneg_of_nonnegHomClass ..) _

@[deprecated (since := "2026-07-09")]
alias finite_setOf_mulHeight_nat_le := finite_setOfPred_mulHeight_nat_le

variable (K) in
/- The set of `x : K` such that `mulHeight₁ x` is bounded and `n * x` is integral
(for some given nonzero `n : ℕ`) is finite.
This is a stepping stone for the proof of the next result, which is strictly stronger. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b9f8680e1e7806ca62343835bbb665248bc127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
