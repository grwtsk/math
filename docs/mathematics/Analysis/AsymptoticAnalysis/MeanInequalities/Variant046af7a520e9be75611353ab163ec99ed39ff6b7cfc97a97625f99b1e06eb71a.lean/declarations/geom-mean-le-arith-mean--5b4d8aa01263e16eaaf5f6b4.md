# geom_mean_le_arith_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "695b7766d64f0324ce6af502e548a5e3de8e4aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a1b188c-0c00-cb79-7b65-829719395755",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bccd4e5b-2073-b0c4-fe29-060eb253301b",
  "kind": "theorem",
  "lexical_name": "geom_mean_le_arith_mean",
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
  "slug": "geom-mean-le-arith-mean--5b4d8aa01263e16eaaf5f6b4",
  "source": {
    "blob": "695b7766d64f0324ce6af502e548a5e3de8e4aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 150,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b4d8aa01263e16eaaf5f6b43766241d5eea00d58dd3eb53b003895af569913c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bccd4e5b-2073-b0c4-fe29-060eb253301b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_mean_le_arith_mean {ι : Type*} (s : Finset ι) (w : ι → ℝ) (z : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (hw' : 0 < ∑ i ∈ s, w i) (hz : ∀ i ∈ s, 0 ≤ z i) :
    (∏ i ∈ s, z i ^ w i) ^ (∑ i ∈ s, w i)⁻¹  ≤  (∑ i ∈ s, w i * z i) / (∑ i ∈ s, w i) := by
  convert geom_mean_le_arith_mean_weighted s (fun i => (w i) / ∑ i ∈ s, w i) z ?_ ?_ hz using 2
  · rw [← finset_prod_rpow _ _ (fun i hi => rpow_nonneg (hz _ hi) _) _]
    refine Finset.prod_congr rfl (fun _ ih => ?_)
    rw [div_eq_mul_inv, rpow_mul (hz _ ih)]
  · simp_rw [div_eq_mul_inv, mul_assoc, mul_comm, ← mul_assoc, ← Finset.sum_mul, mul_comm]
  · exact fun _ hi => div_nonneg (hw _ hi) (le_of_lt hw')
  · simp_rw [div_eq_mul_inv, ← Finset.sum_mul]
    exact mul_inv_cancel₀ (by linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695b7766d64f0324ce6af502e548a5e3de8e4aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
