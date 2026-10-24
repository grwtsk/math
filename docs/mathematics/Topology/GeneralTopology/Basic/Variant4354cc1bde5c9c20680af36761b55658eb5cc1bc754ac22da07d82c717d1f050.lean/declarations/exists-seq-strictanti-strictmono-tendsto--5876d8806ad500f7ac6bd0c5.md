# exists_seq_strictAnti_strictMono_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "152453ea8caa12862879e967ece65a996e5623c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a5a522f-23c2-9b70-a2e4-199fd716ce30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2857e7f-bcd6-cba3-cfb5-d52a561d77e4",
  "kind": "theorem",
  "lexical_name": "exists_seq_strictAnti_strictMono_tendsto",
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
  "slug": "exists-seq-strictanti-strictmono-tendsto--5876d8806ad500f7ac6bd0c5",
  "source": {
    "blob": "152453ea8caa12862879e967ece65a996e5623c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2225,
    "line": 2215,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5876d8806ad500f7ac6bd0c56d057c408f840cb22ab864fe2d5d796c68a83422",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2857e7f-bcd6-cba3-cfb5-d52a561d77e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2215–2225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_seq_strictAnti_strictMono_tendsto [DenselyOrdered α] [FirstCountableTopology α]
    {x y : α} (h : x < y) :
    ∃ u v : ℕ → α, StrictAnti u ∧ StrictMono v ∧ (∀ k, u k ∈ Ioo x y) ∧ (∀ l, v l ∈ Ioo x y) ∧
      (∀ k l, u k < v l) ∧ Tendsto u atTop (𝓝 x) ∧ Tendsto v atTop (𝓝 y) := by
  rcases exists_seq_strictAnti_tendsto' h with ⟨u, hu_anti, hu_mem, hux⟩
  rcases exists_seq_strictMono_tendsto' (hu_mem 0).2 with ⟨v, hv_mono, hv_mem, hvy⟩
  exact
    ⟨u, v, hu_anti, hv_mono, hu_mem, fun l => ⟨(hu_mem 0).1.trans (hv_mem l).1, (hv_mem l).2⟩,
      fun k l => (hu_anti.antitone (zero_le k)).trans_lt (hv_mem l).1, hux, hvy⟩
#align exists_seq_strict_anti_strict_mono_tendsto exists_seq_strictAnti_strictMono_tendsto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4354cc1bde5c9c20680af36761b55658eb5cc1bc754ac22da07d82c717d1f050.lean#L2215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152453ea8caa12862879e967ece65a996e5623c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
