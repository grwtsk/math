# actualXiInverseSquarePhysical_integral_eq_poleValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cc934c5-f31e-cc0b-08bd-43b0d963979e",
  "kind": "theorem",
  "lexical_name": "actualXiInverseSquarePhysical_integral_eq_poleValue",
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
  "slug": "actualxiinversesquarephysical-integral-eq-polevalue--9b86896c70c5c32c918f2a77",
  "source": {
    "blob": "0d3bec4a9b271850c8d4aec526a19c53a508cb79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 78,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant6fedd7176eac76663f7f7eb149fbdc3ffbff53586f435a8ddc3c562879f0ab5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b86896c70c5c32c918f2a772d41c16cac89be9e08fe4f9b1df2cedcc623b029",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant6fedd7176eac76663f7f7eb149fbdc3ffbff53586f435a8ddc3c562879f0ab5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cc934c5-f31e-cc0b-08bd-43b0d963979e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiInverseSquarePhysical_integral_eq_poleValue :
    ((∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2 : ℝ) : ℂ) =
      actualXiSevenPoleValue := by
  have hcast : Tendsto (fun s : ℝ => (s : ℂ)) (𝓝[>] 1) (𝓝 (1 : ℂ)) := by
    simpa only [ofReal_one] using
      (continuous_ofReal.continuousAt.tendsto.mono_left
        (nhdsWithin_le_nhds : 𝓝[>] (1 : ℝ) ≤ 𝓝 1))
  have hpunct : Tendsto (fun s : ℝ => (s : ℂ)) (𝓝[>] 1) (𝓝[≠] (1 : ℂ)) := by
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ hcast
    filter_upwards [self_mem_nhdsWithin] with s hs
    change (s : ℂ) ≠ 1
    exact_mod_cast (ne_of_gt hs)
  have hm := hcast.mul actualXiComplexMellinTailSeven_tendsto_one
  simp only [one_mul] at hm
  have hp := actualXiSevenReturn_tendsto_pole_one.comp hpunct
  have he : (fun s : ℝ => (s : ℂ) * actualXiComplexMellinTailSeven (s : ℂ))
      =ᶠ[𝓝[>] 1] fun s => actualXiSevenReturn (s : ℂ) := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    exact actualXiComplexMellinTailSeven_mul_eq (by simpa only [ofReal_re] using hs)
  exact tendsto_nhds_unique hm (hp.congr' he.symm)

end
end FormalResearch.RiemannHypothesis.SourceActualXiMellinAtOne
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant6fedd7176eac76663f7f7eb149fbdc3ffbff53586f435a8ddc3c562879f0ab5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant6fedd7176eac76663f7f7eb149fbdc3ffbff53586f435a8ddc3c562879f0ab5b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d3bec4a9b271850c8d4aec526a19c53a508cb79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
