# holder_top_right_bound

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
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4549cb74e92aacf05af70d63c4da74c7830f97229c64b195a74ee0f7e708b14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:100dd1c9-c25d-10f4-d69b-5b4c691d16c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3bc43a2-4526-33ed-70a4-9e6cd2cb093f",
  "kind": "lemma",
  "lexical_name": "holder_top_right_bound",
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
  "slug": "holder-top-right-bound--af56ba1f2f409d1ed50c8b87",
  "source": {
    "blob": "3d2c202b0633b9b19db60e75904f734dcd230622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Varianta4549cb74e92aacf05af70d63c4da74c7830f97229c64b195a74ee0f7e708b14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af56ba1f2f409d1ed50c8b874abdfcb35737dce024bd6aab952c5880918dd1d0",
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

Occurrence: `result:b3bc43a2-4526-33ed-70a4-9e6cd2cb093f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma holder_top_right_bound
    {e : (i : ι) → E i} {f : (i : ι) → F i} (B : (i : ι) → E i →L[𝕜] F i →L[𝕜] G i)
    {K C D : ℝ} (hBK : ∀ i, ‖B i‖ ≤ K) (hK : 0 ≤ K) (hD : 0 ≤ D)
    (hCe : ∀ s, ∑ i ∈ s, ‖e i‖ ^ p.toReal ≤ C) (hDf : ∀ i, ‖f i‖ ≤ D) (s : Finset ι) :
    ∑ i ∈ s, ‖B i (e i) (f i)‖ ^ p.toReal ≤ (K * D) ^ p.toReal * C :=
  holder_top_left_bound (B · |>.flip) (by simpa) hK hD hDf hCe s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LpHolder/Varianta4549cb74e92aacf05af70d63c4da74c7830f97229c64b195a74ee0f7e708b14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LpHolder/Varianta4549cb74e92aacf05af70d63c4da74c7830f97229c64b195a74ee0f7e708b14.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2c202b0633b9b19db60e75904f734dcd230622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
