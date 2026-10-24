# Summable.tsum_mul_tsum_eq_tsum_sum_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96284595035807963eb423dbc69673323607bda2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:010575bb-2b02-5737-7bcd-868a4793809c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eabebc59-b8c7-6344-787e-2f293a6d49ef",
  "kind": "theorem",
  "lexical_name": "Summable.tsum_mul_tsum_eq_tsum_sum_antidiagonal",
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
  "slug": "summable-tsum-mul-tsum-eq-tsum-sum-antidiagonal--e1e58502d0c3a4fe0ec6999a",
  "source": {
    "blob": "96284595035807963eb423dbc69673323607bda2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 213,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1e58502d0c3a4fe0ec6999ab456600fcff5d778dfb9b78701d273873fcdb215",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eabebc59-b8c7-6344-787e-2f293a6d49ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Summable.tsum_mul_tsum_eq_tsum_sum_antidiagonal (hf : Summable f)
    (hg : Summable g) (hfg : Summable fun x : A × A ↦ f x.1 * g x.2) :
    ((∑' n, f n) * ∑' n, g n) = ∑' n, ∑ kl ∈ antidiagonal n, f kl.1 * g kl.2 := by
  conv_rhs => congr; ext; rw [← Finset.sum_finset_coe, ← tsum_fintype]
  rw [hf.tsum_mul_tsum hg hfg, ← sigmaAntidiagonalEquivProd.tsum_eq (_ : A × A → α)]
  exact (summable_mul_prod_iff_summable_mul_sigma_antidiagonal.mp hfg).tsum_sigma'
    (fun n ↦ (hasSum_fintype _).summable)


@[deprecated (since := "2025-04-12")] alias tsum_mul_tsum_eq_tsum_sum_antidiagonal :=
  Summable.tsum_mul_tsum_eq_tsum_sum_antidiagonal

end HasAntidiagonal

section Nat

variable [TopologicalSpace α] [NonUnitalNonAssocSemiring α] {f g : ℕ → α}
variable [T3Space α] [IsTopologicalSemiring α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant538d3aae9996d6379c2b480f16555273cce96b2caaab6e23c06d42cb07ed7644.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96284595035807963eb423dbc69673323607bda2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
