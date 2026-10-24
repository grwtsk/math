# banach_steinhaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18976c7bce32f7468baef765dfe98dc1d30a080e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e37850be-4359-df93-7eee-56c481f12a82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e00b4a2-7d3b-f163-0018-c38f5d5c261a",
  "kind": "theorem",
  "lexical_name": "banach_steinhaus",
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
  "slug": "banach-steinhaus--a27ac516eb928715971dd063",
  "source": {
    "blob": "18976c7bce32f7468baef765dfe98dc1d30a080e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a27ac516eb928715971dd063a25c85d7b17f2cb8d6614edbe0eeeb5f3cebdff4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e00b4a2-7d3b-f163-0018-c38f5d5c261a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem banach_steinhaus (H : ∀ k x, BddAbove (range fun i ↦ q k (𝓕 i x))) :
    UniformEquicontinuous ((↑) ∘ 𝓕) := by
  -- We just have to prove that `⊔ i, (q k) ∘ (𝓕 i)` is a (well-defined) continuous seminorm
  -- for all `k`.
  refine (hq.uniformEquicontinuous_iff_bddAbove_and_continuous_iSup (toLinearMap ∘ 𝓕)).mpr ?_
  intro k
  -- By assumption the supremum `⊔ i, q k (𝓕 i x)` is well-defined for all `x`, hence the
  -- supremum `⊔ i, (q k) ∘ (𝓕 i)` is well defined in the lattice of seminorms.
  have : BddAbove (range fun i ↦ (q k).comp (𝓕 i).toLinearMap) := by
    rw [Seminorm.bddAbove_range_iff]
    exact H k
  -- By definition of the lattice structure on seminorms, `⊔ i, (q k) ∘ (𝓕 i)` is the *pointwise*
  -- supremum of the continuous seminorms `(q k) ∘ (𝓕 i)`. Since `E` is barrelled, this supremum
  -- is continuous.
  exact ⟨this, Seminorm.continuous_iSup _
    (fun i ↦ (hq.continuous_seminorm k).comp (𝓕 i).continuous) this⟩

end WithSeminorms

section PolynormableSpace

open Bornology

variable [UniformSpace E] [UniformSpace F] [IsUniformAddGroup E] [IsUniformAddGroup F]
    [ContinuousSMul 𝕜₁ E] [BarrelledSpace 𝕜₁ E] {𝓕 : ι → E →SL[σ₁₂] F} [PolynormableSpace 𝕜₂ F]

/-- The **Banach-Steinhaus** theorem, or **Uniform Boundedness Principle**, for maps from a
barrelled space to any polynormable space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18976c7bce32f7468baef765dfe98dc1d30a080e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
