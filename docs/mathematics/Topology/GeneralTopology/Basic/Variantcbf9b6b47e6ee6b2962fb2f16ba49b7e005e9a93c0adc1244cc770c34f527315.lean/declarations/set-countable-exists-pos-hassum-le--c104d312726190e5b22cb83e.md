# Set.Countable.exists_pos_hasSum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e056917bed0090d2909ab8de28047555fd6262b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 558,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:508f1f0c-c884-f33d-2124-5844309f76ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ab831c8-39a9-e310-d742-dac4767d134e",
  "kind": "theorem",
  "lexical_name": "Set.Countable.exists_pos_hasSum_le",
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
  "slug": "set-countable-exists-pos-hassum-le--c104d312726190e5b22cb83e",
  "source": {
    "blob": "e056917bed0090d2909ab8de28047555fd6262b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 558,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c104d312726190e5b22cb83eafd7b76aee4c6c6139bd7cdef7b792d1020e9bb7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ab831c8-39a9-e310-d742-dac4767d134e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.Countable.exists_pos_hasSum_le {ι : Type*} {s : Set ι} (hs : s.Countable) {ε : ℝ}
    (hε : 0 < ε) : ∃ ε' : ι → ℝ, (∀ i, 0 < ε' i) ∧ ∃ c, HasSum (fun i : s ↦ ε' i) c ∧ c ≤ ε := by
  classical
  haveI := hs.toEncodable
  rcases posSumOfEncodable hε s with ⟨f, hf0, ⟨c, hfc, hcε⟩⟩
  refine ⟨fun i ↦ if h : i ∈ s then f ⟨i, h⟩ else 1, fun i ↦ ?_, ⟨c, ?_, hcε⟩⟩
  · conv_rhs => simp
    split_ifs
    exacts [hf0 _, zero_lt_one]
  · simpa only [Subtype.coe_prop, dif_pos, Subtype.coe_eta]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcbf9b6b47e6ee6b2962fb2f16ba49b7e005e9a93c0adc1244cc770c34f527315.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e056917bed0090d2909ab8de28047555fd6262b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
