# exactPolynomialEnvelope_of_recurrence_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d568c03-85e5-248e-9480-de10fb430bce",
  "kind": "theorem",
  "lexical_name": "exactPolynomialEnvelope_of_recurrence_and_tail",
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
  "slug": "exactpolynomialenvelope-of-recurrence-and-tail--6da6d9693349a381a80cc0b9",
  "source": {
    "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 513,
    "path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6da6d9693349a381a80cc0b901ec6ace5709888e9770c77338ec69be405b63cc",
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

Occurrence: `result:1d568c03-85e5-248e-9480-de10fb430bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactPolynomialEnvelope_of_recurrence_and_tail {E a : ℝ → ℝ} {R h C ρ p : ℝ}
    (hR : 0 ≤ R) (hh : 0 ≤ h) (hC : 0 ≤ C) (hρ₀ : 0 < ρ) (hρ : ρ < 1) (hp : 0 ≤ p)
    (ha : ∀ s, R ≤ s → 0 ≤ a s)
    (haρ : ∀ s, R ≤ s → a s ≤ ρ)
    (hrec : ∀ s, R ≤ s → E s ≤ a s * E (s + h) + C * (1 + s) ^ p)
    (htail : ∀ T, R ≤ T →
      Tendsto (fun n => coefficientProduct (fun j => a (T + (j : ℝ) * h)) n *
        E (T + (n : ℝ) * h)) atTop (𝓝 0)) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ T : ℝ, R ≤ T → E T ≤ D * (1 + T) ^ p := by
  obtain ⟨q, hpq⟩ := exists_nat_ge p
  have hsum := summable_polynomial_geometric hρ₀ hρ q
  let D : ℝ := C * (1 + h) ^ q * (∑' j : ℕ, ρ ^ j * (1 + (j : ℝ)) ^ q)
  have hD : 0 ≤ D := by
    apply mul_nonneg (by positivity)
    exact tsum_nonneg (fun j => by positivity)
  apply polynomialEnvelope_of_recurrence_cost_and_tail hh hD ha hrec
  · intro T hRT n
    have hT : 0 ≤ T := hR.trans hRT
    have htime (j : ℕ) : R ≤ T + (j : ℝ) * h := by
      have hj : 0 ≤ (j : ℝ) * h := mul_nonneg (Nat.cast_nonneg j) hh
      linarith
    simpa only [add_assoc] using
      realPolynomial_weighted_cost hT hh hC hρ₀.le hp hpq
        (fun j => ha _ (htime j)) (fun j => haρ _ (htime j)) hsum n
  · exact htail

/-- The delayed pointwise supplier produces the polynomial positive envelope
with the *same* real allowance exponent. Only the actual critical weighted
tail, separately supplied by arithmetic decay, remains an analytic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
