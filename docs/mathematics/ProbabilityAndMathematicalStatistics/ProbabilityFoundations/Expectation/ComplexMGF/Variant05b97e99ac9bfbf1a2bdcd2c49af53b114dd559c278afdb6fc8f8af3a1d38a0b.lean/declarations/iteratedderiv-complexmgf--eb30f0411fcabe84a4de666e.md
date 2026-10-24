# iteratedDeriv_complexMGF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed1ef8c34fa997efe9f80a87bf48c7ca1456c05b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b803c41-7208-7356-0ae1-bb01d2aa872d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0269246-5bb3-58e0-7bc0-ea510dfc01d0",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_complexMGF",
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
  "slug": "iteratedderiv-complexmgf--eb30f0411fcabe84a4de666e",
  "source": {
    "blob": "ed1ef8c34fa997efe9f80a87bf48c7ca1456c05b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 222,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb30f0411fcabe84a4de666e3888ca652e239ad79bade75904fd3690884443bb",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0269246-5bb3-58e0-7bc0-ea510dfc01d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedDeriv_complexMGF (hz : z.re ∈ interior (integrableExpSet X μ)) (n : ℕ) :
    iteratedDeriv n (complexMGF X μ) z = μ[fun ω ↦ X ω ^ n * cexp (z * X ω)] := by
  induction n generalizing z with
  | zero => simp [complexMGF]
  | succ n hn =>
    rw [iteratedDeriv_succ]
    exact (hasDerivAt_iteratedDeriv_complexMGF hz n).deriv

end Deriv

section EqOfMGF

/-! We prove that if two random variables have the same `mgf`, then
they also have the same `complexMGF`. -/

variable {Ω' : Type*} {mΩ' : MeasurableSpace Ω'} {Y : Ω' → ℝ} {μ' : Measure Ω'}

/-- If two random variables have the same moment-generating function then they have
the same `integrableExpSet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant05b97e99ac9bfbf1a2bdcd2c49af53b114dd559c278afdb6fc8f8af3a1d38a0b.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed1ef8c34fa997efe9f80a87bf48c7ca1456c05b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
