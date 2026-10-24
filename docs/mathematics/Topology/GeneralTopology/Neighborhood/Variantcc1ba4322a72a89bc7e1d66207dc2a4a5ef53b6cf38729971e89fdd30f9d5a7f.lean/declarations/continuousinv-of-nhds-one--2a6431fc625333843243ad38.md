# ContinuousInv.of_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a085a66-9609-ad6c-7435-a1ef7ffa3225",
  "kind": "theorem",
  "lexical_name": "ContinuousInv.of_nhds_one",
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
  "slug": "continuousinv-of-nhds-one--2a6431fc625333843243ad38",
  "source": {
    "blob": "c699590b3ab696baf28c44478bafdf2d8a450bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a6431fc625333843243ad38873d0d235c0985e45b9a642bb1c93a3657a9a505",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a085a66-9609-ad6c-7435-a1ef7ffa3225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousInv.of_nhds_one {G : Type*} [Group G] [TopologicalSpace G]
    (hinv : Tendsto (fun x : G => x⁻¹) (𝓝 1) (𝓝 1))
    (hleft : ∀ x₀ : G, 𝓝 x₀ = map (fun x : G => x₀ * x) (𝓝 1))
    (hconj : ∀ x₀ : G, Tendsto (fun x : G => x₀ * x * x₀⁻¹) (𝓝 1) (𝓝 1)) : ContinuousInv G := by
  refine ⟨continuous_iff_continuousAt.2 fun x₀ => ?_⟩
  have : Tendsto (fun x => x₀⁻¹ * (x₀ * x⁻¹ * x₀⁻¹)) (𝓝 1) (map (x₀⁻¹ * ·) (𝓝 1)) :=
    (tendsto_map.comp <| hconj x₀).comp hinv
  simpa only [ContinuousAt, hleft x₀, hleft x₀⁻¹, tendsto_map'_iff, Function.comp_def, mul_assoc,
    mul_inv_rev, inv_mul_cancel_left] using this

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhood/Variantcc1ba4322a72a89bc7e1d66207dc2a4a5ef53b6cf38729971e89fdd30f9d5a7f.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c699590b3ab696baf28c44478bafdf2d8a450bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
