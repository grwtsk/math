# set_lintegral_condKernel_univ_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0407d118-0913-88c2-4af3-ed1cfdbf45b3",
  "kind": "theorem",
  "lexical_name": "set_lintegral_condKernel_univ_right",
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
  "slug": "set-lintegral-condkernel-univ-right--cecca55baaf52cfefc35c4ca",
  "source": {
    "blob": "ba43ee13e0b7da787fe27cb685b7a531403c97ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 432,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cecca55baaf52cfefc35c4cae83d9aeb0753fcd2e9357d125f707610059a9b5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0407d118-0913-88c2-4af3-ed1cfdbf45b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_lintegral_condKernel_univ_right {f : α × Ω → ℝ≥0∞} (hf : Measurable f) {s : Set α}
    (hs : MeasurableSet s) :
    ∫⁻ a in s, ∫⁻ ω, f (a, ω) ∂ρ.condKernel a ∂ρ.fst = ∫⁻ x in s ×ˢ univ, f x ∂ρ := by
  rw [← set_lintegral_condKernel ρ hf hs MeasurableSet.univ]; simp_rw [Measure.restrict_univ]
#align probability_theory.set_lintegral_cond_kernel_univ_right ProbabilityTheory.set_lintegral_condKernel_univ_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variantc58b5a90a271919c6eb0940e62c8ca49a4b8916ee8326841fbcb8628b9ff1754.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba43ee13e0b7da787fe27cb685b7a531403c97ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
