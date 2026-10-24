# subtypeVal_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c19662de3e595c9ce71ed4980b9b5d7fe3c51648",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:464b7f57-6fa3-95ca-23db-c1ed26074a9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d63140d-9ce4-b8f1-7487-436bd1d5c7ec",
  "kind": "theorem",
  "lexical_name": "subtypeVal_comp",
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
  "slug": "subtypeval-comp--877fe2b8606cf138f1985895",
  "source": {
    "blob": "c19662de3e595c9ce71ed4980b9b5d7fe3c51648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:877fe2b8606cf138f19858956457430d10e4167fb35c2175a062c4cd3d1d04a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d63140d-9ce4-b8f1-7487-436bd1d5c7ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtypeVal_comp (hs : IsOpen s) {x : s} {f : E → s} (h : IsEvenlyCovered f x I) :
    IsEvenlyCovered (Subtype.val ∘ f) x I :=
  have ⟨inst, U, hxU, hU, hfU, H, hH⟩ := h
  have : Subtype.val ∘ f ⁻¹' Subtype.val '' U = f ⁻¹' U := by ext; simp
  ⟨inst, Subtype.val '' U, ⟨x, hxU, rfl⟩, hs.isOpenMap_subtype_val _ hU, by rwa [this], .trans
    (.setCongr this) (H.trans <| .prodCongr (IsEmbedding.subtypeVal.homeomorphImage U) (.refl I)),
    fun _ ↦ congr_arg Subtype.val (hH _)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c19662de3e595c9ce71ed4980b9b5d7fe3c51648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
