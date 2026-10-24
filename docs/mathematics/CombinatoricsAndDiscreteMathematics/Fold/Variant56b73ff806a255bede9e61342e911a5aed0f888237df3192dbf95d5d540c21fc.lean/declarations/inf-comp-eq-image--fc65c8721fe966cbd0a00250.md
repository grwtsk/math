# inf'_comp_eq_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51d59f8c2b63fe02cdfb2a35afc96b83ddd51196",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 925,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:048d629c-1ec5-b129-2549-d4eec498e998",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7104818-fda3-bc7c-9aeb-fbb1bf710664",
  "kind": "lemma",
  "lexical_name": "inf'_comp_eq_image",
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
  "slug": "inf-comp-eq-image--fc65c8721fe966cbd0a00250",
  "source": {
    "blob": "51d59f8c2b63fe02cdfb2a35afc96b83ddd51196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 930,
    "line": 925,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc65c8721fe966cbd0a0025058912a6a979836a9ab272c1cf1d90443b704605c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fold/Variant56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7104818-fda3-bc7c-9aeb-fbb1bf710664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–930.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inf'_comp_eq_image [DecidableEq β] {s : Finset γ} {f : γ → β} (hs : s.Nonempty) (g : β → α) :
    s.inf' hs (g ∘ f) = (s.image f).inf' (hs.image f) g :=
  sup'_comp_eq_image (α := αᵒᵈ) hs g

/-- To rewrite from right to left, use `Finset.inf'_comp_eq_map`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fold/Variant56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51d59f8c2b63fe02cdfb2a35afc96b83ddd51196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
