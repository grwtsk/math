# integrableOn_Ioi_of_intervalIntegral_norm_bounded

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
      "line": 554,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75045f99-4e6d-3630-543c-abd71fdd1e34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8227e0c-1c4b-72d5-e748-cb8d49dbf179",
  "kind": "theorem",
  "lexical_name": "integrableOn_Ioi_of_intervalIntegral_norm_bounded",
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
  "slug": "integrableon-ioi-of-intervalintegral-norm-bounded--60464e2ca708553a074b56e2",
  "source": {
    "blob": "99d112e521dea3e23ebd33931a5ad88f755642f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 554,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60464e2ca708553a074b56e2281d3f3445fca6afa82eb2b9550d99055e3d9caf",
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

Occurrence: `result:e8227e0c-1c4b-72d5-e748-cb8d49dbf179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Ioi_of_intervalIntegral_norm_bounded (I a : ℝ)
    (hfi : ∀ i, IntegrableOn f (Ioc a (b i)) μ) (hb : Tendsto b l atTop)
    (h : ∀ᶠ i in l, (∫ x in a..b i, ‖f x‖ ∂μ) ≤ I) : IntegrableOn f (Ioi a) μ := by
  have hφ : AECover (μ.restrict <| Ioi a) l _ := aecover_Iic hb
  have hfi : ∀ i, IntegrableOn f (Iic (b i)) (μ.restrict <| Ioi a) := by
    intro i
    rw [IntegrableOn, Measure.restrict_restrict (hφ.measurableSet i), inter_comm]
    exact hfi i
  refine hφ.integrable_of_integral_norm_bounded I hfi (h.mp ?_)
  filter_upwards [hb.eventually (eventually_ge_atTop a)] with i hbi
  rw [intervalIntegral.integral_of_le hbi, Measure.restrict_restrict (hφ.measurableSet i),
    inter_comm]
  exact id

/-- If `f` is integrable on intervals `Ioc a (b i)`,
where `b i` tends to ∞, and
`∫ x in a .. b i, ‖f x‖ ∂μ` converges to `I : ℝ` along a filter `l`,
then `f` is integrable on the interval (a, ∞) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d112e521dea3e23ebd33931a5ad88f755642f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
