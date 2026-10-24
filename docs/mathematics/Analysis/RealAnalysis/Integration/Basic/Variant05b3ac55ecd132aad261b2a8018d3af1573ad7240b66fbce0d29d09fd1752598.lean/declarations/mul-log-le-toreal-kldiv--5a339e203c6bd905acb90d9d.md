# mul_log_le_toReal_klDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c6b39d6e23e7486c330fd561f01d63efec9606c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:625202a1-a27c-42c8-c50a-bf2368045198",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27ff4f99-2e1b-0ceb-e05d-1d00b498ce10",
  "kind": "lemma",
  "lexical_name": "mul_log_le_toReal_klDiv",
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
  "slug": "mul-log-le-toreal-kldiv--5a339e203c6bd905acb90d9d",
  "source": {
    "blob": "0c6b39d6e23e7486c330fd561f01d63efec9606c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a339e203c6bd905acb90d9da6078cfb2529ca3f1d0fc2f55647f1f440bc0a4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27ff4f99-2e1b-0ceb-e05d-1d00b498ce10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_log_le_toReal_klDiv (hμν : μ ≪ ν) (h_int : Integrable (llr μ ν) μ) :
    μ.real univ * log (μ.real univ / ν.real univ) + ν.real univ - μ.real univ
      ≤ (klDiv μ ν).toReal := by
  by_cases hμ : μ = 0
  · simp [hμ, measureReal_def]
  by_cases hν : ν = 0
  · refine absurd ?_ hμ
    rw [hν] at hμν
    exact Measure.absolutelyContinuous_zero_iff.mp hμν
  refine (le_of_eq ?_).trans (mul_klFun_le_toReal_klDiv hμν h_int)
  have : ν.real univ * (μ.real univ / ν.real univ) = μ.real univ := by
    rw [mul_div_cancel₀]; simp [ENNReal.toReal_eq_zero_iff, hν, measureReal_def]
  rw [klFun, mul_sub, mul_add, mul_one, ← mul_assoc, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant05b3ac55ecd132aad261b2a8018d3af1573ad7240b66fbce0d29d09fd1752598.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c6b39d6e23e7486c330fd561f01d63efec9606c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
