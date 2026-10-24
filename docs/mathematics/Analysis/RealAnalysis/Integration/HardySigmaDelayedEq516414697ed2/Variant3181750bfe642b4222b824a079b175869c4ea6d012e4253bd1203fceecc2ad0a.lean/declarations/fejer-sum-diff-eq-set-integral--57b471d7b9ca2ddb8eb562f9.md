# fejer_sum_diff_eq_set_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 991,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c62d704f-7319-6c15-684a-a57521f5145b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acad053a-84ad-c86d-974d-bcd411d7a906",
  "kind": "lemma",
  "lexical_name": "fejer_sum_diff_eq_set_integral",
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
  "slug": "fejer-sum-diff-eq-set-integral--57b471d7b9ca2ddb8eb562f9",
  "source": {
    "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1000,
    "line": 991,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57b471d7b9ca2ddb8eb562f95740b8470ad7944101bcb5725127deadc0864205",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acad053a-84ad-c86d-974d-bcd411d7a906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 991–1000.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fejer_sum_diff_eq_set_integral {f : ℝ → ℝ} {n : ℕ} {x : ℝ}
    (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) :
    fejer_sum f n x - f x = (1 / Real.pi) * ∫ t in Set.Icc (-Real.pi) Real.pi, (f (x - t) - f x) * fejer_kernel n t := by
      convert fejer_sum_sub_f_eq_integral_v2 hf_int hf_per n x using 1;
      rw [ MeasureTheory.integral_Icc_eq_integral_Ioc, intervalIntegral.integral_of_le ( by linarith [ Real.pi_pos ] ) ]

/-
The central interval and the tail regions are almost everywhere disjoint.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean#L991).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f685935c5324bdcc51c6fdf7db424d8bd5db1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
