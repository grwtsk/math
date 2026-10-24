# pickupLaplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b22682e66ee5b5d6940008b257670e1ddb10218",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e79d1a66-b5ec-f410-1593-68d0fb60b587",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fda50a58-1a0b-1fc3-b21a-74efc5243c99",
  "kind": "theorem",
  "lexical_name": "pickupLaplace_integrable",
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
  "slug": "pickuplaplace-integrable--5cbf697380708fddab507c15",
  "source": {
    "blob": "3b22682e66ee5b5d6940008b257670e1ddb10218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 264,
    "path": "GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cbf697380708fddab507c157691ca610b25f1deff3722e0421c04f749a1f1e1",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fda50a58-1a0b-1fc3-b21a-74efc5243c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupLaplace_integrable (z : ℂ) (hz : 1/2 < z.re) :
    IntegrableOn (fun u : ℝ => Complex.exp (-z * (u : ℂ)) * completedPickup u)
      (Set.Ioi 0) := by
  let m : Measure ℝ := volume.restrict (Set.Ioi 0)
  have hpos : 0 < z.re := by linarith
  let h : ∀ n : ℕ, Integrable (laplaceTerm z n) m :=
    fun n => laplaceTerm_integrable z hpos n
  let f : ℕ → Lp ℂ 1 m := fun n => (h n).toL1 (laplaceTerm z n)
  have hn : ∀ n, ‖f n‖ = ∫ u : ℝ, ‖laplaceTerm z n u‖ ∂m := by
    intro n
    rw [L1.norm_eq_integral_norm]
    apply integral_congr_ae
    filter_upwards [(h n).coeFn_toL1] with u hu
    rw [hu]
  have hf : Summable (fun n => ‖f n‖) :=
    (laplaceTerm_norm_summable z hz).congr (fun n => (hn n).symm)
  have he : ∑' n, ‖f n‖ₑ ≠ (⊤ : ENNReal) := tsum_enorm_ne_top_iff_summable_norm.mpr hf
  have hae := Lp.coeFn_tsum he
  have hall : ∀ᵐ u ∂m, ∀ n : ℕ, f n u = laplaceTerm z n u :=
    ae_all_iff.mpr (fun n => (h n).coeFn_toL1)
  have hout : (fun u : ℝ => (∑' n, f n) u) =ᵐ[m]
      fun u : ℝ => Complex.exp (-z * (u : ℂ)) * completedPickup u := by
    filter_upwards [hae, hall] with u hu hallu
    rw [hu]
    simp_rw [hallu]
    exact (laplaceTerm_eq_tsum z u).symm
  exact (L1.integrable_coeFn (∑' n, f n)).congr hout

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/MoebiusResponseFormula.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b22682e66ee5b5d6940008b257670e1ddb10218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
