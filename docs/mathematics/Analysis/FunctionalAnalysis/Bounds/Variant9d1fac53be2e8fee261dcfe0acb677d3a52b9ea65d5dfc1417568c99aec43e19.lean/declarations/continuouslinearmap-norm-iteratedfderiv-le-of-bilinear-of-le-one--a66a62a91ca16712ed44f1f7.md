# ContinuousLinearMap.norm_iteratedFDeriv_le_of_bilinear_of_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b36b2a75586c47b7eb85e09adf539d470eb7cf2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22d6494e-a727-f231-2c9e-ff955f418364",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af952d9c-c8af-9923-5343-437f37d73843",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearMap.norm_iteratedFDeriv_le_of_bilinear_of_le_one",
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
  "slug": "continuouslinearmap-norm-iteratedfderiv-le-of-bilinear-of-le-one--a66a62a91ca16712ed44f1f7",
  "source": {
    "blob": "3b36b2a75586c47b7eb85e09adf539d470eb7cf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 230,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a66a62a91ca16712ed44f1f74d0804b08a0b2eeeb1a8092b983191ec3558415b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af952d9c-c8af-9923-5343-437f37d73843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearMap.norm_iteratedFDeriv_le_of_bilinear_of_le_one (B : E →L[𝕜] F →L[𝕜] G)
    {f : D → E} {g : D → F} {N : WithTop ℕ∞} (hf : ContDiff 𝕜 N f) (hg : ContDiff 𝕜 N g)
    (x : D) {n : ℕ} (hn : n ≤ N) (hB : ‖B‖ ≤ 1) :
    ‖iteratedFDeriv 𝕜 n (fun y => B (f y) (g y)) x‖ ≤
      ∑ i ∈ Finset.range (n + 1),
        (n.choose i : ℝ) * ‖iteratedFDeriv 𝕜 i f x‖ * ‖iteratedFDeriv 𝕜 (n - i) g x‖ := by
  simp_rw [← iteratedFDerivWithin_univ]
  exact B.norm_iteratedFDerivWithin_le_of_bilinear_of_le_one hf.contDiffOn hg.contDiffOn
    uniqueDiffOn_univ (mem_univ x) hn hB

section

variable {𝕜' : Type*} [NormedField 𝕜'] [NormedAlgebra 𝕜 𝕜'] [NormedSpace 𝕜' F]
  [IsScalarTower 𝕜 𝕜' F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant9d1fac53be2e8fee261dcfe0acb677d3a52b9ea65d5dfc1417568c99aec43e19.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b36b2a75586c47b7eb85e09adf539d470eb7cf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
