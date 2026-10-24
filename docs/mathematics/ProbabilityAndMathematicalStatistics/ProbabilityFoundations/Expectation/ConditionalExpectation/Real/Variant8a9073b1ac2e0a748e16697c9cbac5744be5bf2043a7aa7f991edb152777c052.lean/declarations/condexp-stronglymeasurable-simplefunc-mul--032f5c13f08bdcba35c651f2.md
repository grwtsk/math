# condExp_stronglyMeasurable_simpleFunc_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f633c6b4-8d6e-71a7-4b29-a681755c27c8",
  "kind": "theorem",
  "lexical_name": "condExp_stronglyMeasurable_simpleFunc_mul",
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
  "slug": "condexp-stronglymeasurable-simplefunc-mul--032f5c13f08bdcba35c651f2",
  "source": {
    "blob": "b235c9258850a66d1d5c442b2d864d98c1788c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 242,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:032f5c13f08bdcba35c651f2c9f6245de1c3554d63871ac5ba4d5b94a932eaad",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f633c6b4-8d6e-71a7-4b29-a681755c27c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_stronglyMeasurable_simpleFunc_mul (hm : m ≤ m0) (f : @SimpleFunc α m ℝ) {g : α → ℝ}
    (hg : Integrable g μ) : μ[(f * g : α → ℝ)|m] =ᵐ[μ] f * μ[g|m] := by
  have : ∀ (s c) (f : α → ℝ), Set.indicator s (Function.const α c) * f = s.indicator (c • f) := by
    intro s c f
    ext1 x
    by_cases hx : x ∈ s
    · simp only [hx, Pi.mul_apply, Set.indicator_of_mem, Pi.smul_apply, Algebra.id.smul_eq_mul,
        Function.const_apply]
    · simp only [hx, Pi.mul_apply, Set.indicator_of_notMem, not_false_iff, zero_mul]
  apply @SimpleFunc.induction _ _ m _ (fun f => _)
    (fun c s hs => ?_) (fun g₁ g₂ _ h_eq₁ h_eq₂ => ?_) f
  · simp only [SimpleFunc.const_zero, SimpleFunc.coe_piecewise,
      SimpleFunc.coe_const, SimpleFunc.coe_zero, Set.piecewise_eq_indicator]
    rw [this, this]
    refine (condExp_indicator (hg.smul c) hs).trans ?_
    filter_upwards [condExp_smul c g m] with x hx
    classical simp_rw [Set.indicator_apply, hx]
  · have h_add := @SimpleFunc.coe_add _ _ m _ g₁ g₂
    calc
      μ[⇑(g₁ + g₂) * g|m] =ᵐ[μ] μ[(⇑g₁ + ⇑g₂) * g|m] := by
        refine condExp_congr_ae (EventuallyEq.mul ?_ EventuallyEq.rfl); rw [h_add]
      _ =ᵐ[μ] μ[⇑g₁ * g|m] + μ[⇑g₂ * g|m] := by
        rw [add_mul]; exact condExp_add (hg.simpleFunc_mul' hm _) (hg.simpleFunc_mul' hm _) _
      _ =ᵐ[μ] ⇑g₁ * μ[g|m] + ⇑g₂ * μ[g|m] := EventuallyEq.add h_eq₁ h_eq₂
      _ =ᵐ[μ] ⇑(g₁ + g₂) * μ[g|m] := by rw [h_add, add_mul]

@[deprecated (since := "2025-01-21")]
alias condexp_stronglyMeasurable_simpleFunc_mul := condExp_stronglyMeasurable_simpleFunc_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b235c9258850a66d1d5c442b2d864d98c1788c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
