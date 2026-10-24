# condExp_ae_eq_restrict_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d80f2a17b233c16cb76fcafd2ad9bdbe2a9bdae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc41713f-63e5-ac47-ed44-838f8946f2ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:657fa4b3-3e3f-4688-781b-bd6d19e83da1",
  "kind": "theorem",
  "lexical_name": "condExp_ae_eq_restrict_zero",
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
  "slug": "condexp-ae-eq-restrict-zero--a16876a8975ae4c09280a9ac",
  "source": {
    "blob": "2d80f2a17b233c16cb76fcafd2ad9bdbe2a9bdae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 36,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a16876a8975ae4c09280a9ac2ca890ffc1b7a4ff357efc1cebb2185235f6d359",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:657fa4b3-3e3f-4688-781b-bd6d19e83da1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_ae_eq_restrict_zero (hs : MeasurableSet[m] s) (hf : f =ᵐ[μ.restrict s] 0) :
    μ[f|m] =ᵐ[μ.restrict s] 0 := by
  by_cases hm : m ≤ m0
  swap; · simp_rw [condExp_of_not_le hm]; rfl
  by_cases hμm : SigmaFinite (μ.trim hm)
  swap; · simp_rw [condExp_of_not_sigmaFinite hm hμm]; rfl
  haveI : SigmaFinite (μ.trim hm) := hμm
  have : SigmaFinite ((μ.restrict s).trim hm) := by
    rw [← restrict_trim hm _ hs]
    exact Restrict.sigmaFinite _ s
  by_cases hf_int : Integrable f μ
  swap; · rw [condExp_of_not_integrable hf_int]
  refine ae_eq_of_forall_setIntegral_eq_of_sigmaFinite' hm ?_ ?_ ?_ ?_ ?_
  · exact fun t _ _ => integrable_condExp.integrableOn.integrableOn
  · exact fun t _ _ => (integrable_zero _ _ _).integrableOn
  · intro t ht _
    rw [Measure.restrict_restrict (hm _ ht), setIntegral_condExp hm hf_int (ht.inter hs), ←
      Measure.restrict_restrict (hm _ ht)]
    refine setIntegral_congr_ae (hm _ ht) ?_
    filter_upwards [hf] with x hx _ using hx
  · exact stronglyMeasurable_condExp.aestronglyMeasurable
  · exact stronglyMeasurable_zero.aestronglyMeasurable

@[deprecated (since := "2025-01-21")]
alias condexp_ae_eq_restrict_zero := condExp_ae_eq_restrict_zero

/-- Auxiliary lemma for `condExp_indicator`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant35815131b1cf5f8a03ccb41ef45aefb692cedfd9db57dc6d13d8046df2ecfd5f.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d80f2a17b233c16cb76fcafd2ad9bdbe2a9bdae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
