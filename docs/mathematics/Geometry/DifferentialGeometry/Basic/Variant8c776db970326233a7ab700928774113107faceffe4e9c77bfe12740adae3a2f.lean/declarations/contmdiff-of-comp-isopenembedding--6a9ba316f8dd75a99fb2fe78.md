# ContMDiff.of_comp_isOpenEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a61c22694a381984a0e26021559c59d0aaf9efd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 414,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbd8ce3c-54f3-6f96-0ceb-977c1fc5eb9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22631026-9bcc-eda9-d0f4-6262fe8b723f",
  "kind": "lemma",
  "lexical_name": "ContMDiff.of_comp_isOpenEmbedding",
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
  "slug": "contmdiff-of-comp-isopenembedding--6a9ba316f8dd75a99fb2fe78",
  "source": {
    "blob": "8a61c22694a381984a0e26021559c59d0aaf9efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 414,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a9ba316f8dd75a99fb2fe7814a634a8120ffed8bf45f4ef7039a06aab8457a4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22631026-9bcc-eda9-d0f4-6262fe8b723f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiff.of_comp_isOpenEmbedding {f : M → M'} (hf : ContMDiff I I' n (e' ∘ f)) :
    haveI := h'.singletonChartedSpace; ContMDiff I I' n f := by
  have : f = (h'.toPartialHomeomorph e').symm ∘ e' ∘ f := by
    ext
    rw [Function.comp_apply, Function.comp_apply, IsOpenEmbedding.toPartialHomeomorph_left_inv]
  rw [this]
  apply @ContMDiffOn.comp_contMDiff _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    h'.singletonChartedSpace _ _ (range e') _ (contMDiffOn_isOpenEmbedding_symm h') hf
  simp

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant8c776db970326233a7ab700928774113107faceffe4e9c77bfe12740adae3a2f.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a61c22694a381984a0e26021559c59d0aaf9efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
