# remaining_kernel_analytic_on_isolating_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c138038c430f2d7a338ed68a9d92f03ea233a285",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 791,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba4ee0db-690a-195d-e81f-f09a18aa5dd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac023fb3-4596-5a5c-5e56-8c839f80745a",
  "kind": "lemma",
  "lexical_name": "remaining_kernel_analytic_on_isolating_disk",
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
  "slug": "remaining-kernel-analytic-on-isolating-disk--5a9ea4d397a3889dab7a8038",
  "source": {
    "blob": "c138038c430f2d7a338ed68a9d92f03ea233a285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 826,
    "line": 791,
    "path": "GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a9ea4d397a3889dab7a80381267777fdcab073349c12b773de900c0a85bad76",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac023fb3-4596-5a5c-5e56-8c839f80745a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 791–826.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma remaining_kernel_analytic_on_isolating_disk
    (p : ZeroPoint) (r : ℝ) (hr : 0 < r)
    (hlocal :
      ∀ s ∈ closedBall
        (2 * (p.val - 1 / 2)) (2 * r),
        0 < s.re ∧
          (s ∈ candidateSingularities →
            s = 2 * (p.val - 1 / 2)))
    (o : RemainingOccurrence p) :
    AnalyticOnNhd ℂ
      (sourceKernel (shiftedValue o.val))
      (closedBall (2 * (p.val - 1 / 2)) r) := by
  have hne :
      shiftedValue o.val ≠ p.val - 1 / 2 ∧
        shiftedValue o.val ≠ -(p.val - 1 / 2) := by
    simpa only [collisionSet, mem_ofPred_eq, not_or] using
      o.property
  have hpos :
      2 * (p.val - 1 / 2) ≠
        2 * shiftedValue o.val := by
    intro he
    exact hne.1
      ((mul_left_cancel₀
        (by norm_num : (2 : ℂ) ≠ 0) he).symm)
  have hneg :
      2 * (p.val - 1 / 2) ≠
        -2 * shiftedValue o.val := by
    intro he
    apply hne.2
    linear_combination (1 / 2 : ℂ) * he
  intro s hs
  apply noncolliding_kernel_analytic
    _ r hlocal o.val hpos hneg s
  exact closedBall_subset_closedBall
    (by linarith) hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean#L791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c138038c430f2d7a338ed68a9d92f03ea233a285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
