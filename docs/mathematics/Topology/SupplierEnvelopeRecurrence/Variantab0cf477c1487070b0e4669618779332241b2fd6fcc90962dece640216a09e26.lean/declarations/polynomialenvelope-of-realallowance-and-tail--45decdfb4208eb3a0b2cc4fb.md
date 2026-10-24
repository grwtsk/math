# polynomialEnvelope_of_realAllowance_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6f4227c-ea09-00ff-5a41-d5aa7963d6f1",
  "kind": "theorem",
  "lexical_name": "polynomialEnvelope_of_realAllowance_and_tail",
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
  "slug": "polynomialenvelope-of-realallowance-and-tail--45decdfb4208eb3a0b2cc4fb",
  "source": {
    "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 430,
    "path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45decdfb4208eb3a0b2cc4fb4ca6fe7935f0f21edca3baedb1ba457c024eadb3",
  "verification": {
    "reference": "docs/verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6f4227c-ea09-00ff-5a41-d5aa7963d6f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomialEnvelope_of_realAllowance_and_tail {E a : ℝ → ℝ} {R h C ρ p : ℝ}
    (hR : 0 ≤ R) (hh : 0 ≤ h) (hC : 0 ≤ C) (hρ₀ : 0 < ρ) (hρ : ρ < 1)
    (ha : ∀ s, R ≤ s → 0 ≤ a s)
    (haρ : ∀ s, R ≤ s → a s ≤ ρ)
    (hrec : ∀ s, R ≤ s → E s ≤ a s * E (s + h) + C * (1 + s) ^ p)
    (htail : ∀ T, R ≤ T →
      Tendsto (fun n => coefficientProduct (fun j => a (T + (j : ℝ) * h)) n *
        E (T + (n : ℝ) * h)) atTop (𝓝 0)) :
    ∃ D q : ℝ, 0 ≤ D ∧ 0 ≤ q ∧
      ∀ T : ℝ, R ≤ T → E T ≤ D * (1 + T) ^ q := by
  obtain ⟨q, hpq⟩ := exists_nat_ge p
  have hrec' : ∀ s, R ≤ s → E s ≤ a s * E (s + h) + C * (1 + s) ^ q := by
    intro s hRs
    have hs₀ : 0 ≤ s := hR.trans hRs
    have hpow : (1 + s) ^ p ≤ (1 + s) ^ q := by
      simpa only [Real.rpow_natCast] using
        Real.rpow_le_rpow_of_exponent_le (by linarith : 1 ≤ 1 + s) hpq
    exact (hrec s hRs).trans (add_le_add le_rfl (mul_le_mul_of_nonneg_left hpow hC))
  obtain ⟨D, hD, hbound⟩ :=
    polynomialEnvelope_of_recurrence_and_tail hR hh hC hρ₀ hρ ha haρ hrec' htail
  refine ⟨D, (q : ℝ), hD, Nat.cast_nonneg q, ?_⟩
  intro T hRT
  simpa only [Real.rpow_natCast] using hbound T hRT

/-- The natural exponent is used only in the summable iteration-index factor;
the original real exponent of the starting time is preserved exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
