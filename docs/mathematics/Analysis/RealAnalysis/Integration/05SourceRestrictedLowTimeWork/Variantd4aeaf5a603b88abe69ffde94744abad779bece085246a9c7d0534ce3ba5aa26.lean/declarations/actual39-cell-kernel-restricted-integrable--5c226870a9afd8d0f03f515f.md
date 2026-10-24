# actual39_cell_kernel_restricted_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e01b1d2164f50a7ba415cb4b5514ac3d0a3ff75a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:624568c3-d7be-a726-bceb-0c98a5dc3317",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d44f3a3-5186-6075-9101-66541d104776",
  "kind": "theorem",
  "lexical_name": "actual39_cell_kernel_restricted_integrable",
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
  "slug": "actual39-cell-kernel-restricted-integrable--5c226870a9afd8d0f03f515f",
  "source": {
    "blob": "e01b1d2164f50a7ba415cb4b5514ac3d0a3ff75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c226870a9afd8d0f03f515fc8949babc81d1dfb0520c04041bf389d7e3516c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d44f3a3-5186-6075-9101-66541d104776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual39_cell_kernel_restricted_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) :
    Integrable (sourceCellKernel r)
      (((volume.restrict (Ioc l b)).prod
        (volume.restrict (Ioc k (k + 1)))).prod (volume.restrict S)) := by
  exact (SourceActualMixedWorkFubini.cellKernel_integrable r hc hlb hk hs).mono_measure
    (Measure.prod_mono le_rfl Measure.restrict_le_self)

/-- The signed restricted cell is reconstructed before applying an absolute bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/05SourceRestrictedLowTimeWork/Variantd4aeaf5a603b88abe69ffde94744abad779bece085246a9c7d0534ce3ba5aa26.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e01b1d2164f50a7ba415cb4b5514ac3d0a3ff75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
