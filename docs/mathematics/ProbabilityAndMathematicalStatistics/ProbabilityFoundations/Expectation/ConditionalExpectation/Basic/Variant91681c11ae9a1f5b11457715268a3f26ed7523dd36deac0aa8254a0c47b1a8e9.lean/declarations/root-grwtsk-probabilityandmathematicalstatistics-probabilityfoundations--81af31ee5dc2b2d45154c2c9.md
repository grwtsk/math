# _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.CondExpOfNotLe.Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.ContinuousLinearMap.comp_condExp_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b87664e-413f-3d72-103f-5e7a02ecd50f",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.CondExpOfNotLe.Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.ContinuousLinearMap.comp_condExp_comm",
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
  "slug": "root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--81af31ee5dc2b2d45154c2c9",
  "source": {
    "blob": "2e0dba011dacd639f000caf31a3683da6da1c30e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 368,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant91681c11ae9a1f5b11457715268a3f26ed7523dd36deac0aa8254a0c47b1a8e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81af31ee5dc2b2d45154c2c9e76390fcd28c26daf09e6a7e4fcd73c046f8c232",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant91681c11ae9a1f5b11457715268a3f26ed7523dd36deac0aa8254a0c47b1a8e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b87664e-413f-3d72-103f-5e7a02ecd50f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.CondExpOfNotLe.Variant6cd0b49deb2c31885434c25c92610eec9ae77d361759a2249e834237d484f4e2.ContinuousLinearMap.comp_condExp_comm {F : Type*} [NormedAddCommGroup F]
    [CompleteSpace F] [NormedSpace ℝ F] (hf_int : Integrable f μ) (T : E →L[ℝ] F) :
    T ∘ μ[f | m] =ᵐ[μ] μ[T ∘ f | m] := by
  by_cases hm : m ≤ m₀
  · by_cases hμ : SigmaFinite (μ.trim hm)
    · refine ae_eq_condExp_of_forall_setIntegral_eq hm ?_ (fun s ms hs => ?_) (fun s ms hs => ?_) ?_
      · exact T.integrable_comp hf_int
      · exact (T.integrable_comp integrable_condExp).integrableOn
      · calc
          ∫ x in s, (T ∘ μ[f | m]) x ∂μ = T (∫ x in s, μ[f | m] x ∂μ) :=
            T.integral_comp_comm integrable_condExp.restrict
          _ = T (∫ x in s, f x ∂μ) := congrArg T (setIntegral_condExp hm hf_int ms)
          _ = ∫ x in s, (T ∘ f) x ∂μ := (T.integral_comp_comm hf_int.restrict).symm
      · exact T.cont.comp_aestronglyMeasurable stronglyMeasurable_condExp.aestronglyMeasurable
    · simp [condExp_of_not_sigmaFinite hm hμ]
  · simp [condExp_of_not_le hm]

/-- Conditional expectation commutes with affine functions. Note that `IsFiniteMeasure μ` is a
necessary assumption because we want constant functions to be integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant91681c11ae9a1f5b11457715268a3f26ed7523dd36deac0aa8254a0c47b1a8e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Basic/Variant91681c11ae9a1f5b11457715268a3f26ed7523dd36deac0aa8254a0c47b1a8e9.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e0dba011dacd639f000caf31a3683da6da1c30e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
