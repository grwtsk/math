# splitMul_injective_of_clm_mul_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62a6f112b523b2642cfaaaa3e427ef82277c3783",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c48f5f5-6c10-1a69-45ad-ea2c4f2a0442",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92f1d466-74bc-ede0-943a-dce47f168d39",
  "kind": "theorem",
  "lexical_name": "splitMul_injective_of_clm_mul_injective",
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
  "slug": "splitmul-injective-of-clm-mul-injective--87543baaaf7fdf2e8cd5ba6a",
  "source": {
    "blob": "62a6f112b523b2642cfaaaa3e427ef82277c3783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 84,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variant1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87543baaaf7fdf2e8cd5ba6ac88f605d40cd07d7e9630cb015fdcc7904426914",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variant1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92f1d466-74bc-ede0-943a-dce47f168d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitMul_injective_of_clm_mul_injective
    (h : Function.Injective (mul 𝕜 A)) :
    Function.Injective (splitMul 𝕜 A) := by
  rw [injective_iff_map_eq_zero]
  intro x hx
  induction x using Unitization.ind
  rw [map_add] at hx
  simp only [splitMul_apply, fst_inl, snd_inl, map_zero, add_zero, fst_inr, snd_inr,
    zero_add, Prod.mk_add_mk, Prod.mk_eq_zero] at hx
  obtain ⟨rfl, hx⟩ := hx
  simp only [map_zero, zero_add, inl_zero] at hx ⊢
  rw [← map_zero (mul 𝕜 A)] at hx
  rw [h hx, inr_zero]

variable [RegularNormedAlgebra 𝕜 A]
variable (𝕜 A)

/- In a `RegularNormedAlgebra`, the map `Unitization.splitMul 𝕜 A` is injective. We will use this
to pull back the norm from `𝕜 × (A →L[𝕜] A)` to `Unitization 𝕜 A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variant1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variant1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62a6f112b523b2642cfaaaa3e427ef82277c3783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
