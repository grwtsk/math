# two_moment_sampling_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f67dabeab1d9b08ef25033ccd41252e02054d30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82c9c915-0df7-7aa6-a336-25ad3cabd178",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03c7c514-3584-42b9-8416-ae2fe2a05d02",
  "kind": "theorem",
  "lexical_name": "two_moment_sampling_bound",
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
  "slug": "two-moment-sampling-bound--d26ffd4ab495bab8ed904b79",
  "source": {
    "blob": "0f67dabeab1d9b08ef25033ccd41252e02054d30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 479,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d26ffd4ab495bab8ed904b796183f67c0137d8877bf2e4efddbcd0874cbae6b5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03c7c514-3584-42b9-8416-ae2fe2a05d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_moment_sampling_bound
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    (hMom : TwoMomentProfile F)
    {x B0 B1 : ℝ}
    (hx : 0 < x)
    (hB : ProfileSupBounds F B0 B1)
    (N : ℕ)
    (hTail : SamplingTailZero F x N) :
    |leftSampleSum (logSamplingTerm F x) N| ≤
      Real.exp (-Real.log x / 2) *
        (8 * B0 + 4 * B1) := by
  have herr :=
    finite_log_sampling_error_global
      hF hx hB N
  have hIntEq :=
    finite_interval_eq_Ioi_of_tailZero
      hF hx N hTail
  have hint :=
    abs_logSampling_integral_Ioi_le
      hMom hx hB
  rw [hIntEq] at herr
  calc
    |leftSampleSum (logSamplingTerm F x) N| =
        |(leftSampleSum (logSamplingTerm F x) N -
            ∫ u in Ioi (1 : ℝ),
              logSamplingTerm F x u) +
          (∫ u in Ioi (1 : ℝ),
              logSamplingTerm F x u)| := by
      congr 1
      ring
    _ ≤
        |leftSampleSum (logSamplingTerm F x) N -
          ∫ u in Ioi (1 : ℝ),
            logSamplingTerm F x u| +
        |∫ u in Ioi (1 : ℝ),
          logSamplingTerm F x u| :=
      abs_add_le _ _
    _ ≤
        Real.exp (-Real.log x / 2) *
            (4 * B0 + 4 * B1) +
          Real.exp (-Real.log x / 2) *
            (4 * B0) :=
      add_le_add herr hint
    _ =
        Real.exp (-Real.log x / 2) *
          (8 * B0 + 4 * B1) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f67dabeab1d9b08ef25033ccd41252e02054d30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
