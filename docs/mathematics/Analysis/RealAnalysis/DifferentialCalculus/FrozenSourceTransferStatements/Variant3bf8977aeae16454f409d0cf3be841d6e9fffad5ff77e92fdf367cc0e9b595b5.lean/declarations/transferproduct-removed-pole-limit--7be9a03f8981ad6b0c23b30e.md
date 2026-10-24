# transferProduct_removed_pole_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4da4f150de651dd08e6d52de889b563154d38da6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c659a351-e243-cee4-ae8a-8c33c2ddfec7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:464b7a06-e112-ca32-b80e-2582ac4b4885",
  "kind": "theorem",
  "lexical_name": "transferProduct_removed_pole_limit",
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
  "slug": "transferproduct-removed-pole-limit--7be9a03f8981ad6b0c23b30e",
  "source": {
    "blob": "4da4f150de651dd08e6d52de889b563154d38da6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7be9a03f8981ad6b0c23b30eb08fe59750b19303ce10ea9b5c59811778f831b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:464b7a06-e112-ca32-b80e-2582ac4b4885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transferProduct_removed_pole_limit :
    Tendsto transferProduct (𝓝[≠] (1 / 2)) (𝓝 removedPoleValue) := by
  have he : Tendsto (fun z : ℂ ↦ Complex.exp (-z))
      (𝓝[≠] (1 / 2)) (𝓝 (Complex.exp (-(1 / 2 : ℂ)))) :=
    (Complex.continuous_exp.comp continuous_neg).continuousAt.tendsto.mono_left
      nhdsWithin_le_nhds
  have hp := (he.mul shifted_zeta_residue).mul V_removed_pole_limit
  simp only [mul_one] at hp
  apply hp.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  have hz' : z - 1 / 2 ≠ 0 := sub_ne_zero.mpr hz
  unfold transferProduct
  rw [show V z / (z - 1 / 2) = V z * (z - 1 / 2)⁻¹ by rw [div_eq_mul_inv]]
  calc
    _ = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z *
        ((z - 1 / 2) * (z - 1 / 2)⁻¹) := by ring
    _ = _ := by rw [mul_inv_cancel₀ hz', mul_one]

/-- Repair exactly the source pole, leaving every other transfer-product value untouched. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FrozenSourceTransferStatements/Variant3bf8977aeae16454f409d0cf3be841d6e9fffad5ff77e92fdf367cc0e9b595b5.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4da4f150de651dd08e6d52de889b563154d38da6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
