# le_of_mem_compression_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b87145e41254080ec6ed450fc06b2055f19cbb81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:674546a8-41c3-959e-5d52-fb6eed75ba97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:924441bc-f38f-e865-dc27-a492053b83c9",
  "kind": "theorem",
  "lexical_name": "le_of_mem_compression_of_not_mem",
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
  "slug": "le-of-mem-compression-of-not-mem--3949d9bffde59ebe926d5925",
  "source": {
    "blob": "b87145e41254080ec6ed450fc06b2055f19cbb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3949d9bffde59ebe926d59250f1cea0abab65cddf40703a319c52f57c8a00bf5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:924441bc-f38f-e865-dc27-a492053b83c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_of_mem_compression_of_not_mem (h : a ∈ 𝓒 u v s) (ha : a ∉ s) : u ≤ a := by
  rw [mem_compression] at h
  obtain h | ⟨-, b, hb, hba⟩ := h
  · cases ha h.1
  unfold compress at hba
  split_ifs at hba with h
  · rw [← hba, le_sdiff]
    exact ⟨le_sup_right, h.1.mono_right h.2⟩
  · cases ne_of_mem_of_not_mem hb ha hba
#align uv.le_of_mem_compression_of_not_mem UV.le_of_mem_compression_of_not_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b87145e41254080ec6ed450fc06b2055f19cbb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
