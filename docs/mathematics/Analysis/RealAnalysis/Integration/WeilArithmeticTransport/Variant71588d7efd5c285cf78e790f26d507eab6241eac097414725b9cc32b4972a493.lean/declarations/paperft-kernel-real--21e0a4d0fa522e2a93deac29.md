# paperFT_kernel_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbab4d18376de9f146d4c015367b2b1518be8d8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2029a8ab-f69e-5709-6239-782ed2b1fd2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8312edb3-2d7e-24ee-d7f9-6c85f01bc666",
  "kind": "theorem",
  "lexical_name": "paperFT_kernel_real",
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
  "slug": "paperft-kernel-real--21e0a4d0fa522e2a93deac29",
  "source": {
    "blob": "dbab4d18376de9f146d4c015367b2b1518be8d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21e0a4d0fa522e2a93deac2969bf7f4aa7796b9ecf446e3a1f51f75cdacb9a2c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8312edb3-2d7e-24ee-d7f9-6c85f01bc666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paperFT_kernel_real
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    Zeta23.paperFT (smoothKernel A ε hε) (ξ : ℂ) =
      (Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) : ℂ) := by
  rw [paperFT_smoothKernel, smoothKernelFT_eq_square A ε hA hε]
  change sourceFourier (smoothedTest A ε hε) ξ ^ 2 =
    (Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) : ℂ)
  rw [pow_two, Complex.normSq_eq_conj_mul_self,
    source_fourier_conj (smoothedTest A ε hε) (smoothedTest_even A ε hA hε) ξ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbab4d18376de9f146d4c015367b2b1518be8d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
