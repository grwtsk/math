# exists_smooth_forall_mem_convex_of_local_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a10cf6138007c00b7943e6b7829b868308b749d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 622,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d5b7da3b876988f2ee9f40754933248579f73f619bf66f9968dc144b330c935.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83a78a4e-c457-dcbb-47ce-c52bc2ea093e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:918ab9d6-c4e4-6862-cfe2-b51b516fdd00",
  "kind": "theorem",
  "lexical_name": "exists_smooth_forall_mem_convex_of_local_const",
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
  "slug": "exists-smooth-forall-mem-convex-of-local-const--9b77463e046e40df524d60c0",
  "source": {
    "blob": "a10cf6138007c00b7943e6b7829b868308b749d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 622,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant8d5b7da3b876988f2ee9f40754933248579f73f619bf66f9968dc144b330c935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b77463e046e40df524d60c09360eb3515ee75b69ea2206c6fe591af141052b9",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant8d5b7da3b876988f2ee9f40754933248579f73f619bf66f9968dc144b330c935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:918ab9d6-c4e4-6862-cfe2-b51b516fdd00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 622–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smooth_forall_mem_convex_of_local_const (ht : ∀ x, Convex ℝ (t x))
    (Hloc : ∀ x : M, ∃ c : F, ∀ᶠ y in 𝓝 x, c ∈ t y) : ∃ g : C^∞⟮I, M; 𝓘(ℝ, F), F⟯, ∀ x, g x ∈ t x :=
  exists_smooth_forall_mem_convex_of_local I ht fun x =>
    let ⟨c, hc⟩ := Hloc x
    ⟨_, hc, fun _ => c, contMDiffOn_const, fun _ => id⟩

/-- Let `M` be a smooth σ-compact manifold with extended distance. Let `K : ι → Set M` be a locally
finite family of closed sets, let `U : ι → Set M` be a family of open sets such that `K i ⊆ U i` for
all `i`. Then there exists a positive smooth function `δ : M → ℝ≥0` such that for any `i` and
`x ∈ K i`, we have `EMetric.closedBall x (δ x) ⊆ U i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant8d5b7da3b876988f2ee9f40754933248579f73f619bf66f9968dc144b330c935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant8d5b7da3b876988f2ee9f40754933248579f73f619bf66f9968dc144b330c935.lean#L622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10cf6138007c00b7943e6b7829b868308b749d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
