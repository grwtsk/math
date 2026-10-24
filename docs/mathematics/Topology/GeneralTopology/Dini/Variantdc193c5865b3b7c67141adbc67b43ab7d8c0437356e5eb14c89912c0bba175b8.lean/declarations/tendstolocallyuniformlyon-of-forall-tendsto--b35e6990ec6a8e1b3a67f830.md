# tendstoLocallyUniformlyOn_of_forall_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba7837f3c3d9b6c67e628bbcdc427c1d0a9792f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9cb533f8-7dd9-93d4-1ccc-7f3bfc5e8c35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47bd3861-7f3e-9f98-69b8-e0274a270a1a",
  "kind": "lemma",
  "lexical_name": "tendstoLocallyUniformlyOn_of_forall_tendsto",
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
  "slug": "tendstolocallyuniformlyon-of-forall-tendsto--b35e6990ec6a8e1b3a67f830",
  "source": {
    "blob": "ba7837f3c3d9b6c67e628bbcdc427c1d0a9792f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b35e6990ec6a8e1b3a67f8302114779929de1f5857c0675913ea3dda31ebac41",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47bd3861-7f3e-9f98-69b8-e0274a270a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoLocallyUniformlyOn_of_forall_tendsto {s : Set α}
    (hF_cont : ∀ i, ContinuousOn (F i) s) (hF_anti : ∀ x ∈ s, Antitone (F · x))
    (hf : ContinuousOn f s) (h_tendsto : ∀ x ∈ s, Tendsto (F · x) atTop (𝓝 (f x))) :
    TendstoLocallyUniformlyOn F f atTop s :=
  Monotone.tendstoLocallyUniformlyOn_of_forall_tendsto (G := Gᵒᵈ) hF_cont hF_anti hf h_tendsto

/-- **Dini's theorem**: if `F n` is a monotone decreasing collection of continuous functions on a
compact space converging pointwise to a continuous function `f`, then `F n` converges uniformly
to `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dini/Variantdc193c5865b3b7c67141adbc67b43ab7d8c0437356e5eb14c89912c0bba175b8.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba7837f3c3d9b6c67e628bbcdc427c1d0a9792f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
