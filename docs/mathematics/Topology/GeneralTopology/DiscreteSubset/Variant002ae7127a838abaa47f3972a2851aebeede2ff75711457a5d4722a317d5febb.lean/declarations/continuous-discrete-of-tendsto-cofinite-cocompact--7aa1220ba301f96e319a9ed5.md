# Continuous.discrete_of_tendsto_cofinite_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f9ffab7-72cf-bca8-cc32-c39f35478f7c",
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
  "slug": "continuous-discrete-of-tendsto-cofinite-cocompact--7aa1220ba301f96e319a9ed5",
  "source": {
    "blob": "74b4867ddb19a6e8dc2adaad93e8891b3f6e4c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aa1220ba301f96e319a9ed5b5b6737b5e165a1d5f6d150ca5f20250d2412caa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f9ffab7-72cf-bca8-cc32-c39f35478f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variant002ae7127a838abaa47f3972a2851aebeede2ff75711457a5d4722a317d5febb.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b4867ddb19a6e8dc2adaad93e8891b3f6e4c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
