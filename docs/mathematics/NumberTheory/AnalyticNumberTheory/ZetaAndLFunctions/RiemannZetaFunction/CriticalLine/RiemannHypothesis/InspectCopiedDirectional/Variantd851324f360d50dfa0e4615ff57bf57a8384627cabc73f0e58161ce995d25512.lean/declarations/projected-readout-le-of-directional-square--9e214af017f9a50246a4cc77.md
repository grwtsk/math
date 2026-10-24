# projected_readout_le_of_directional_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0924e80-21f4-d974-8f7d-c313ac043c13",
  "kind": "theorem",
  "lexical_name": "projected_readout_le_of_directional_square",
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
  "slug": "projected-readout-le-of-directional-square--9e214af017f9a50246a4cc77",
  "source": {
    "blob": "25201fdd0601fa751b7561ebe8d502147575cca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variantd851324f360d50dfa0e4615ff57bf57a8384627cabc73f0e58161ce995d25512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e214af017f9a50246a4cc77dfd2159b888d52607b055543126f3a57342e5c82",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variantd851324f360d50dfa0e4615ff57bf57a8384627cabc73f0e58161ce995d25512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0924e80-21f4-d974-8f7d-c313ac043c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projected_readout_le_of_directional_square [CompleteSpace H] (hV : Monotone V)
    (K : H →L[ℂ] H) (hK : IsSelfAdjoint K) (q : H) (n : ℕ) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n, combinedDirectionalPrice V K q j ^ 2) ≤ B) :
    quadraticReadout K (projectedState V q n) -
      quadraticReadout K (projectedState V q 0) ≤ ‖q‖ * Real.sqrt B := by
  rw [projected_readout_combined_telescope V hV K hK q n]
  have h := finite_real_inner_sum_le_of_directional_square_bounds ℂ (Finset.range n)
    (stateIncrement (projectedState V q)) (combinedProjectionRow V K q)
    (‖q‖ ^ 2) B (projected_increment_energy_le V hV q n) hB
  simpa only [Real.sqrt_sq (norm_nonneg _), RCLike.re_eq_complex_re] using h

/-- Zero initial fit and terminal source membership are required for reconstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variantd851324f360d50dfa0e4615ff57bf57a8384627cabc73f0e58161ce995d25512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InspectCopiedDirectional/Variantd851324f360d50dfa0e4615ff57bf57a8384627cabc73f0e58161ce995d25512.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25201fdd0601fa751b7561ebe8d502147575cca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
