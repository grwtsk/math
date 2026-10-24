# scaledSampling_sawtooth_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98bfe65e7f3303e55f4e7686fc5e5f9810284e7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e87acf2-c8f0-9841-439a-658c32f4c809",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e15a660-8e87-f693-ad6c-318b11467439",
  "kind": "theorem",
  "lexical_name": "scaledSampling_sawtooth_integrableOn",
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
  "slug": "scaledsampling-sawtooth-integrableon--fdcd6a6e79f4b8d4f9a3f6e7",
  "source": {
    "blob": "98bfe65e7f3303e55f4e7686fc5e5f9810284e7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdcd6a6e79f4b8d4f9a3f6e75c16956b38ad549597033f84606e2d4096ad459a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e15a660-8e87-f693-ad6c-318b11467439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledSampling_sawtooth_integrableOn (A q : ℝ) (N : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (fun t : ℝ ↦ ((⌊t⌋₊ : ℝ) + 1 - t) *
      (q * deriv (sourceSamplingKernel A) (q * t))) (Set.Icc 1 (N : ℝ)) := by
  have hi := SamplingError.sawtooth_mul_integrableOn
    (deriv (fun t : ℝ ↦ sourceSamplingKernel A (q * t))) N
    (scaledSampling_derivative_integrableOn A q N hA hq)
  apply hi.congr
  filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
  rw [(scaledSampling_hasDerivAt A q t hA hq
    (lt_of_lt_of_le zero_lt_one ht.1)).deriv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaIntegralTransport/Variant30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98bfe65e7f3303e55f4e7686fc5e5f9810284e7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
