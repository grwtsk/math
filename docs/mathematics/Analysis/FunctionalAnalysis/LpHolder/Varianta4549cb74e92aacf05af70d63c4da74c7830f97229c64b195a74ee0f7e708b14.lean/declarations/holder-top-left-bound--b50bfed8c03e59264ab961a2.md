# holder_top_left_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d2c202b0633b9b19db60e75904f734dcd230622",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4549cb74e92aacf05af70d63c4da74c7830f97229c64b195a74ee0f7e708b14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e162f5ec-f846-0d44-6c1c-e0115c7479e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:988b236a-bd07-b1cc-d944-5ee89e1b7a4f",
  "kind": "lemma",
  "lexical_name": "holder_top_left_bound",
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
  "slug": "holder-top-left-bound--b50bfed8c03e59264ab961a2",
  "source": {
    "blob": "3d2c202b0633b9b19db60e75904f734dcd230622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Varianta4549cb74e92aacf05af70d63c4da74c7830f97229c64b195a74ee0f7e708b14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b50bfed8c03e59264ab961a22dc556602b818bf523982a39f7d41408c0d58274",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LpHolder/Varianta4549cb74e92aacf05af70d63c4da74c7830f97229c64b195a74ee0f7e708b14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:988b236a-bd07-b1cc-d944-5ee89e1b7a4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma holder_top_left_bound
    {e : (i : ι) → E i} {f : (i : ι) → F i} (B : (i : ι) → E i →L[𝕜] F i →L[𝕜] G i)
    {K C D : ℝ} (hBK : ∀ i, ‖B i‖ ≤ K) (hK : 0 ≤ K) (hC : 0 ≤ C)
    (hCe : ∀ i, ‖e i‖ ≤ C) (hDf : ∀ s, ∑ i ∈ s, ‖f i‖ ^ q.toReal ≤ D) (s : Finset ι) :
    ∑ i ∈ s, ‖B i (e i) (f i)‖ ^ q.toReal ≤ (K * C) ^ q.toReal * D := by
  grw [← hDf s, s.mul_sum]
  apply s.sum_le_sum fun i hi ↦ ?_
  rw [← Real.mul_rpow (by positivity) (by positivity)]
  gcongr
  exact (B i (e i)).le_of_opNorm_le ((B i).le_of_opNorm_le_of_le (hBK i) (hCe i)) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LpHolder/Varianta4549cb74e92aacf05af70d63c4da74c7830f97229c64b195a74ee0f7e708b14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Varianta4549cb74e92aacf05af70d63c4da74c7830f97229c64b195a74ee0f7e708b14.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2c202b0633b9b19db60e75904f734dcd230622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
