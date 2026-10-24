# thetaPhi_mul_sub_pow_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26de299173ce69a8e0c5656ebb59b446764d84ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 8,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75c2e649-764a-0109-4d9a-09e9f8903626",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d733a5f-6e5e-4354-3026-5a9bbbd0bf0a",
  "kind": "theorem",
  "lexical_name": "thetaPhi_mul_sub_pow_tendsto",
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
  "slug": "thetaphi-mul-sub-pow-tendsto--aeae0a1c9c45e98a1f88452c",
  "source": {
    "blob": "26de299173ce69a8e0c5656ebb59b446764d84ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 8,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantaf8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeae0a1c9c45e98a1f88452c5a676dbd7172c3c32905e22c0b5683de8c11fd78",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantaf8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d733a5f-6e5e-4354-3026-5a9bbbd0bf0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaPhi_mul_sub_pow_tendsto (k : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    Tendsto (fun u => thetaPhi u * (u - t) ^ k) atTop (𝓝 0) := by
  have hlim : Tendsto (fun u => ((2 * k).factorial : ℝ) *
      (thetaPhi u * evenBasis k u)) atTop (𝓝 0) := by
    simpa only [thetaTail_zero, mul_zero] using
      (thetaTail_mul_evenBasis_tendsto_atTop 0 k).const_mul ((2 * k).factorial : ℝ)
  apply squeeze_zero' (g := fun u => ((2 * k).factorial : ℝ) *
    (thetaPhi u * evenBasis k u))
  · filter_upwards [eventually_ge_atTop t] with u hu
    exact mul_nonneg (thetaPhi_positive u (ht.trans hu)).le (pow_nonneg (sub_nonneg.mpr hu) _)
  · filter_upwards [eventually_ge_atTop (max 1 t)] with u hu
    have hu1 : 1 ≤ u := (le_max_left 1 t).trans hu
    have hut : t ≤ u := (le_max_right 1 t).trans hu
    have hp : (u - t) ^ k ≤ (2 * u) ^ (2 * k) := by
      rw [pow_mul]
      exact pow_le_pow_left₀ (sub_nonneg.mpr hut) (by nlinarith) k
    calc
      _ ≤ thetaPhi u * (2 * u) ^ (2 * k) :=
        mul_le_mul_of_nonneg_left hp (thetaPhi_positive u (ht.trans hut)).le
      _ = _ := by unfold evenBasis; field_simp
  · exact hlim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantaf8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Af8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8GapResidual/Variantaf8ec095d75dc7c8ab0b1880b45d83f1a2f38acd02a8e13e7f81e8110ee32ab8.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26de299173ce69a8e0c5656ebb59b446764d84ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
