# partialSups_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97ad3b105ec5aa861e55d54736c2897c552e6d77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcafb861-7145-e8a4-115d-d01a41a54b0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a51f184-790c-bb4a-eb06-667c399cb8cc",
  "kind": "lemma",
  "lexical_name": "partialSups_apply",
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
  "slug": "partialsups-apply--1889234a2267ae8ab938f6f9",
  "source": {
    "blob": "97ad3b105ec5aa861e55d54736c2897c552e6d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1889234a2267ae8ab938f6f977e72a88e0220b336198d47e40f8e7b8059412c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a51f184-790c-bb4a-eb06-667c399cb8cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma partialSups_apply (hf : ∀ k ≤ n, Tendsto (f k) l (𝓝 (g k))) :
    Tendsto (fun a ↦ partialSups (f · a) n) l (𝓝 (partialSups g n)) := by
  simpa only [← Pi.partialSups_apply] using Tendsto.partialSups hf

end Filter.Tendsto

variable {X : Type*} [TopologicalSpace X] {f : ℕ → X → L} {n : ℕ} {s : Set X} {x : X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartialSups/Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ad3b105ec5aa861e55d54736c2897c552e6d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
