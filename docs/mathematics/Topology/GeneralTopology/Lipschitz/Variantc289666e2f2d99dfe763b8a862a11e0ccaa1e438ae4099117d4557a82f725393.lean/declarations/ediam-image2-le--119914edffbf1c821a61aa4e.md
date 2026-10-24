# ediam_image2_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e1275a168c8fa8294167bae8c5928483228c7e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ade509a4-7a82-6d0e-774a-4e48fed6f75d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbd13fa7-599c-b64e-6f78-e919ded8d5b6",
  "kind": "theorem",
  "lexical_name": "ediam_image2_le",
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
  "slug": "ediam-image2-le--119914edffbf1c821a61aa4e",
  "source": {
    "blob": "4e1275a168c8fa8294167bae8c5928483228c7e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 329,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:119914edffbf1c821a61aa4e59e48e642f4e4664aff97457f3d0848de48dbfcb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbd13fa7-599c-b64e-6f78-e919ded8d5b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_image2_le (f : α → β → γ) {K₁ K₂ : ℝ≥0} (s : Set α) (t : Set β)
    (hf₁ : ∀ b ∈ t, LipschitzOnWith K₁ (f · b) s) (hf₂ : ∀ a ∈ s, LipschitzOnWith K₂ (f a) t) :
    EMetric.diam (Set.image2 f s t) ≤ ↑K₁ * EMetric.diam s + ↑K₂ * EMetric.diam t := by
  simp only [EMetric.diam_le_iff, forall_mem_image2]
  intro a₁ ha₁ b₁ hb₁ a₂ ha₂ b₂ hb₂
  refine (edist_triangle _ (f a₂ b₁) _).trans ?_
  exact
    add_le_add
      ((hf₁ b₁ hb₁ ha₁ ha₂).trans <| mul_left_mono <| EMetric.edist_le_diam_of_mem ha₁ ha₂)
      ((hf₂ a₂ ha₂ hb₁ hb₂).trans <| mul_left_mono <| EMetric.edist_le_diam_of_mem hb₁ hb₂)

end LipschitzOnWith

namespace LocallyLipschitz
variable [PseudoEMetricSpace α] [PseudoEMetricSpace β] [PseudoEMetricSpace γ] {f : α → β}

/-- A Lipschitz function is locally Lipschitz. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variantc289666e2f2d99dfe763b8a862a11e0ccaa1e438ae4099117d4557a82f725393.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1275a168c8fa8294167bae8c5928483228c7e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
