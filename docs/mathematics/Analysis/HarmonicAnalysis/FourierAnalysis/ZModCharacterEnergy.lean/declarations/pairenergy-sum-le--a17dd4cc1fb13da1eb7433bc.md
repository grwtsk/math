# pairEnergy_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2bc5408-3b3a-f183-430d-cfecea1f174a",
  "kind": "theorem",
  "lexical_name": "pairEnergy_sum_le",
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
  "slug": "pairenergy-sum-le--a17dd4cc1fb13da1eb7433bc",
  "source": {
    "blob": "425592aaa63e5fc93d0e3a9db0ffb4d360f491fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 273,
    "path": "GRWTSK/Analysis/Fourier/ZModCharacterEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a17dd4cc1fb13da1eb7433bc65e3e229b2fb07e030cfeddbe7bad6426c3628da",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2bc5408-3b3a-f183-430d-cfecea1f174a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairEnergy_sum_le {ι : Type*} (I : Finset ι) (S : Finset (ZMod p))
    (χ : ι → ZMod p) :
    pairEnergy S (∑ i ∈ I, χ i) ≤ I.card * ∑ i ∈ I, pairEnergy S (χ i) := by
  unfold pairEnergy
  simp_rw [Finset.sum_mul]
  calc
    _ ≤ (S.card : ℝ)⁻¹ ^ 2 * ∑ x ∈ S, ∑ y ∈ S,
        I.card * ∑ i ∈ I, modularDistance (χ i * (x - y)) ^ 2 := by
      apply mul_le_mul_of_nonneg_left _ (sq_nonneg _)
      exact Finset.sum_le_sum fun _ _ => Finset.sum_le_sum fun _ _ =>
        modularDistance_sum_sq_le I _
    _ = _ := by
      have hswap : (∑ x ∈ S, ∑ y ∈ S, ∑ i ∈ I,
          modularDistance (χ i * (x - y)) ^ 2) =
          ∑ i ∈ I, ∑ x ∈ S, ∑ y ∈ S, modularDistance (χ i * (x - y)) ^ 2 := by
        calc
          _ = ∑ x ∈ S, ∑ i ∈ I, ∑ y ∈ S,
              modularDistance (χ i * (x - y)) ^ 2 := by
            apply Finset.sum_congr rfl
            intro x _
            rw [Finset.sum_comm]
          _ = _ := Finset.sum_comm
      simp_rw [← Finset.mul_sum]
      rw [hswap]
      ring

/-- Multiplication of the independent one-part bounds is source equation (3.2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModCharacterEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModCharacterEnergy.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `425592aaa63e5fc93d0e3a9db0ffb4d360f491fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
