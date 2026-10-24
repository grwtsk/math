# sum_prime_logpow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17da169e0814ca6cf64425c8276565660731d843",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:638ef385-1743-0b74-96bd-40a0693d124e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13b2a0cd-3f0d-98a0-b3f8-ae8e99954e5d",
  "kind": "lemma",
  "lexical_name": "sum_prime_logpow_eq",
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
  "slug": "sum-prime-logpow-eq--4b35f596ea76950654f88a39",
  "source": {
    "blob": "17da169e0814ca6cf64425c8276565660731d843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b35f596ea76950654f88a39ad8bbd7b5ada50d72edcb45d4d25df9d599fe699",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13b2a0cd-3f0d-98a0-b3f8-ae8e99954e5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_prime_logpow_eq (b : ℕ) (hb : 1 ≤ b) (X : ℕ) :
    ∑ p ∈ (Ioc 0 X).filter Nat.Prime, Real.log p ^ b / p
      = (∑ n ∈ Ioc 0 X, Λ n / n * Real.log n ^ (b - 1))
        - ∑ n ∈ (Ioc 0 X).filter (fun n => ¬ n.Prime), Λ n / n * Real.log n ^ (b - 1) := by
  rw [eq_sub_iff_add_eq, ← sum_filter_add_sum_filter_not (Ioc 0 X) Nat.Prime]
  congr 1
  refine sum_congr rfl fun p hp => ?_
  have hpp : p.Prime := (mem_filter.mp hp).2
  rw [ArithmeticFunction.vonMangoldt_apply_prime hpp, div_mul_eq_mul_div, ← pow_succ']
  congr 2; omega

/-- **Σ_{p ≤ e^u} (log p)^b/p = u^b/b + O((1+u)^{b−1})**  for b ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variant62bfd85e79fe6c63ba409d84604adf770df5feaca885565a445f44c35ce9c8d8.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17da169e0814ca6cf64425c8276565660731d843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
