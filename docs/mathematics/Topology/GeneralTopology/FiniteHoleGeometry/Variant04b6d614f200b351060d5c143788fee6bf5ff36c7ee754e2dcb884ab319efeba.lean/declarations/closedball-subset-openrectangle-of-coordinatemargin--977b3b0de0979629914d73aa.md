# closedBall_subset_openRectangle_of_coordinateMargin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "090e31c115d6262f66b6e8490d81f9fdc1dc1f2c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdac55ef-7d23-2264-e072-d4d538996eed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f32b824-a617-56a3-d2bf-36edc6b35007",
  "kind": "theorem",
  "lexical_name": "closedBall_subset_openRectangle_of_coordinateMargin",
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
  "slug": "closedball-subset-openrectangle-of-coordinatemargin--977b3b0de0979629914d73aa",
  "source": {
    "blob": "090e31c115d6262f66b6e8490d81f9fdc1dc1f2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:977b3b0de0979629914d73aa81ea3bf15ca2976c9797104773f989d2b4e34cef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f32b824-a617-56a3-d2bf-36edc6b35007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedBall_subset_openRectangle_of_coordinateMargin
    {lower upper center : ℂ} {radius : ℝ}
    (hReLower : min lower.re upper.re < center.re - radius)
    (hReUpper : center.re + radius < max lower.re upper.re)
    (hImLower : min lower.im upper.im < center.im - radius)
    (hImUpper : center.im + radius < max lower.im upper.im) :
    closedBall center radius ⊆ openRectangle lower upper := by
  intro point hpoint
  have hnorm : ‖point - center‖ ≤ radius := by
    simpa only [Complex.dist_eq] using (mem_closedBall.mp hpoint)
  have hreNorm : |point.re - center.re| ≤ ‖point - center‖ := by
    simpa only [sub_re] using Complex.abs_re_le_norm (point - center)
  have himNorm : |point.im - center.im| ≤ ‖point - center‖ := by
    simpa only [sub_im] using Complex.abs_im_le_norm (point - center)
  have hre : |point.re - center.re| ≤ radius := hreNorm.trans hnorm
  have him : |point.im - center.im| ≤ radius := himNorm.trans hnorm
  rw [openRectangle, Complex.mem_reProdIm]
  constructor
  · rw [Set.mem_Ioo]
    rcases abs_le.mp hre with ⟨hreLower, hreUpper⟩
    constructor <;> linarith
  · rw [Set.mem_Ioo]
    rcases abs_le.mp him with ⟨himLower, himUpper⟩
    constructor <;> linarith

/-- The set-theoretic boundary used by the rectangle incubation layer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `090e31c115d6262f66b6e8490d81f9fdc1dc1f2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
