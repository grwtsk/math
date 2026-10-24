# actualRelativePsiTimeError_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7f0be55-d910-b645-9d0c-40ecbff92f73",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiTimeError_integrableOn",
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
  "slug": "actualrelativepsitimeerror-integrableon--6824f75ef09fdc3288dc6bea",
  "source": {
    "blob": "dc1e75c72d9357f6c25c7afae988bce9da4bd2dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiPntTimeDecay/Variantc382ee3805fc8eb410c18c04f0077326948cd64cc707132671f562586f8d6ecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6824f75ef09fdc3288dc6beac46e6a10f0b682a5034a69d9e06ee2d94a7b685c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiPntTimeDecay/Variantc382ee3805fc8eb410c18c04f0077326948cd64cc707132671f562586f8d6ecf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7f0be55-d910-b645-9d0c-40ecbff92f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTimeError_integrableOn :
    IntegrableOn actualRelativePsiTimeError (Ici 0) := by
  have hloc : LocallyIntegrableOn actualRelativePsiTimeError (Ici 0) := by
    intro x hx
    have hx0 : 0 ≤ x := hx
    refine ⟨Icc 0 (x + 1), ?_, ?_⟩
    · change Ici 0 ∩ Iic (x + 1) ∈ nhdsWithin x (Ici 0)
      exact inter_mem self_mem_nhdsWithin
        (mem_nhdsWithin_of_mem_nhds (Iic_mem_nhds (by linarith)))
    · exact (intervalIntegrable_iff_integrableOn_Icc_of_le (by linarith)).mp
        (actualRelativePsiTimeError_intervalIntegrable (by linarith))
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  have hex : IntegrableOn (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) (Ioi 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      integrableOn_rpow_mul_exp_neg_mul_rpow (by norm_num : (-1 : ℝ) < 0)
        (by norm_num : (0 : ℝ) < 1 / 10) hc
  have hexTop : IntegrableAtFilter
      (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) atTop volume :=
    ⟨Ioi 0, Ioi_mem_atTop 0, hex⟩
  exact hloc.integrableOn_of_isBigO_atTop hp hexTop

end
end FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiPntTimeDecay/Variantc382ee3805fc8eb410c18c04f0077326948cd64cc707132671f562586f8d6ecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiPntTimeDecay/Variantc382ee3805fc8eb410c18c04f0077326948cd64cc707132671f562586f8d6ecf.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1e75c72d9357f6c25c7afae988bce9da4bd2dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
