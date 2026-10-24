# _root_.DenseRange.topologicalClosure_map_submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e71c00c890995178465124f2912166de722d50a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f5f0b4f-27b2-7f10-bbcb-7fcccb3eb28d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d756250-c397-ed0a-6e81-1d5d84ce4126",
  "kind": "theorem",
  "lexical_name": "_root_.DenseRange.topologicalClosure_map_submodule",
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
  "slug": "root-denserange-topologicalclosure-map-submodule--efd452459621f9abf1860e3c",
  "source": {
    "blob": "2e71c00c890995178465124f2912166de722d50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efd452459621f9abf1860e3ce03b7006e5f04c3f8dbcb9860de19f29d76aa12f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d756250-c397-ed0a-6e81-1d5d84ce4126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.DenseRange.topologicalClosure_map_submodule [RingHomSurjective σ₁₂]
    [TopologicalSpace R₁] [TopologicalSpace R₂] [ContinuousSMul R₁ M₁] [ContinuousAdd M₁]
    [ContinuousSMul R₂ M₂] [ContinuousAdd M₂] {f : M₁ →SL[σ₁₂] M₂} (hf' : DenseRange f)
    {s : Submodule R₁ M₁} (hs : s.topologicalClosure = ⊤) :
    (s.map (f : M₁ →ₛₗ[σ₁₂] M₂)).topologicalClosure = ⊤ := by
  rw [SetLike.ext'_iff] at hs ⊢
  simp only [Submodule.topologicalClosure_coe, Submodule.top_coe, ← dense_iff_closure_eq] at hs ⊢
  exact hf'.dense_image f.continuous hs

section SMulMonoid

variable {S₂ T₂ : Type*} [Monoid S₂] [Monoid T₂]
variable [DistribMulAction S₂ M₂] [SMulCommClass R₂ S₂ M₂] [ContinuousConstSMul S₂ M₂]
variable [DistribMulAction T₂ M₂] [SMulCommClass R₂ T₂ M₂] [ContinuousConstSMul T₂ M₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e71c00c890995178465124f2912166de722d50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
