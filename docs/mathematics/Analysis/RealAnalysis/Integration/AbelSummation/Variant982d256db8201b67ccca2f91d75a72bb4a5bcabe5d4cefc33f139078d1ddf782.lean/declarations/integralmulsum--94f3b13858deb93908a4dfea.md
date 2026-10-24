# integralmulsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8088d1e-74c7-4177-74f5-041ba8fee5bc",
  "kind": "theorem",
  "lexical_name": "integralmulsum",
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
  "slug": "integralmulsum--94f3b13858deb93908a4dfea",
  "source": {
    "blob": "902eb064baea6453fff907d26914b034e59e8717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant982d256db8201b67ccca2f91d75a72bb4a5bcabe5d4cefc33f139078d1ddf782.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94f3b13858deb93908a4dfeae629057d1487d014f0cc357a76a7a3a9a0324f27",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant982d256db8201b67ccca2f91d75a72bb4a5bcabe5d4cefc33f139078d1ddf782.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8088d1e-74c7-4177-74f5-041ba8fee5bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integralmulsum (hf_diff : ∀ t ∈ Set.Icc a b, DifferentiableAt ℝ f t)
    (hf_int : IntegrableOn (deriv f) (Set.Icc a b)) (t₁ t₂ : ℝ) (n : ℕ) (h : t₁ ≤ t₂)
    (h₁ : n ≤ t₁) (h₂ : t₂ ≤ n + 1) (h₃ : a ≤ t₁) (h₄ : t₂ ≤ b) :
    ∫ t in t₁..t₂, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k =
      (f t₂ - f t₁) * ∑ k ∈ Icc 0 n, c k := by
  have h_inc₁ : Ι t₁ t₂ ⊆ Set.Icc n (n + 1) :=
    Set.uIoc_of_le h ▸ Set.Ioc_subset_Icc_self.trans <| Set.Icc_subset_Icc h₁ h₂
  have h_inc₂ : Set.uIcc t₁ t₂ ⊆ Set.Icc a b := Set.uIcc_of_le h ▸ Set.Icc_subset_Icc h₃ h₄
  rw [← integral_deriv_eq_sub (fun t ht ↦ hf_diff t (h_inc₂ ht)),
      ← intervalIntegral.integral_mul_const]
  · refine integral_congr_ae ?_
    filter_upwards [sumlocc c n] with t h h'
    rw [h (h_inc₁ h')]
  · refine (intervalIntegrable_iff_integrableOn_Icc_of_le h).mpr (hf_int.mono_set ?_)
    rwa [← Set.uIcc_of_le h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant982d256db8201b67ccca2f91d75a72bb4a5bcabe5d4cefc33f139078d1ddf782.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant982d256db8201b67ccca2f91d75a72bb4a5bcabe5d4cefc33f139078d1ddf782.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `902eb064baea6453fff907d26914b034e59e8717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
