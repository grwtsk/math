# EquicontinuousOn.inducing_uniformOnFun_iff_pi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36026abb-f761-8da5-e4be-863638f95f0c",
  "kind": "lemma",
  "lexical_name": "EquicontinuousOn.inducing_uniformOnFun_iff_pi'",
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
  "slug": "equicontinuouson-inducing-uniformonfun-iff-pi--692cf94f087a9e19fdd1f8de",
  "source": {
    "blob": "3d4ac426343fe4ca59e27c59cb5a9cb2df6c83c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 306,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:692cf94f087a9e19fdd1f8de80e31ff0127e1878a91b1f8e689d6a80976911f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36026abb-f761-8da5-e4be-863638f95f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EquicontinuousOn.inducing_uniformOnFun_iff_pi' [TopologicalSpace ι]
    {𝔖 : Set (Set X)} (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K)
    (F_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn F K) :
    IsInducing (UniformOnFun.ofFun 𝔖 ∘ F) ↔
    IsInducing ((⋃₀ 𝔖).domRestrict ∘ F) := by
  rw [isInducing_iff, isInducing_iff]
  change (_ = ((UniformOnFun.uniformSpace X α 𝔖).comap F).toTopologicalSpace) ↔
    (_ = ((Pi.uniformSpace _).comap ((⋃₀ 𝔖).domRestrict ∘ F)).toTopologicalSpace)
  rw [← EquicontinuousOn.comap_uniformOnFun_eq 𝔖_compact F_eqcont]

/-- Let `X` be a topological space, `𝔖` a covering of `X` by compact subsets, `α` a uniform space,
and `F : ι → (X → α)` a family which is equicontinuous on each `K ∈ 𝔖`. Then, the topologies
of uniform convergence on `𝔖` and pointwise convergence induce the same topology on `ι`.

This is a specialization of `EquicontinuousOn.inducing_uniformOnFun_iff_pi'` to
the case where `𝔖` covers `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4ac426343fe4ca59e27c59cb5a9cb2df6c83c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
