# actual_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d31c20741170a051049fd432c9116a4ec9ed927",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d75d23b9-81db-542d-5d42-0e2e7c3f3fc6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b01f3972-ae5b-a765-e243-a32cdb14cda5",
  "kind": "theorem",
  "lexical_name": "actual_memLp",
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
  "slug": "actual-memlp--89733009f0aec8f878da3ff4",
  "source": {
    "blob": "7d31c20741170a051049fd432c9116a4ec9ed927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Variantad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89733009f0aec8f878da3ff446c0ff0ea57cda5c4839f65b4e6dd1ad0931636c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Variantad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b01f3972-ae5b-a765-e243-a32cdb14cda5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_memLp (A : ℝ) (hA : 1 ≤ A) :
    MemLp (normalizedTest explicitSecondDerivative A) 2 volume := by
  have hpos : 0 < A := by linarith
  have hc := (normalizedTest_contDiff A hpos).continuous
  apply (memLp_two_iff_integrable_sq hc.aestronglyMeasurable).2
  exact BridgeNormalization.normalized_square_integrable A hA

/-- Support is exact pointwise, and hence satisfies the source's essential-support condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Variantad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Variantad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d31c20741170a051049fd432c9116a4ec9ed927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
