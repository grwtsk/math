# map_nhds_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24cf5944-771f-8629-8e33-71255f888c67",
  "kind": "theorem",
  "lexical_name": "map_nhds_eq",
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
  "slug": "map-nhds-eq--8c4dfed0cb4f4703c5287c11",
  "source": {
    "blob": "eb31e17cf426f33c74a6f72555a5a1dfa202e6a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 299,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4dfed0cb4f4703c5287c11235cd25b152415e5f12e3fd6952e0e8bae521810",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24cf5944-771f-8629-8e33-71255f888c67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_nhds_eq (hf : ApproximatesLinearOn f f' s c) (f'symm : f'.NonlinearRightInverse) {x : E}
    (hs : s ∈ 𝓝 x) (hc : Subsingleton F ∨ c < f'symm.nnnorm⁻¹) : map f (𝓝 x) = 𝓝 (f x) := by
  refine
    le_antisymm ((hf.continuousOn x (mem_of_mem_nhds hs)).continuousAt hs) (le_map fun t ht => ?_)
  have : f '' (s ∩ t) ∈ 𝓝 (f x) :=
    (hf.mono_set inter_subset_left).image_mem_nhds f'symm (inter_mem hs ht) hc
  exact mem_of_superset this (image_mono inter_subset_right)

end LocallyOnto

/-!
From now on we assume that `f` approximates an invertible continuous linear map `f : E ≃L[𝕜] F`.

We also assume that either `E = {0}`, or `c < ‖f'⁻¹‖⁻¹`. We use `N` as an abbreviation for `‖f'⁻¹‖`.
-/


variable {f' : E ≃L[𝕜] F} {s : Set E} {c : ℝ≥0}

local notation "N" => ‖(f'.symm : F →L[𝕜] E)‖₊

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximatesLinearOn/Variantaa04c42cd2557beece273f6d4d3071ab5db589add58b423aeebb9c0e007fa587.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb31e17cf426f33c74a6f72555a5a1dfa202e6a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
