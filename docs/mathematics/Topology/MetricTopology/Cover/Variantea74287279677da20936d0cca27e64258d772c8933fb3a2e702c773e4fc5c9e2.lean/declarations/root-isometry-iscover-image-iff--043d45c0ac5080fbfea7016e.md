# _root_.Isometry.isCover_image_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d9a593300341548a4bb600d2f27fb36e1ddbd40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57e1a228-34b0-48df-3c05-99c935cf373e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cc68567-f0c4-b2b5-0730-58a5a4728265",
  "kind": "lemma",
  "lexical_name": "_root_.Isometry.isCover_image_iff",
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
  "slug": "root-isometry-iscover-image-iff--043d45c0ac5080fbfea7016e",
  "source": {
    "blob": "4d9a593300341548a4bb600d2f27fb36e1ddbd40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 80,
    "path": "GRWTSK/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:043d45c0ac5080fbfea7016e445191da65c5ecd4c3acc9611729ef2db0cbf7f9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cc68567-f0c4-b2b5-0730-58a5a4728265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Isometry.isCover_image_iff {f : X → Y} (hf : Isometry f) (C : Set X) :
    IsCover ε (f '' s) (f '' C) ↔ IsCover ε s C := by
  refine ⟨fun h x hx ↦ ?_, fun h ↦ by simpa using h.image_lipschitz hf.lipschitzWith⟩
  obtain ⟨c, hc_mem, hc⟩ := h (Set.mem_image_of_mem _ hx)
  obtain ⟨c', hc', rfl⟩ := hc_mem
  exact ⟨c', hc', le_of_eq_of_le (hf.edist_eq _ _).symm hc⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9a593300341548a4bb600d2f27fb36e1ddbd40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
