# actualRelativePsiTimeError_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e5f227e-a036-3add-2e9b-5bffae7aebb9",
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
  "slug": "actualrelativepsitimeerror-integrableon--3f3c53798645fcd844d0d098",
  "source": {
    "blob": "08a14b59b2272f9ec5821c910ed191c63dfc3392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 99,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5e521aa25cbc272eafc1deb6a8b1ec5eaee12f770df9eda44f7f9800dc52df3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f3c53798645fcd844d0d098bd9ea5c4b19f71054e4d63211381c6b14b0e00ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5e521aa25cbc272eafc1deb6a8b1ec5eaee12f770df9eda44f7f9800dc52df3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e5f227e-a036-3add-2e9b-5bffae7aebb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTimeError_integrableOn :
    IntegrableOn actualRelativePsiTimeError (Ici 0) := by
  have hloc : LocallyIntegrableOn actualRelativePsiTimeError (Ici 0) := by
    intro x hx
    refine ⟨Icc 0 (x + 1), ?_, ?_⟩
    · rw [Icc_eq_Ici_inter_Iic]
      exact inter_mem self_mem_nhdsWithin
        (mem_nhdsWithin_of_mem_nhds (Iic_mem_nhds (by linarith)))
    · exact (intervalIntegrable_iff_integrableOn_Icc_of_le (by linarith)).mp
        (actualRelativePsiTimeError_intervalIntegrable (by linarith))
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  have hex : IntegrableOn (fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10))) (Ioi 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      Real.integrableOn_rpow_mul_exp_neg_mul_rpow (by norm_num : (-1 : ℝ) < 0)
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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5e521aa25cbc272eafc1deb6a8b1ec5eaee12f770df9eda44f7f9800dc52df3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5e521aa25cbc272eafc1deb6a8b1ec5eaee12f770df9eda44f7f9800dc52df3f.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08a14b59b2272f9ec5821c910ed191c63dfc3392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
