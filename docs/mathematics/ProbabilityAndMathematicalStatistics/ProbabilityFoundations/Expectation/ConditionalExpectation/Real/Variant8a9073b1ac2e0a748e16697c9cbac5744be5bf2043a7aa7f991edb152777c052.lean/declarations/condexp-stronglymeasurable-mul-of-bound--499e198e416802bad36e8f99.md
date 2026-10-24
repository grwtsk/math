# condExp_stronglyMeasurable_mul_of_bound₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb81f440-ef23-e48c-26bc-7e8434f1c50c",
  "kind": "theorem",
  "lexical_name": "condExp_stronglyMeasurable_mul_of_bound₀",
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
  "slug": "condexp-stronglymeasurable-mul-of-bound--499e198e416802bad36e8f99",
  "source": {
    "blob": "b235c9258850a66d1d5c442b2d864d98c1788c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 317,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:499e198e416802bad36e8f994f4eeffbb8386b27b60ca94f645680a938388edf",
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

Occurrence: `result:cb81f440-ef23-e48c-26bc-7e8434f1c50c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_stronglyMeasurable_mul_of_bound₀ (hm : m ≤ m0) [IsFiniteMeasure μ] {f g : α → ℝ}
    (hf : AEStronglyMeasurable[m] f μ) (hg : Integrable g μ) (c : ℝ)
    (hf_bound : ∀ᵐ x ∂μ, ‖f x‖ ≤ c) : μ[f * g|m] =ᵐ[μ] f * μ[g|m] := by
  have : μ[f * g|m] =ᵐ[μ] μ[hf.mk f * g|m] :=
    condExp_congr_ae (EventuallyEq.mul hf.ae_eq_mk EventuallyEq.rfl)
  refine this.trans ?_
  have : f * μ[g|m] =ᵐ[μ] hf.mk f * μ[g|m] := EventuallyEq.mul hf.ae_eq_mk EventuallyEq.rfl
  refine EventuallyEq.trans ?_ this.symm
  refine condExp_stronglyMeasurable_mul_of_bound hm hf.stronglyMeasurable_mk hg c ?_
  filter_upwards [hf_bound, hf.ae_eq_mk] with x hxc hx_eq
  rwa [← hx_eq]

@[deprecated (since := "2025-01-21")]
alias condexp_stronglyMeasurable_mul_of_bound₀ := condExp_stronglyMeasurable_mul_of_bound₀

/-- Pull-out property of the conditional expectation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant8a9073b1ac2e0a748e16697c9cbac5744be5bf2043a7aa7f991edb152777c052.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b235c9258850a66d1d5c442b2d864d98c1788c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
