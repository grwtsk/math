# fullPositiveKappa_eq_upper_add_lower_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a444d279ebc5b7aa11f9ebba01f2dd2c884746bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0b60a7c-6262-8042-d04f-8ca3fcfd7b18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e339b1ce-7a5a-3055-1e59-af013f7ff866",
  "kind": "theorem",
  "lexical_name": "fullPositiveKappa_eq_upper_add_lower_succ",
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
  "slug": "fullpositivekappa-eq-upper-add-lower-succ--ab25b50113c61cb190cb404a",
  "source": {
    "blob": "a444d279ebc5b7aa11f9ebba01f2dd2c884746bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/6f67c843a3e4151ff32eSourceFullPositiveKappa/Variant6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab25b50113c61cb190cb404a6983b6c936019adc9b1c232982a4f7b3aea4c940",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/6f67c843a3e4151ff32eSourceFullPositiveKappa/Variant6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e339b1ce-7a5a-3055-1e59-af013f7ff866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullPositiveKappa_eq_upper_add_lower_succ (j : ℕ) :
    fullPositiveKappa (j + 1) = upperCubicKappa (j + 1) +
      (-1 : ℝ) ^ j * (2 : ℝ) ^ (j + 2) * ((j + 1).factorial : ℝ) := by
  have hi := fullPositiveKappaWeight_integrable (j + 1)
  have hadd := intervalIntegral.integral_interval_add_Ioi
    (a := (0 : ℝ)) (b := 1) hi
    (hi.mono_set (by intro u hu; exact zero_lt_one.trans (mem_Ioi.mp hu)))
  rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
    integral_Ioc_eq_integral_Ioo, fullPositiveKappa_lower_integral_succ,
    fullPositiveKappa_upper_integral_succ] at hadd
  unfold fullPositiveKappa
  linarith

/-- All four signed lower endpoint constants, with none discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/6f67c843a3e4151ff32eSourceFullPositiveKappa/Variant6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/6f67c843a3e4151ff32eSourceFullPositiveKappa/Variant6f67c843a3e4151ff32e29caa8f2f3bcca830e4ef526fdd08c6e77dc21fe02d7.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a444d279ebc5b7aa11f9ebba01f2dd2c884746bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
