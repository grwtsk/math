# integrable_rpow_abs_mul_exp_of_integrable_exp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "568175606bd7c31c5eefd4bc86669be779ef9df0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05547c8e-3a21-f0d8-5526-08762e8071ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c3fabcf-6d51-91d6-9330-398c1b2c4a02",
  "kind": "lemma",
  "lexical_name": "integrable_rpow_abs_mul_exp_of_integrable_exp_mul",
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
  "slug": "integrable-rpow-abs-mul-exp-of-integrable-exp-mul--2a3495ff95e4dabd88b48df1",
  "source": {
    "blob": "568175606bd7c31c5eefd4bc86669be779ef9df0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 313,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a3495ff95e4dabd88b48df1081313f8d83d409bb0cd4896d87465c79684fe1d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c3fabcf-6d51-91d6-9330-398c1b2c4a02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_rpow_abs_mul_exp_of_integrable_exp_mul (ht : t ≠ 0)
    (ht_int_pos : Integrable (fun ω ↦ exp ((v + t) * X ω)) μ)
    (ht_int_neg : Integrable (fun ω ↦ exp ((v - t) * X ω)) μ) {p : ℝ} (hp : 0 ≤ p) :
    Integrable (fun ω ↦ |X ω| ^ p * exp (v * X ω)) μ := by
  convert integrable_rpow_abs_mul_exp_add_of_integrable_exp_mul ht_int_pos ht_int_neg le_rfl _ hp
    using 4
  · simp
  · simp [ht]

/-- If `exp ((v + t) * X)` and `exp ((v - t) * X)` are integrable, then for all `n : ℕ`,
`|X| ^ n * exp (v * X)` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant44933eb8a118ad4bd8cdc110992d06f09d6e5619ae37ad7c9889e20813baf8c3.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `568175606bd7c31c5eefd4bc86669be779ef9df0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
