# nonnegative_integral_integral_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:694b3ee4-9e1c-072f-bbc8-75e24333865c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60bb96e9-8dfc-4dd2-8ea5-67563458238b",
  "kind": "theorem",
  "lexical_name": "nonnegative_integral_integral_swap",
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
  "slug": "nonnegative-integral-integral-swap--ffd85024a1efee2d0081f560",
  "source": {
    "blob": "3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffd85024a1efee2d0081f5603175bcb15e84505eeed120e64de540b896c0b32a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60bb96e9-8dfc-4dd2-8ea5-67563458238b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem nonnegative_integral_integral_swap
    {f : α → β → ℝ}
    (hf : Measurable (Function.uncurry f))
    (hpos : ∀ x y, 0 ≤ f x y)
    (hleft : ∀ x, Integrable (f x) ν)
    (hright : ∀ y, Integrable (fun x => f x y) μ) :
    (∫ x, ∫ y, f x y ∂ν ∂μ) = ∫ y, ∫ x, f x y ∂μ ∂ν := by
  have hl (x : α) :
      ENNReal.ofReal (∫ y, f x y ∂ν) = ∫⁻ y, ENNReal.ofReal (f x y) ∂ν :=
    ofReal_integral_eq_lintegral_ofReal (hleft x)
      (Filter.Eventually.of_forall (hpos x))
  have hr (y : β) :
      ENNReal.ofReal (∫ x, f x y ∂μ) = ∫⁻ x, ENNReal.ofReal (f x y) ∂μ :=
    ofReal_integral_eq_lintegral_ofReal (hright y)
      (Filter.Eventually.of_forall fun x => hpos x y)
  rw [integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun x => integral_nonneg (hpos x))
      hf.stronglyMeasurable.integral_prod_right.aestronglyMeasurable,
    integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun y => integral_nonneg fun x => hpos x y)
      hf.stronglyMeasurable.integral_prod_left.aestronglyMeasurable]
  simp_rw [hl, hr]
  exact congrArg ENNReal.toReal (lintegral_lintegral_swap hf.ennreal_ofReal.aemeasurable)

end

/-- Nonnegative Tonelli reverses the triangular source integral with measurable,
finite inner slices in both directions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
