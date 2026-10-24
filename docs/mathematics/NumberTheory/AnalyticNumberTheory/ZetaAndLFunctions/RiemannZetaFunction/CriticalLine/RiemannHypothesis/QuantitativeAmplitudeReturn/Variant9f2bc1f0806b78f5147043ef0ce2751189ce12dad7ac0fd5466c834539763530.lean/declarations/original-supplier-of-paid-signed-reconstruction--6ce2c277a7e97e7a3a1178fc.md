# original_supplier_of_paid_signed_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3502d0e-8480-330d-f385-472459d0d143",
  "kind": "theorem",
  "lexical_name": "original_supplier_of_paid_signed_reconstruction",
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
  "slug": "original-supplier-of-paid-signed-reconstruction--6ce2c277a7e97e7a3a1178fc",
  "source": {
    "blob": "86fba0de27bcd87e3824e7030cf3693b746754fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce2c277a7e97e7a3a1178fcc912e28b4e40345a6370d95af1b75d94229d8acf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3502d0e-8480-330d-f385-472459d0d143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_supplier_of_paid_signed_reconstruction
    (retained error : ℝ → ℝ → ℝ → ℝ) {K D C p q R : ℝ}
    (hK : 0 ≤ K) (hD : 0 ≤ D) (hC : 0 ≤ C) (hp : 0 ≤ p) (_hq : 0 ≤ q)
    (hR : max 1 (4 * K) ≤ R)
    (hexact : ∀ A, R ≤ A → ∀ σ ∈ ({-1, 1} : Set ℝ),
      ∀ t ∈ polaritySector A σ,
        σ * centeredPickup A t = retained A σ t + error A σ t)
    (herror : ∀ A, R ≤ A → ∀ σ ∈ ({-1, 1} : Set ℝ),
      ∀ t ∈ polaritySector A σ, |error A σ t| ≤ C * A ^ q)
    (hretained : ∀ A, R ≤ A → ∀ σ ∈ ({-1, 1} : Set ℝ),
      ∀ t ∈ polaritySector A σ, retained A σ t ≤ supplierAllowance K D p A) :
    SupplierEstimate := by
  refine ⟨K, D + C, max p q, R, hK, add_nonneg hD hC,
    hp.trans (le_max_left p q), hR, ?_⟩
  intro A hA
  have hA1 : 1 ≤ A := (le_max_left 1 (4 * K)).trans (hR.trans hA)
  have hallowance : 0 ≤ supplierAllowance K (D + C) (max p q) A := by
    unfold supplierAllowance
    exact add_nonneg (mul_nonneg (div_nonneg (by positivity) (Real.sqrt_nonneg _))
      (runningPositiveMaximum_nonneg pickup_continuous (2 * A)))
      (mul_nonneg (add_nonneg hD hC) (Real.rpow_nonneg (by linarith) _))
  apply (signedMeter_le_iff A _ hallowance).mpr
  constructor
  · apply ae_of_all
    intro t ht
    simpa using original_allowance_paid_return hA1 hD hC
      (hexact A hA 1 (by simp) t ht) (herror A hA 1 (by simp) t ht)
      (hretained A hA 1 (by simp) t ht)
  · apply ae_of_all
    intro t ht
    simpa using original_allowance_paid_return hA1 hD hC
      (hexact A hA (-1) (by simp) t ht) (herror A hA (-1) (by simp) t ht)
      (hretained A hA (-1) (by simp) t ht)

end
end GRWTSK.RiemannHypothesis.Conversation.QuantitativeAmplitudeReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeAmplitudeReturn/Variant9f2bc1f0806b78f5147043ef0ce2751189ce12dad7ac0fd5466c834539763530.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86fba0de27bcd87e3824e7030cf3693b746754fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
