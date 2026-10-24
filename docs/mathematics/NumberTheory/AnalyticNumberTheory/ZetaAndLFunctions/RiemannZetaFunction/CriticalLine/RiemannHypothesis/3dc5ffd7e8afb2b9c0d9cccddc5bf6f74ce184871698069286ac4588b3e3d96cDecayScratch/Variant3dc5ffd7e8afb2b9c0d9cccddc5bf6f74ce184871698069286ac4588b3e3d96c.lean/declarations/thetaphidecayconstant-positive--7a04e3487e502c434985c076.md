# thetaPhiDecayConstant_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd99790d58dbd90bf16b497a031672fce2791872",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 10,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58702ca2-23c7-2b36-5ff4-098b517a2168",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c82969a6-45c2-e58c-544b-157291ca6454",
  "kind": "theorem",
  "lexical_name": "thetaPhiDecayConstant_positive",
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
  "slug": "thetaphidecayconstant-positive--7a04e3487e502c434985c076",
  "source": {
    "blob": "cd99790d58dbd90bf16b497a031672fce2791872",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 17,
    "line": 10,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96cDecayScratch/Variant3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a04e3487e502c434985c076caddb3a8a660cf5d0cbfd2b26c73bc98acb85929",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96cDecayScratch/Variant3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c82969a6-45c2-e58c-544b-157291ca6454`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–17.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiDecayConstant_positive : 0 < thetaPhiDecayConstant := by
  unfold thetaPhiDecayConstant HurwitzKernelBounds.F_nat
  apply mul_pos (by positivity)
  exact (HurwitzKernelBounds.summable_f_nat 4 1 (by norm_num : (0 : ℝ) < 1 / 2)).tsum_pos
    (fun m => by unfold HurwitzKernelBounds.f_nat; positivity) 0 (by
      unfold HurwitzKernelBounds.f_nat
      positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96cDecayScratch/Variant3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96cDecayScratch/Variant3dc5ffd7e8afb2b9c0d9cccddc5bf6f74ce184871698069286ac4588b3e3d96c.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd99790d58dbd90bf16b497a031672fce2791872` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
