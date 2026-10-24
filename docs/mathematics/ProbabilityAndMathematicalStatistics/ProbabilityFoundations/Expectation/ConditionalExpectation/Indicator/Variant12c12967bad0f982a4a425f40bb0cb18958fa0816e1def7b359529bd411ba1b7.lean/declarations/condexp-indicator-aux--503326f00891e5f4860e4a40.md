# condExp_indicator_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b48392a5-063b-5045-b35f-ad780bdadc1f",
  "kind": "theorem",
  "lexical_name": "condExp_indicator_aux",
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
  "slug": "condexp-indicator-aux--503326f00891e5f4860e4a40",
  "source": {
    "blob": "050e5b51e50d5ce1c3bf5327ce29e6e8f3526de7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant12c12967bad0f982a4a425f40bb0cb18958fa0816e1def7b359529bd411ba1b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:503326f00891e5f4860e4a407e9bb12a7cea989baed94e1dc89e8868ecf9ed25",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant12c12967bad0f982a4a425f40bb0cb18958fa0816e1def7b359529bd411ba1b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b48392a5-063b-5045-b35f-ad780bdadc1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_indicator_aux (hs : MeasurableSet[m] s) (hf : f =ᵐ[μ.restrict sᶜ] 0) :
    μ[s.indicator f | m] =ᵐ[μ] s.indicator (μ[f | m]) := by
  by_cases hm : m ≤ m0
  swap; · simp_rw [condExp_of_not_le hm, Set.indicator_zero']; rfl
  have hsf_zero : ∀ g : α → E, g =ᵐ[μ.restrict sᶜ] 0 → s.indicator g =ᵐ[μ] g := fun g =>
    indicator_ae_eq_of_restrict_compl_ae_eq_zero (hm _ hs)
  refine ((hsf_zero (μ[f | m]) (condExp_ae_eq_restrict_zero hs.compl hf)).trans ?_).symm
  exact condExp_congr_ae (hsf_zero f hf).symm

/-- The conditional expectation of the indicator of a function over an `m`-measurable set with
respect to the σ-algebra `m` is a.e. equal to the indicator of the conditional expectation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant12c12967bad0f982a4a425f40bb0cb18958fa0816e1def7b359529bd411ba1b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant12c12967bad0f982a4a425f40bb0cb18958fa0816e1def7b359529bd411ba1b7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `050e5b51e50d5ce1c3bf5327ce29e6e8f3526de7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
