# isBounded_image2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d4f0815f5328ec04abaaeb4b3244fcd10519d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7a9b7f3-c18f-0c35-cbf6-8f60ab813853",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:000c5ac3-5611-f81c-09c5-4576cf99b78a",
  "kind": "theorem",
  "lexical_name": "isBounded_image2",
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
  "slug": "isbounded-image2--d0b44d57628d5be321b20cc9",
  "source": {
    "blob": "99d4f0815f5328ec04abaaeb4b3244fcd10519d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 259,
    "path": "GRWTSK/Topology/MetricTopology/Lipschitz/Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0b44d57628d5be321b20cc998e4744ec3a0ea0edf42c0fde3233f087b399078",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lipschitz/Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:000c5ac3-5611-f81c-09c5-4576cf99b78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_image2 (f : α → β → γ) {K₁ K₂ : ℝ≥0} {s : Set α} {t : Set β}
    (hs : Bornology.IsBounded s) (ht : Bornology.IsBounded t)
    (hf₁ : ∀ b ∈ t, LipschitzOnWith K₁ (fun a => f a b) s)
    (hf₂ : ∀ a ∈ s, LipschitzOnWith K₂ (f a) t) : Bornology.IsBounded (Set.image2 f s t) :=
  Metric.isBounded_iff_ediam_ne_top.2 <|
    ne_top_of_le_ne_top
      (ENNReal.add_ne_top.mpr
        ⟨ENNReal.mul_ne_top ENNReal.coe_ne_top hs.ediam_ne_top,
          ENNReal.mul_ne_top ENNReal.coe_ne_top ht.ediam_ne_top⟩)
      (ediam_image2_le _ _ _ hf₁ hf₂)

end Metric

end LipschitzOnWith

namespace LocallyLipschitz

section Real

variable [PseudoEMetricSpace α] {f g : α → ℝ}

/-- The minimum of locally Lipschitz functions is locally Lipschitz. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lipschitz/Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lipschitz/Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d4f0815f5328ec04abaaeb4b3244fcd10519d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
