# weightedSMul_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bc4c6c1d9af588e1a8e978436689b9b6d2a975a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf564b06846875c97d6b2334971b2136ecfc6236407d753ce8aeef28105246d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3575f0b-b90b-dab2-1ad4-707ce334a521",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc8e91b3-292e-dfc8-338f-599f8c6d4cd8",
  "kind": "theorem",
  "lexical_name": "weightedSMul_union",
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
  "slug": "weightedsmul-union--59b3f04dc894fce3bd43fda5",
  "source": {
    "blob": "4bc4c6c1d9af588e1a8e978436689b9b6d2a975a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L1/Variantcf564b06846875c97d6b2334971b2136ecfc6236407d753ce8aeef28105246d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59b3f04dc894fce3bd43fda56ca872beaff24c6b59ea64fc39c34572cc0d1521",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L1/Variantcf564b06846875c97d6b2334971b2136ecfc6236407d753ce8aeef28105246d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc8e91b3-292e-dfc8-338f-599f8c6d4cd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSMul_union (s t : Set α) (_hs : MeasurableSet s) (ht : MeasurableSet t)
    (hs_finite : μ s ≠ ∞) (ht_finite : μ t ≠ ∞) (hdisj : Disjoint s t) :
    (weightedSMul μ (s ∪ t) : F →L[ℝ] F) = weightedSMul μ s + weightedSMul μ t :=
  weightedSMul_union' s t ht hs_finite ht_finite hdisj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L1/Variantcf564b06846875c97d6b2334971b2136ecfc6236407d753ce8aeef28105246d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L1/Variantcf564b06846875c97d6b2334971b2136ecfc6236407d753ce8aeef28105246d3.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc4c6c1d9af588e1a8e978436689b9b6d2a975a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
