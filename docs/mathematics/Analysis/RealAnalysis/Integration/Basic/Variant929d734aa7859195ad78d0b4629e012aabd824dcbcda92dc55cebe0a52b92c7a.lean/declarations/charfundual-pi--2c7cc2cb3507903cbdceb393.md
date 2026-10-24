# charFunDual_pi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59ee1e00-ba1e-54ef-9d4a-8ce019bb0f72",
  "kind": "lemma",
  "lexical_name": "charFunDual_pi'",
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
  "slug": "charfundual-pi--2c7cc2cb3507903cbdceb393",
  "source": {
    "blob": "82fca0ce83aadcf1c8d6c4c89270bbd81fddc34a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 455,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c7cc2cb3507903cbdceb393e11c0990f7fc085b99b25731404cac883f49acfb",
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

Occurrence: `result:59ee1e00-ba1e-54ef-9d4a-8ce019bb0f72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charFunDual_pi' (p : ℝ≥0∞) [Fact (1 ≤ p)] {ι : Type*} [Fintype ι] [DecidableEq ι]
    {E : ι → Type*} [∀ i, NormedAddCommGroup (E i)] [∀ i, NormedSpace ℝ (E i)]
    {mE : ∀ i, MeasurableSpace (E i)} {μ : (i : ι) → Measure (E i)} [∀ i, SigmaFinite (μ i)]
    (L : StrongDual ℝ (PiLp p E)) :
    charFunDual ((Measure.pi μ).map (toLp p)) L =
      ∏ i, charFunDual (μ i) (L.comp
        ((PiLp.continuousLinearEquiv p ℝ E).symm.toContinuousLinearMap.comp (.single ℝ E i))) := by
  simp_rw [charFunDual_apply, ← integral_fintype_prod_eq_prod, ← Complex.exp_sum, ← Finset.sum_mul,
    ← ofReal_sum, L.comp_apply, ← map_sum, ContinuousLinearMap.sum_comp_single]
  rw [← MeasurableEquiv.coe_toLp, integral_map_equiv]
  simp

variable [BorelSpace E] [SecondCountableTopology E]

/-- If two finite measures have the same characteristic function, then they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant929d734aa7859195ad78d0b4629e012aabd824dcbcda92dc55cebe0a52b92c7a.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82fca0ce83aadcf1c8d6c4c89270bbd81fddc34a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
