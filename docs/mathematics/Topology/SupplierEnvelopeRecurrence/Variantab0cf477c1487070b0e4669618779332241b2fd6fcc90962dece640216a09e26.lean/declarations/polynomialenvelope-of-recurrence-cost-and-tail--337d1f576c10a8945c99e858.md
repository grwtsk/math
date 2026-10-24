# polynomialEnvelope_of_recurrence_cost_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a001aaa3-8a52-d9e5-ef4f-bf6b169ab7af",
  "kind": "theorem",
  "lexical_name": "polynomialEnvelope_of_recurrence_cost_and_tail",
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
  "slug": "polynomialenvelope-of-recurrence-cost-and-tail--337d1f576c10a8945c99e858",
  "source": {
    "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 310,
    "path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:337d1f576c10a8945c99e858c338487f363fbfa286b70af67d344fac22d16681",
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

Occurrence: `result:a001aaa3-8a52-d9e5-ef4f-bf6b169ab7af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomialEnvelope_of_recurrence_cost_and_tail {E a f : ℝ → ℝ} {R h D p : ℝ}
    (hh : 0 ≤ h) (hD : 0 ≤ D)
    (ha : ∀ s, R ≤ s → 0 ≤ a s)
    (hrec : ∀ s, R ≤ s → E s ≤ a s * E (s + h) + f s)
    (hcost : ∀ T, R ≤ T → ∀ n,
      (∑ j ∈ Finset.range n,
        coefficientProduct (fun k => a (T + (k : ℝ) * h)) j *
          f (T + (j : ℝ) * h)) ≤ D * (1 + T) ^ p)
    (htail : ∀ T, R ≤ T →
      Tendsto (fun n => coefficientProduct (fun j => a (T + (j : ℝ) * h)) n *
        E (T + (n : ℝ) * h)) atTop (𝓝 0)) :
    ∃ D' : ℝ, 0 ≤ D' ∧ ∀ T : ℝ, R ≤ T → E T ≤ D' * (1 + T) ^ p := by
  refine ⟨D, hD, ?_⟩
  intro T hRT
  have htime (j : ℕ) : R ≤ T + (j : ℝ) * h := by
    have hj : 0 ≤ (j : ℝ) * h := mul_nonneg (Nat.cast_nonneg j) hh
    linarith
  have hstep (j : ℕ) : T + ((j + 1 : ℕ) : ℝ) * h = (T + (j : ℝ) * h) + h := by
    push_cast
    ring
  simpa only [Nat.cast_zero, zero_mul, add_zero] using
    bound_of_iteration_and_vanishing_tail (E := fun j => E (T + (j : ℝ) * h))
      (a := fun j => a (T + (j : ℝ) * h))
      (f := fun j => f (T + (j : ℝ) * h))
      (fun j => ha _ (htime j))
      (fun j => by simpa only [hstep j] using hrec _ (htime j))
      (hcost T hRT) (htail T hRT)

/-- A polynomial times a strictly contracting geometric factor is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
