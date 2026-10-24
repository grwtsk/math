# EquicontinuousOn.isUniformInducing_uniformOnFun_iff_pi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b50beb0-4357-f3cf-8563-aa928af8abf5",
  "kind": "lemma",
  "lexical_name": "EquicontinuousOn.isUniformInducing_uniformOnFun_iff_pi'",
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
  "slug": "equicontinuouson-isuniforminducing-uniformonfun-iff-pi--7aabb5e334cc94a11aae56ed",
  "source": {
    "blob": "3c572a02ab48df44a858d10e229ee913611a5b47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7aabb5e334cc94a11aae56ed9d18c47aa2281978211b0f4d69745b11cc05f860",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b50beb0-4357-f3cf-8563-aa928af8abf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EquicontinuousOn.isUniformInducing_uniformOnFun_iff_pi' [UniformSpace ι]
    {𝔖 : Set (Set X)} (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K)
    (F_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn F K) :
    IsUniformInducing (UniformOnFun.ofFun 𝔖 ∘ F) ↔
    IsUniformInducing ((⋃₀ 𝔖).restrict ∘ F) := by
  rw [isUniformInducing_iff_uniformSpace, isUniformInducing_iff_uniformSpace,
      ← EquicontinuousOn.comap_uniformOnFun_eq 𝔖_compact F_eqcont]
  rfl

/-- Let `X` be a topological space, `𝔖` a covering of `X` by compact subsets, `α` a uniform space,
and `F : ι → (X → α)` a family which is equicontinuous on each `K ∈ 𝔖`. Then, the uniform
structures of uniform convergence on `𝔖` and pointwise convergence induce the same
uniform structure on `ι`.

This is a specialization of `EquicontinuousOn.isUniformInducing_uniformOnFun_iff_pi'` to
the case where `𝔖` covers `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c572a02ab48df44a858d10e229ee913611a5b47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
