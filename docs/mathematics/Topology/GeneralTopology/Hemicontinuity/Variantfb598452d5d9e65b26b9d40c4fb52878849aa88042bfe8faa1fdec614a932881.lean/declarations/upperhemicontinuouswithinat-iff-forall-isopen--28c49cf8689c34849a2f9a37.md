# upperHemicontinuousWithinAt_iff_forall_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fe97eff17b1a588d9038f861ba586f978f9626c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22aaae01-80c5-4d08-44db-b9f410aa174e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a31e97ba-5586-5451-e12d-d5601ff9d2f4",
  "kind": "lemma",
  "lexical_name": "upperHemicontinuousWithinAt_iff_forall_isOpen",
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
  "slug": "upperhemicontinuouswithinat-iff-forall-isopen--28c49cf8689c34849a2f9a37",
  "source": {
    "blob": "5fe97eff17b1a588d9038f861ba586f978f9626c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28c49cf8689c34849a2f9a37e43e3f4863036e37a2a4fe449f5db9f618fe650d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a31e97ba-5586-5451-e12d-d5601ff9d2f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma upperHemicontinuousWithinAt_iff_forall_isOpen :
    UpperHemicontinuousWithinAt f s x ↔ ∀ u, IsOpen u → f x ⊆ u → ∀ᶠ x' in 𝓝[s] x, f x' ⊆ u := by
  rw [upperHemicontinuousWithinAt_iff, hasBasis_nhdsSet _ |>.forall_iff ?mono]
  case mono => exact fun t₁ t₂ ht h ↦ h.mp <| .of_forall fun x' ↦ by gcongr
  simp only [and_imp]
  apply forall₂_congr
  simp +contextual [← subset_interior_iff_mem_nhdsSet, IsOpen.interior_eq]

alias ⟨UpperHemicontinuousWithinAt.forall_isOpen, UpperHemicontinuousWithinAt.of_forall_isOpen⟩ :=
  upperHemicontinuousWithinAt_iff_forall_isOpen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fe97eff17b1a588d9038f861ba586f978f9626c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
