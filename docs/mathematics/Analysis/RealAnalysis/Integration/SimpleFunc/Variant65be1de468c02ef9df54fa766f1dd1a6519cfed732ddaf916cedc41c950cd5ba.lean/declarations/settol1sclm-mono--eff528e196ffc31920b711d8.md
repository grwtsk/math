# setToL1SCLM_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f6960348d93265cd0740b8ac3057820662352d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0db96dfd-7cf3-b19b-d110-ca0148da1890",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f6dfee7-d295-5df1-6a2b-692a2773626c",
  "kind": "theorem",
  "lexical_name": "setToL1SCLM_mono",
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
  "slug": "settol1sclm-mono--eff528e196ffc31920b711d8",
  "source": {
    "blob": "7f6960348d93265cd0740b8ac3057820662352d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 325,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eff528e196ffc31920b711d86f952a4efe4dda287916b4ab4466f64b4813da1e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f6dfee7-d295-5df1-6a2b-692a2773626c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToL1SCLM_mono {T : Set α → G' →L[ℝ] G''} {C : ℝ} (hT : DominatedFinMeasAdditive μ T C)
    (hT_nonneg : ∀ s, MeasurableSet s → μ s < ∞ → ∀ x, 0 ≤ x → 0 ≤ T s x) {f g : α →₁ₛ[μ] G'}
    (hfg : f ≤ g) : setToL1SCLM α G' μ hT f ≤ setToL1SCLM α G' μ hT g :=
  setToL1S_mono (fun _ => hT.eq_zero_of_measure_zero) hT.1 hT_nonneg hfg

end Order

end SetToL1S

end SimpleFunc

end L1

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant65be1de468c02ef9df54fa766f1dd1a6519cfed732ddaf916cedc41c950cd5ba.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f6960348d93265cd0740b8ac3057820662352d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
