# aQ_close

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b986f9e1d27b12f03120458974c03cff4d8dd46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9bff9ec-0b0c-1958-2a9b-f86fad629248",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c0040c3-5197-1a0a-4497-f8de2b5f865c",
  "kind": "theorem",
  "lexical_name": "aQ_close",
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
  "slug": "aq-close--44fcc1e3fe6a1951f5a14c42",
  "source": {
    "blob": "3b986f9e1d27b12f03120458974c03cff4d8dd46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 161,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44fcc1e3fe6a1951f5a14c42003f51cb64430ea4f5e331e2186502e357b72ee4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c0040c3-5197-1a0a-4497-f8de2b5f865c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aQ_close (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    |L⁻¹ * (∫ u, phiM (fQ L) ϱ L w u ^ 2) - 2777 / 3000| ≤ 2 * w / L := by
  have hw0 : 0 < w := by linarith
  have hwL' : 2 * w ≤ L := by linarith
  have hL : 0 < L := by linarith
  have hsub : (2777 : ℝ) / 3000 = L⁻¹ * ∫ u in Set.Icc (-(L/2)) (L/2), mQ L u := by
    rw [setIntegral_congr_fun measurableSet_Icc (fun u hu => mQ_core hL hu),
      MeasureTheory.integral_Icc_eq_integral_Ioc,
      ← intervalIntegral.integral_of_le (by linarith : -(L/2) ≤ L/2), integral_scale hL,
      integral_vQuartic]
    field_simp
  have hwin : ∫ u, phiM (fQ L) ϱ L w u ^ 2 = ∫ u, mQ L u * Taper.phi ϱ L w u ^ 2 :=
    integral_congr_ae (ae_of_all _ fun u => phiMQ_sq_eq u)
  rw [hwin, hsub]
  have hcore := edge_estimate (h := mQ L) (p := fun u => Taper.phi ϱ L w u ^ 2) hL hw0 hwL'
    abs_mQ_le_one (fun u => sq_nonneg _)
    (fun u => by
      calc Taper.phi ϱ L w u ^ 2 ≤ 1 ^ 2 := pow_le_pow_left₀ (Taper.phi_nonneg hϱ u) (Taper.phi_le_one hϱ u) 2
        _ = 1 := one_pow 2)
    (fun u hu => by show Taper.phi ϱ L w u ^ 2 = 1; rw [Taper.phi_eq_one hϱ hw0 hu, one_pow])
    (fun u hu => by show Taper.phi ϱ L w u ^ 2 = 0; rw [Taper.phi_eq_zero hϱ hw0 hu, zero_pow two_ne_zero])
    ((Taper.phi_continuous hϱ hw0 hwL').pow 2) (mQ_continuous hL)
  have e : L⁻¹ * (∫ u, mQ L u * Taper.phi ϱ L w u ^ 2) - L⁻¹ * ∫ u in Set.Icc (-(L/2)) (L/2), mQ L u
      = L⁻¹ * ((∫ u, mQ L u * Taper.phi ϱ L w u ^ 2) - ∫ u in Set.Icc (-(L/2)) (L/2), mQ L u) := by ring
  rw [e, abs_mul, abs_of_pos (by positivity : (0:ℝ) < L⁻¹)]
  calc L⁻¹ * |(∫ u, mQ L u * Taper.phi ϱ L w u ^ 2) - ∫ u in Set.Icc (-(L/2)) (L/2), mQ L u|
      ≤ L⁻¹ * (2 * w) := mul_le_mul_of_nonneg_left hcore (by positivity)
    _ = 2 * w / L := by rw [div_eq_inv_mul]

/-- |L⁻¹∫φ_Q⁴ − ∫v²| ≤ 2w/L. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variant3907dd7ab97c030b42f23963e084f8d8449ba8d688e44e4160acf3e69a42c369.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b986f9e1d27b12f03120458974c03cff4d8dd46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
