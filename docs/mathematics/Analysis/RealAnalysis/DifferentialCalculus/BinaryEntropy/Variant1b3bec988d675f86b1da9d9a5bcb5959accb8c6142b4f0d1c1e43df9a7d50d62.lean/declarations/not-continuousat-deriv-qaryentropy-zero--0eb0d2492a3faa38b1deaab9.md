# not_continuousAt_deriv_qaryEntropy_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29a95e73-63d1-0844-8025-ea9fdc9a8411",
  "kind": "lemma",
  "lexical_name": "not_continuousAt_deriv_qaryEntropy_zero",
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
  "slug": "not-continuousat-deriv-qaryentropy-zero--0eb0d2492a3faa38b1deaab9",
  "source": {
    "blob": "6fbf074cde11f37267238c5e7978d884376cb4e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 316,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eb0d2492a3faa38b1deaab91b7d617df2b115e0a87d9e4ea1f2c88b37b5c94f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29a95e73-63d1-0844-8025-ea9fdc9a8411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_continuousAt_deriv_qaryEntropy_zero :
    ¬ContinuousAt (deriv (qaryEntropy q)) 0 := by
  have tendstoTop : Tendsto (fun p ↦ log (q - 1) + log (1 - p) - log p) (𝓝[>] 0) atTop := by
    have : (fun p ↦ log (q - 1) + log (1 - p) - log p)
        = (fun p ↦ log (q - 1) + (log (1 - p) - log p)) := by ext; ring
    rw [this]
    exact tendsto_atTop_add_const_left _ _ tendsto_log_one_sub_sub_log_nhdsGT_atAtop
  apply not_continuousAt_of_tendsto (Filter.Tendsto.congr' _ tendstoTop) nhdsWithin_le_nhds
  · simp only [disjoint_nhds_atTop_iff, not_isTop, not_false_eq_true]
  filter_upwards [Ioo_mem_nhdsGT (show (0 : ℝ) < 2⁻¹ by norm_num)]
  intros
  apply (deriv_qaryEntropy _ _).symm
  · simp_all only [zero_add, mem_Ioo, ne_eq]
    linarith
  · simp_all only [zero_add, mem_Ioo, ne_eq]
    linarith [two_inv_lt_one (α := ℝ)]

/-- Second derivative of q-ary entropy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fbf074cde11f37267238c5e7978d884376cb4e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
