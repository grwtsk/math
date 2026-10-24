# charFunDual_eq_prod_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78be2d0e-d09f-e088-f187-03be7daafbdb",
  "kind": "lemma",
  "lexical_name": "charFunDual_eq_prod_iff'",
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
  "slug": "charfundual-eq-prod-iff--c77be0276cd9d7c92174da23",
  "source": {
    "blob": "82fca0ce83aadcf1c8d6c4c89270bbd81fddc34a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 498,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c77be0276cd9d7c92174da23e38d41178bf0b86845bba601a1956a0c0fa12570",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78be2d0e-d09f-e088-f187-03be7daafbdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charFunDual_eq_prod_iff' (p : ℝ≥0∞) [Fact (1 ≤ p)] [BorelSpace F]
    [SecondCountableTopology F] [CompleteSpace E] [CompleteSpace F] {ξ : Measure (E × F)}
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] [IsFiniteMeasure ξ] :
    (∀ L, charFunDual (ξ.map (toLp p)) L =
      charFunDual μ (L.comp
        ((WithLp.prodContinuousLinearEquiv p ℝ E F).symm.toContinuousLinearMap.comp
          (.inl ℝ E F))) *
      charFunDual ν (L.comp
        ((WithLp.prodContinuousLinearEquiv p ℝ E F).symm.toContinuousLinearMap.comp
          (.inr ℝ E F)))) ↔
    ξ = μ.prod ν where
  mp h := by
    refine (MeasurableEquiv.toLp p (E × F)).map_measurableEquiv_injective
      <| Measure.ext_of_charFunDual <| funext fun L ↦ ?_
    rw [MeasurableEquiv.coe_toLp, h, charFunDual_prod']
  mpr h := by rw [h]; exact charFunDual_prod' p

/-- The characteristic function of a measure is a product of
characteristic functions if and only if it is a product measure.
This is the version for Banach spaces, see `charFun_eq_pi_iff`
for the Hilbert space version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82fca0ce83aadcf1c8d6c4c89270bbd81fddc34a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
