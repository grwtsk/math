# tendsto_integral_Ici_zero

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
      "line": 686,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fa376a8-c8e4-0b2b-ebe2-19246360c6b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e87f41eb-1962-5f35-fdf9-1314a6deaeaa",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_Ici_zero",
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
  "slug": "tendsto-integral-ici-zero--af8a04611522895bf4926f22",
  "source": {
    "blob": "99d112e521dea3e23ebd33931a5ad88f755642f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 686,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8a04611522895bf4926f22f6a1ddff2b307db39ec5d39655899d4345da3aa4",
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

Occurrence: `result:e87f41eb-1962-5f35-fdf9-1314a6deaeaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_Ici_zero (ha : Tendsto a l atTop) :
    Tendsto (fun i => ∫ x in Ici (a i), f x ∂μ) l (𝓝 0) := by
  by_cases! h : ∀ b, ¬ IntegrableOn f (Ici b) μ
  · exact tendsto_const_nhds.congr (fun i => (integral_undef (h (a i))).symm)
  obtain ⟨b, hb⟩ := h
  have : ∀ᶠ i in l, ∫ x in Ici b, f x ∂μ - ∫ x in Ico b (a i), f x ∂μ =
      ∫ x in Ici (a i), f x ∂μ := by
    filter_upwards [ha.eventually_mem (Ici_mem_atTop b)] with i hi
    rw [sub_eq_iff_comm, intervalIntegral.integral_Ici_sub_Ici hb hi]
  rw [← sub_self (∫ x in Ici b, f x ∂μ)]
  exact Tendsto.congr' this (Tendsto.const_sub _ <| tendsto_integral_Ico_integral_Ici b hb ha)

end IntegralOfIntervalIntegral

open Real

open scoped Interval

section IoiFTC

variable {E : Type*} {f f' : ℝ → E} {g g' : ℝ → ℝ} {a l : ℝ} {m : E} [NormedAddCommGroup E]
  [NormedSpace ℝ E]

/-- If the derivative of a function defined on the real line is integrable close to `+∞`, then
the function has a limit at `+∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d112e521dea3e23ebd33931a5ad88f755642f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
