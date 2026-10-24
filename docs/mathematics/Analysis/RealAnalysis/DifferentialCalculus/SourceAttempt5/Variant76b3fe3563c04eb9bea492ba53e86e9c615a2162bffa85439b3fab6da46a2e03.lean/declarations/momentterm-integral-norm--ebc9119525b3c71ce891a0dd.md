# momentTerm_integral_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51681f760ab8370c590a6e60ca9d916dd4fc3667",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b776a2f-019e-ac12-6a54-f99e8c10f5e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f636eb3e-11b9-bae7-a4f3-44971b2234a0",
  "kind": "theorem",
  "lexical_name": "momentTerm_integral_norm",
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
  "slug": "momentterm-integral-norm--ebc9119525b3c71ce891a0dd",
  "source": {
    "blob": "51681f760ab8370c590a6e60ca9d916dd4fc3667",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebc9119525b3c71ce891a0dd656575967437039d8e05239ec36d84c741bc1f72",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f636eb3e-11b9-bae7-a4f3-44971b2234a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem momentTerm_integral_norm {x : ℝ} (hx : -2 < x) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, ‖momentTerm x n t‖) = secondTerm x n := by
  rw [show (∫ t : ℝ in Ioi 0, ‖momentTerm x n t‖) =
      ∫ t : ℝ in Ioi 0, momentTerm x n t from integral_congr_ae (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact Real.norm_of_nonneg (momentTerm_nonneg x n ht))]
  exact momentTerm_integral hx n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51681f760ab8370c590a6e60ca9d916dd4fc3667` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
