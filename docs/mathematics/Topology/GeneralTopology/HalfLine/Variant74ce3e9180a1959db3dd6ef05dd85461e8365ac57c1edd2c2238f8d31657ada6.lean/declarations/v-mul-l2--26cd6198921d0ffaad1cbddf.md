# V_mul_L2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ef8fef67454e6e62565900c8f74ecfc04d2a72d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1ba5bbc-5a44-7281-db6f-a643eedd2db1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfdfef29-937c-b9f1-850b-938879120034",
  "kind": "lemma",
  "lexical_name": "V_mul_L2",
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
  "slug": "v-mul-l2--26cd6198921d0ffaad1cbddf",
  "source": {
    "blob": "6ef8fef67454e6e62565900c8f74ecfc04d2a72d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26cd6198921d0ffaad1cbddfcc857afa66d180a9df75bebe741cf194f28a53ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfdfef29-937c-b9f1-850b-938879120034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma V_mul_L2
    {P : Schrodinger.Potential} (φ : C∞₀_D) :
    Schrodinger.V_mul_L2 P (φ : L²(ℝ≥0)) := by
  -- |V| is bounded on the compact support of φ
  rcases
    (P.measurable.isBounded_on_compact φ.1.isBounded_support) with ⟨K, hK⟩
  have hDom :
      (fun x : ℝ≥0 ↦ (P.V x) * φ x) ∈
      Lp ℝ (fun _ : ℝ≥0 ↦ (1 : ℝ≥0∞)) 2 := by
    have hBound : ∀ᵐ x ∂μ₊, ‖(P.V x) * φ x‖ ≤ K * ‖φ x‖ := by
      filter_upwards [self_mem_ae_restrict] with x
      by_cases hx : (x : ℝ≥0) ∈ φ.1.support
      · have : |P.V x| ≤ K := hK _ hx
        have : ‖(P.V x) * φ x‖ ≤ K * ‖φ x‖ := by
          simpa [abs_mul] using
            (mul_le_mul_of_nonneg_right this (norm_nonneg _))
        simpa using this
      · simp [hx, mem_support] at hx
    have hKφ : (fun x ↦ K * ‖φ x‖) ∈
        Lp ℝ (fun _ : ℝ≥0 ↦ (1 : ℝ≥0∞)) 2 := by
      simpa using φ.1.Lp_const_mul (K := K)
    exact (Lp.mem_of_le_mul hDom hKφ)
  simpa [Schrodinger.V_mul_L2] using hDom

/-!  ## 5. Density of the Schrödinger Dirichlet domain                         -/
open Schrodinger

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ef8fef67454e6e62565900c8f74ecfc04d2a72d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
