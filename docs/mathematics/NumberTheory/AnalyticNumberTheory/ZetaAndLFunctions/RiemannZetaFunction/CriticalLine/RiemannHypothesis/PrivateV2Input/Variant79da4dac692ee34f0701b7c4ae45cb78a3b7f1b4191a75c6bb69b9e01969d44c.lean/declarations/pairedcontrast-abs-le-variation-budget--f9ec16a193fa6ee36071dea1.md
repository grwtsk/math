# pairedContrast_abs_le_variation_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e808feb4cd3d62aa771a8e792cfb7f7faab8c8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d55553d3-5fcd-8c3c-cb3b-678791dabb76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6c5c502-8841-cfed-b2ba-dbad474d19c1",
  "kind": "theorem",
  "lexical_name": "pairedContrast_abs_le_variation_budget",
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
  "slug": "pairedcontrast-abs-le-variation-budget--f9ec16a193fa6ee36071dea1",
  "source": {
    "blob": "3e808feb4cd3d62aa771a8e792cfb7f7faab8c8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ec16a193fa6ee36071dea1ca48a33fddd21a27b25d11bd4f35863b86dded48",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6c5c502-8841-cfed-b2ba-dbad474d19c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedContrast_abs_le_variation_budget {A : ℝ} (hA : 1 ≤ A) (C : ℝ)
    (hC : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) :
    |pairedErrorContrast A| ≤ 2*C*positiveMass A := by
  have h := primeLogWindow_error_le 0 (2 * A) (by norm_num) (by linarith)
    (pairedTailTest A) (pairedTailTest_contDiff hA) C hC
  rw [window_zero_eq_sum, pairedTailTest_integral_eq hA,
    ← pairedErrorContrast_eq_prime_quadrature hA,
    pairedTailTest_at_zero hA, pairedTailTest_at_upper hA,
    pairedTailTest_variation_eq hA] at h
  simp only [abs_zero, zero_add] at h
  convert h using 1 <;> ring

end FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e808feb4cd3d62aa771a8e792cfb7f7faab8c8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
