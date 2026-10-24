# ArzelaAscoli.compactSpace_of_isClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c47a3fb-4e4b-31ca-5bca-e00022a406fb",
  "kind": "theorem",
  "lexical_name": "ArzelaAscoli.compactSpace_of_isClosedEmbedding",
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
  "slug": "arzelaascoli-compactspace-of-isclosedembedding--20908e61b45123640ceb598b",
  "source": {
    "blob": "3d4ac426343fe4ca59e27c59cb5a9cb2df6c83c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 465,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20908e61b45123640ceb598b5a95a4df0d6aa65b4dc9d065f34d7b47d753f228",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c47a3fb-4e4b-31ca-5bca-e00022a406fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArzelaAscoli.compactSpace_of_isClosedEmbedding [TopologicalSpace ι] {𝔖 : Set (Set X)}
    (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K) (F_clemb : IsClosedEmbedding (UniformOnFun.ofFun 𝔖 ∘ F))
    (F_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn F K)
    (F_pointwiseCompact : ∀ K ∈ 𝔖, ∀ x ∈ K, ∃ Q, IsCompact Q ∧ ∀ i, F i x ∈ Q) :
    CompactSpace ι :=
  compactSpace_of_closed_inducing' 𝔖_compact F_clemb.isInducing F_clemb.isClosed_range
    F_eqcont F_pointwiseCompact

/-- A version of the **Arzela-Ascoli theorem**.

Let `X, ι` be topological spaces, `𝔖` a covering of `X` by compact subsets, `α` a T2 uniform space,
`F : ι → (X → α)`, and `s` a subset of `ι`. Assume that:
* `F`, viewed as a function `ι → (X →ᵤ[𝔖] α)`, is a closed embedding (in other words, `ι`
  identifies to a closed subset of `X →ᵤ[𝔖] α` through `F`)
* `F '' s` is equicontinuous on each `K ∈ 𝔖`
* For all `x ∈ ⋃₀ 𝔖`, the image of `s` under `i ↦ F i x` is contained in some fixed compact subset.

Then `s` has compact closure in `ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4ac426343fe4ca59e27c59cb5a9cb2df6c83c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
