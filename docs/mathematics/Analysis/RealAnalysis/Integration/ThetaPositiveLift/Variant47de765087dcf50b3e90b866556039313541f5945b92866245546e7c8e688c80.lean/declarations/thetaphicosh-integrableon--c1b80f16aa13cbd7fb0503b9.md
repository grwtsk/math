# thetaPhiCosh_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7f8ff40-2b86-e6bd-6833-9d8bf579c0ce",
  "kind": "theorem",
  "lexical_name": "thetaPhiCosh_integrableOn",
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
  "slug": "thetaphicosh-integrableon--c1b80f16aa13cbd7fb0503b9",
  "source": {
    "blob": "4c4da0fcdb5a2deece65a97f5222ba091c28d126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1b80f16aa13cbd7fb0503b9456ff88e15770a98a866ec2dccaefd5c70039543",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7f8ff40-2b86-e6bd-6833-9d8bf579c0ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiCosh_integrableOn (u : ℂ) :
    IntegrableOn (thetaPhiCosh u) (Ioi (0 : ℝ)) := by
  let T : ℝ := thetaPhiCoshThreshold u
  have hTpos : 0 < T := thetaPhiCoshThreshold_positive u
  have hinitial : IntegrableOn (thetaPhiCosh u) (Ioc (0 : ℝ) T) := by
    rw [← intervalIntegrable_iff_integrableOn_Ioc_of_le hTpos.le]
    exact Continuous.intervalIntegrable (continuous_thetaPhiCosh u) _ _
  have hbase :
      IntegrableOn (fun t : ℝ => Real.exp ((-1 : ℝ) * t))
        (Ioi T) :=
    integrableOn_exp_mul_Ioi (by norm_num) T
  have hmajor :
      IntegrableOn
        (fun t : ℝ => thetaPhiDecayConstant * Real.exp (-t))
        (Ioi T) := by
    unfold IntegrableOn at hbase ⊢
    have h := hbase.const_mul thetaPhiDecayConstant
    simpa using h
  have htail : IntegrableOn (thetaPhiCosh u) (Ioi T) := by
    unfold IntegrableOn at hmajor ⊢
    refine Integrable.mono' hmajor
      (continuous_thetaPhiCosh u).aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact thetaPhiCosh_norm_le_tail u (le_of_lt ht)
  have hunion :
      IntegrableOn (thetaPhiCosh u) (Ioc (0 : ℝ) T ∪ Ioi T) :=
    hinitial.union htail
  have hsets : Ioc (0 : ℝ) T ∪ Ioi T = Ioi (0 : ℝ) := by
    ext t
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (⟨ht0, _⟩ | htT)
      · exact ht0
      · exact hTpos.trans htT
    · intro ht0
      by_cases htT : t ≤ T
      · exact Or.inl ⟨ht0, htT⟩
      · exact Or.inr (lt_of_not_ge htT)
  rw [hsets] at hunion
  exact hunion

/-- The Mellin-side `A cosh` integrand is integrable; this is the packaged
integrability statement implicit in the earlier exponential recombination. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c4da0fcdb5a2deece65a97f5222ba091c28d126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
