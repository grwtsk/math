# MeasurableSet.of_union_range_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "575bea33c92b621ceb196eb8bfa36d822435b1be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71db6500-c947-14ba-b500-d4b75ba3d5cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7270e3c4-db00-76d2-cbc2-f041745bd33c",
  "kind": "lemma",
  "lexical_name": "MeasurableSet.of_union_range_cover",
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
  "slug": "measurableset-of-union-range-cover--928ba047c928fd05bf2067a7",
  "source": {
    "blob": "575bea33c92b621ceb196eb8bfa36d822435b1be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 142,
    "path": "GRWTSK/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:928ba047c928fd05bf2067a791e6bb3f785f544036642cd578abbd2e346fdc8a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7270e3c4-db00-76d2-cbc2-f041745bd33c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasurableSet.of_union_range_cover (hi₁ : MeasurableEmbedding i₁)
    (hi₂ : MeasurableEmbedding i₂) (h : univ ⊆ range i₁ ∪ range i₂)
    (hs₁ : MeasurableSet (i₁ ⁻¹' s)) (hs₂ : MeasurableSet (i₂ ⁻¹' s)) : MeasurableSet s := by
  convert! (hi₁.measurableSet_image' hs₁).union (hi₂.measurableSet_image' hs₂)
  simp [image_preimage_eq_range_inter, ← union_inter_distrib_right, univ_subset_iff.1 h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `575bea33c92b621ceb196eb8bfa36d822435b1be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
