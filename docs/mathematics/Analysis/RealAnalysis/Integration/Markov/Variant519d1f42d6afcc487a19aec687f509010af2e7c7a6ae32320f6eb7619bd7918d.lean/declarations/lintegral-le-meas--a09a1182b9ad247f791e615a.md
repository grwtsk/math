# lintegral_le_meas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24acdcae62979d4c1694ef1226bb0061b55b7e91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e4a92bd-c84e-40ec-227e-5bbb082e4af6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fe6f426-cc50-51d4-0fe2-7ef586282b3b",
  "kind": "lemma",
  "lexical_name": "lintegral_le_meas",
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
  "slug": "lintegral-le-meas--a09a1182b9ad247f791e615a",
  "source": {
    "blob": "24acdcae62979d4c1694ef1226bb0061b55b7e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a09a1182b9ad247f791e615a194105d74798b0f0689ae34add6e7964d3318102",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fe6f426-cc50-51d4-0fe2-7ef586282b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_le_meas {s : Set α} {f : α → ℝ≥0∞} (hf : ∀ a, f a ≤ 1) (h'f : ∀ a ∈ sᶜ, f a = 0) :
    ∫⁻ a, f a ∂μ ≤ μ s := by
  apply (lintegral_mono (fun x ↦ ?_)).trans (lintegral_indicator_one_le s)
  by_cases hx : x ∈ s
  · simpa [hx] using hf x
  · simpa [hx] using h'f x hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24acdcae62979d4c1694ef1226bb0061b55b7e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
