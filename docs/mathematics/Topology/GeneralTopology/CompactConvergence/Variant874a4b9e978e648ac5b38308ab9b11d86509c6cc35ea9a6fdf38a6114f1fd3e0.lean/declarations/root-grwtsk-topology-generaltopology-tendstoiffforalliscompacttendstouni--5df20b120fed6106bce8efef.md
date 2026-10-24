# _root_.GRWTSK.Topology.GeneralTopology.TendstoIffForallIsCompactTendstoUniformlyOn.Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.Filter.HasBasis.compactConvergenceUniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a88e6667-4f2a-14b8-0591-272e45e08d2c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.TendstoIffForallIsCompactTendstoUniformlyOn.Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.Filter.HasBasis.compactConvergenceUniformity",
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
  "slug": "root-grwtsk-topology-generaltopology-tendstoiffforalliscompacttendstouni--5df20b120fed6106bce8efef",
  "source": {
    "blob": "158e3b258505957369d11e6c01e7e4979aa586bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5df20b120fed6106bce8efef24ff2486175ca8c0c2fdc6a02aaea5910e052e3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a88e6667-4f2a-14b8-0591-272e45e08d2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.TendstoIffForallIsCompactTendstoUniformlyOn.Variant67866676b7f4a15b5693d5be0a2330e05729f4e037d92704a205fb3bd368bda3.Filter.HasBasis.compactConvergenceUniformity {ι : Type*} {pi : ι → Prop}
    {s : ι → Set (β × β)} (h : (𝓤 β).HasBasis pi s) :
    HasBasis (𝓤 C(α, β)) (fun p : Set α × ι => IsCompact p.1 ∧ pi p.2) fun p =>
      { fg : C(α, β) × C(α, β) | ∀ x ∈ p.1, (fg.1 x, fg.2 x) ∈ s p.2 } := by
  rw [← isUniformEmbedding_toUniformOnFunIsCompact.comap_uniformity]
  exact .comap _ <| UniformOnFun.hasBasis_uniformity_of_basis _ _ {K | IsCompact K}
    ⟨∅, isCompact_empty⟩ (directedOn_of_sup_mem fun _ _ ↦ IsCompact.union) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `158e3b258505957369d11e6c01e7e4979aa586bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
