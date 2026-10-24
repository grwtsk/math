# tailKernel_cleared_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "719823ed5c7b9cba9c5cb742edf312d2cb44c8e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7b2486e-9dd8-9ed2-0b49-3c39dea126a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c000b867-567e-6dc0-da98-4160f53abd32",
  "kind": "theorem",
  "lexical_name": "tailKernel_cleared_tendsto",
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
  "slug": "tailkernel-cleared-tendsto--8f5ae870379cfaa822e1ffde",
  "source": {
    "blob": "719823ed5c7b9cba9c5cb742edf312d2cb44c8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 112,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f5ae870379cfaa822e1ffded662c5589197b5de8595dc35ae9a1b5b13e7f806",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c000b867-567e-6dc0-da98-4160f53abd32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tailKernel_cleared_tendsto (k : ℕ) (R : ℝ) :
    Tendsto (fun w : ℂ ↦ w ^ (k + 1) * tailKernel k R w)
      (𝓝[≠] 0) (𝓝 k.factorial) := by
  have hc : ContinuousAt
      (fun w : ℂ ↦ Complex.exp (-(R : ℂ) * w) *
        kernelNumerator k ((R : ℂ) * w)) 0 := by
    have hkn : ContinuousAt
        (fun w : ℂ ↦ kernelNumerator k ((R : ℂ) * w)) 0 := by
      exact (kernelNumerator_analytic k ((R : ℂ) * 0)).continuousAt.comp
        (continuousAt_const.mul continuousAt_id)
    exact (Complex.continuous_exp.continuousAt.comp
      (continuousAt_const.mul continuousAt_id)).mul
      hkn
  have ht := hc.tendsto.mono_left (nhdsWithin_le_nhds (s := {0}ᶜ))
  simp only [mul_zero, Complex.exp_zero, kernelNumerator_at_zero, one_mul] at ht
  apply ht.congr'
  filter_upwards [self_mem_nhdsWithin] with w hw
  exact (tailKernel_cleared k R w hw).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant0361a044e085808e39db3312c06f82fc5814abe13d732ab975d3276d804f3568.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `719823ed5c7b9cba9c5cb742edf312d2cb44c8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
