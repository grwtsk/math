# composedVariation_nat_le_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fe7ec21c6459a8ab55158a81ac047eeb487c1e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12368a46-7334-8e00-cfc6-07679fa13c78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d838fa29-f8d8-951d-2b99-96e135a7cee9",
  "kind": "theorem",
  "lexical_name": "composedVariation_nat_le_rpow",
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
  "slug": "composedvariation-nat-le-rpow--0992b8b146d800274e99a982",
  "source": {
    "blob": "7fe7ec21c6459a8ab55158a81ac047eeb487c1e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0992b8b146d800274e99a982af02f9a4b96313a0d1b377cef12e7221e1229c90",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d838fa29-f8d8-951d-2b99-96e135a7cee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem composedVariation_nat_le_rpow (E : ℝ → ℝ) (h G : ℕ) (K K' : ℝ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / q ^ (3 / 2 : ℝ)) :
    Real.sqrt (G : ℝ) * |E ((h * G ^ 2 : ℕ) : ℝ)| +
      (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |E ((h * j ^ 2 : ℕ) : ℝ) - E ((h * (j + 1) ^ 2 : ℕ) : ℝ)|) ≤
      (K + 4 * K') / Real.sqrt (h : ℝ) := by
  apply composedVariation_nat_le E h G K K' hh hc hd hv
  intro q hq
  simpa only [rpow_three_halves q (zero_lt_one.trans hq)] using hb q hq

end KernelVariationTransportScratch

#print axioms KernelVariationTransportScratch.abs_sub_le_reciprocal
#print axioms KernelVariationTransportScratch.sqrt_reciprocal_step_le
#print axioms KernelVariationTransportScratch.sqrt_reciprocal_variation_le
#print axioms KernelVariationTransportScratch.composed_abs_sub_le
#print axioms KernelVariationTransportScratch.composedVariation
#print axioms KernelVariationTransportScratch.composedVariation_zero
#print axioms KernelVariationTransportScratch.composedVariation_le
#print axioms KernelVariationTransportScratch.composedVariation_nat_le
#print axioms KernelVariationTransportScratch.rpow_three_halves
#print axioms KernelVariationTransportScratch.composedVariation_nat_le_rpow
#check KernelVariationTransportScratch.composedVariation_nat_le_rpow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe7ec21c6459a8ab55158a81ac047eeb487c1e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
