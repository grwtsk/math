# mem_codiscrete_subtype_iff_mem_codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "519b71a188b964b6240c09241cd1d599fa5803ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:580df424-d095-1b22-ba9d-686d19950bf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42608d1b-a4ac-48ef-e3ad-94bd1d91f294",
  "kind": "lemma",
  "lexical_name": "mem_codiscrete_subtype_iff_mem_codiscreteWithin",
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
  "slug": "mem-codiscrete-subtype-iff-mem-codiscretewithin--2a233d547b144de0ed4e62a9",
  "source": {
    "blob": "519b71a188b964b6240c09241cd1d599fa5803ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a233d547b144de0ed4e62a920ba6dae7a0c813f208774929a2b8736f48cbaac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42608d1b-a4ac-48ef-e3ad-94bd1d91f294`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_codiscrete_subtype_iff_mem_codiscreteWithin {S : Set X} {U : Set S} :
    U ∈ codiscrete S ↔ (↑) '' U ∈ codiscreteWithin S := by
  simp [mem_codiscrete, disjoint_principal_right, compl_compl, Subtype.forall,
    mem_codiscreteWithin]
  congr! with x hx
  constructor
  · rw [nhdsWithin_subtype, mem_comap]
    rintro ⟨t, ht1, ht2⟩
    rw [mem_nhdsWithin] at ht1 ⊢
    obtain ⟨u, hu1, hu2, hu3⟩ := ht1
    refine ⟨u, hu1, hu2, fun v hv ↦ ?_⟩
    simpa using fun hv2 ↦ ⟨hv2, ht2 <| hu3 <| by simpa [hv2]⟩
  · suffices Tendsto (↑) (𝓝[≠] (⟨x, hx⟩ : S)) (𝓝[≠] x) by convert tendsto_def.mp this _; ext; simp
    exact tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
      continuous_subtype_val.continuousWithinAt <| eventually_mem_nhdsWithin.mono (by simp)

end codiscrete_filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519b71a188b964b6240c09241cd1d599fa5803ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
