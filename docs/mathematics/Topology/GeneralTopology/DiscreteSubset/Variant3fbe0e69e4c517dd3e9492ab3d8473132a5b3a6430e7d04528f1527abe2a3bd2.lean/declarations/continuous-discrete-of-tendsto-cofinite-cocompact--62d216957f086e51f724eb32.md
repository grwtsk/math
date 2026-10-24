# Continuous.discrete_of_tendsto_cofinite_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "652edc9a4f1f2f81b360624c0b9081502aee2fad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cb62f17-83c5-80bc-06e1-cb5fad33c42e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b50d4c85-7cb1-fa6c-d686-f5e9a43b3f9f",
  "kind": "lemma",
  "lexical_name": "Continuous.discrete_of_tendsto_cofinite_cocompact",
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
  "slug": "continuous-discrete-of-tendsto-cofinite-cocompact--62d216957f086e51f724eb32",
  "source": {
    "blob": "652edc9a4f1f2f81b360624c0b9081502aee2fad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62d216957f086e51f724eb32cb30c16b17f9f9d14f4688d1fde83ba832978e37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b50d4c85-7cb1-fa6c-d686-f5e9a43b3f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Continuous.discrete_of_tendsto_cofinite_cocompact [T1Space X] [LocallyCompactSpace Y]
    (hf' : Continuous f) (hf : Tendsto f cofinite (cocompact _)) :
    DiscreteTopology X := by
  refine' singletons_open_iff_discrete.mp (fun x ↦ _)
  obtain ⟨K : Set Y, hK : IsCompact K, hK' : K ∈ 𝓝 (f x)⟩ := exists_compact_mem_nhds (f x)
  obtain ⟨U : Set Y, hU₁ : U ⊆ K, hU₂ : IsOpen U, hU₃ : f x ∈ U⟩ := mem_nhds_iff.mp hK'
  have hU₄ : Set.Finite (f⁻¹' U) :=
    Finite.subset (tendsto_cofinite_cocompact_iff.mp hf K hK) (preimage_mono hU₁)
  exact isOpen_singleton_of_finite_mem_nhds _ ((hU₂.preimage hf').mem_nhds hU₃) hU₄

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant3fbe0e69e4c517dd3e9492ab3d8473132a5b3a6430e7d04528f1527abe2a3bd2.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `652edc9a4f1f2f81b360624c0b9081502aee2fad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
