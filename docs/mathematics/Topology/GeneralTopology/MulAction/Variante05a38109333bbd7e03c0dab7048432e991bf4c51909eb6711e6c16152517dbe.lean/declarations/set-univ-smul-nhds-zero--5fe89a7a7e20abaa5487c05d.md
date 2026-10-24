# Set.univ_smul_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "134113ff690bb9685970d79c1bab63af9cecc7b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69eec549-1809-7df2-e2bb-5d49962bc59d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34bfcf68-7670-c8ed-80c2-286e14f5f528",
  "kind": "theorem",
  "lexical_name": "Set.univ_smul_nhds_zero",
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
  "slug": "set-univ-smul-nhds-zero--5fe89a7a7e20abaa5487c05d",
  "source": {
    "blob": "134113ff690bb9685970d79c1bab63af9cecc7b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe89a7a7e20abaa5487c05d0a2ebb519e65705feb8668896da1090203e6c66c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34bfcf68-7670-c8ed-80c2-286e14f5f528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.univ_smul_nhds_zero {s : Set X} (hs : s ∈ 𝓝 0) : (univ : Set G₀) • s = Set.univ := by
  refine Set.eq_univ_of_forall fun x ↦ ?_
  have : Tendsto (· • x) (𝓝 (0 : G₀)) (𝓝 0) :=
    zero_smul G₀ x ▸ tendsto_id.smul tendsto_const_nhds
  rcases Filter.nonempty_of_mem (inter_mem_nhdsWithin {0}ᶜ <| mem_map.1 <| this hs)
    with ⟨c, hc₀, hc⟩
  simp only [mem_compl_iff, mem_singleton_iff] at hc₀
  simp only [mem_smul, mem_univ, true_and]
  exact ⟨c⁻¹, c • x, hc, inv_smul_smul₀ hc₀ _⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `134113ff690bb9685970d79c1bab63af9cecc7b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
