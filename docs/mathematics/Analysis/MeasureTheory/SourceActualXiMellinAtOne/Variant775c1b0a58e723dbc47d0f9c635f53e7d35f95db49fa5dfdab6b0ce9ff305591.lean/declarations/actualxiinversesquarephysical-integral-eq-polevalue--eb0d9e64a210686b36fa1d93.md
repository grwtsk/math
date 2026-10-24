# actualXiInverseSquarePhysical_integral_eq_poleValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2aaf18d2-a96c-debc-a06d-3adcc79a7343",
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
  "slug": "actualxiinversesquarephysical-integral-eq-polevalue--eb0d9e64a210686b36fa1d93",
  "source": {
    "blob": "56b66a899ec08fbbd13e71fae22b8553db9cb12c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 79,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb0d9e64a210686b36fa1d933e635c8b65fb550c64e35e609d3d2799ea5770de",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2aaf18d2-a96c-debc-a06d-3adcc79a7343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–102.

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
    exact_mod_cast (ne_of_gt (show 1 < s from hs))
  have hm := hcast.mul actualXiComplexMellinTailSeven_tendsto_one
  simp only [one_mul] at hm
  have hp := actualXiSevenReturn_tendsto_pole_one.comp hpunct
  have he : (fun s : ℝ => (s : ℂ) * actualXiComplexMellinTailSeven (s : ℂ))
      =ᶠ[𝓝[>] 1] fun s => actualXiSevenReturn (s : ℂ) := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    exact actualXiComplexMellinTailSeven_mul_eq
      (by simpa only [ofReal_re] using (show 1 < s from hs))
  exact tendsto_nhds_unique hm (hp.congr' he.symm)

end
end FormalResearch.RiemannHypothesis.SourceActualXiMellinAtOne
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Variant775c1b0a58e723dbc47d0f9c635f53e7d35f95db49fa5dfdab6b0ce9ff305591.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56b66a899ec08fbbd13e71fae22b8553db9cb12c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
