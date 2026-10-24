# Continuous.uniformContinuous_of_tendsto_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9140cb9a687da21eae277578b7631f29c9165f07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46ab4782-7136-84d9-8278-b63d512f5669",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ee1e1e3-241b-a370-231c-f6a33bf8800c",
  "kind": "theorem",
  "lexical_name": "Continuous.uniformContinuous_of_tendsto_cocompact",
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
  "slug": "continuous-uniformcontinuous-of-tendsto-cocompact--f2912ea2cab8ff7aa09ce3ba",
  "source": {
    "blob": "9140cb9a687da21eae277578b7631f29c9165f07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2912ea2cab8ff7aa09ce3baa019a774d362bfdc7aa4a604213269b3ca1f3cdf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ee1e1e3-241b-a370-231c-f6a33bf8800c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.uniformContinuous_of_tendsto_cocompact {f : α → β} {x : β}
    (h_cont : Continuous f) (hx : Tendsto f (cocompact α) (𝓝 x)) : UniformContinuous f :=
  uniformContinuous_def.2 fun r hr => by
    obtain ⟨t, ht, htsymm, htr⟩ := comp_symm_mem_uniformity_sets hr
    obtain ⟨s, hs, hst⟩ := mem_cocompact.1 (hx <| mem_nhds_left _ ht)
    apply
      mem_of_superset
        (symmetrize_mem_uniformity <|
          (hs.uniformContinuousAt_of_continuousAt f fun _ _ => h_cont.continuousAt) <|
            symmetrize_mem_uniformity hr)
    rintro ⟨b₁, b₂⟩ h
    by_cases h₁ : b₁ ∈ s; · exact (h.1 h₁).1
    by_cases h₂ : b₂ ∈ s; · exact (h.2 h₂).2
    apply htr
    exact ⟨x, htsymm.mk_mem_comm.1 (hst h₁), hst h₂⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantb9f53f204954aa0c9365cee60cb6678cd6670d5966230af743cafd56f08a3b5e.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9140cb9a687da21eae277578b7631f29c9165f07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
