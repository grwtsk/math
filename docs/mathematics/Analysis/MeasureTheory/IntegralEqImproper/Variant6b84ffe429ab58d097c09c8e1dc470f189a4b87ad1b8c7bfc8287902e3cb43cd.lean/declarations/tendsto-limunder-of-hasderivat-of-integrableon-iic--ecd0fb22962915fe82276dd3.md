# tendsto_limUnder_of_hasDerivAt_of_integrableOn_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d112e521dea3e23ebd33931a5ad88f755642f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 931,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b93bff7-45d3-c4c2-f768-d0694fa97df5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86c86050-a800-f56d-5cea-d49544391be7",
  "kind": "theorem",
  "lexical_name": "tendsto_limUnder_of_hasDerivAt_of_integrableOn_Iic",
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
  "slug": "tendsto-limunder-of-hasderivat-of-integrableon-iic--ecd0fb22962915fe82276dd3",
  "source": {
    "blob": "99d112e521dea3e23ebd33931a5ad88f755642f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 950,
    "line": 931,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecd0fb22962915fe82276dd36a915bc0aa85c18ccb53fdc3b06059d37fa5f3ab",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86c86050-a800-f56d-5cea-d49544391be7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–950.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_limUnder_of_hasDerivAt_of_integrableOn_Iic [CompleteSpace E]
    (hderiv : ∀ x ∈ Iic a, HasDerivAt f (f' x) x) (f'int : IntegrableOn f' (Iic a)) :
    Tendsto f atBot (𝓝 (limUnder atBot f)) := by
  suffices ∃ a, Tendsto f atBot (𝓝 a) from tendsto_nhds_limUnder this
  let g := f ∘ (fun x ↦ -x)
  have hdg : ∀ x ∈ Ioi (-a), HasDerivAt g (-f' (-x)) x := by
    intro x hx
    have : -x ∈ Iic a := by grind
    simpa using HasDerivAt.scomp x (hderiv (-x) this) (hasDerivAt_neg' x)
  have L : Tendsto g atTop (𝓝 (limUnder atTop g)) := by
    apply tendsto_limUnder_of_hasDerivAt_of_integrableOn_Ioi hdg
    exact ((MeasurePreserving.integrableOn_comp_preimage (Measure.measurePreserving_neg _)
      (Homeomorph.neg ℝ).measurableEmbedding).2 f'int.neg).mono_set (by simp)
  refine ⟨limUnder atTop g, ?_⟩
  have : Tendsto (fun x ↦ g (-x)) atBot (𝓝 (limUnder atTop g)) := L.comp tendsto_neg_atBot_atTop
  simpa [g] using this

open UniformSpace in
/-- If a function and its derivative are integrable on `(-∞, a]`, then the function tends to zero
at `-∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d112e521dea3e23ebd33931a5ad88f755642f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
