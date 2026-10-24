# LSeam_finite_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f9afa27-cd02-2d2c-ad0c-6ae0f9ca5de7",
  "kind": "theorem",
  "lexical_name": "LSeam_finite_window",
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
  "slug": "lseam-finite-window--619e37cfd497e2574352c877",
  "source": {
    "blob": "bc0a5b4c084aed86c77f00c6cc834e11e454a187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 349,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:619e37cfd497e2574352c8777a2e22a0efc07e9778c8d4ff0d604867205c0d7f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f9afa27-cd02-2d2c-ad0c-6ae0f9ca5de7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LSeam_finite_window (hq : 1 < q) (hprim : χ.IsPrimitive) (T₁ T₂ : ℝ) :
    ({ρ | IsNontrivialZeroL χ ρ} ∩ {ρ | T₁ < ρ.im ∧ ρ.im ≤ T₂}).Finite := by
  have hχ1 := ne_one_of_primitive hq hprim
  have hloc : ∀ z : ℂ, ∃ t ∈ 𝓝 z, (t ∩ {ρ : ℂ | χ.LFunction ρ = 0}).Finite := by
    intro z
    rcases (LFunction_analyticOnNhd hχ1).eqOn_zero_or_eventually_ne_zero_of_preconnected
      isPreconnected_univ with hzero | hcod
    · exact absurd (hzero (mem_univ (2 : ℂ))) (LFunction_two_ne_zero hχ1)
    · rw [Filter.Eventually, codiscreteWithin_iff_locallyFiniteComplementWithin] at hcod
      obtain ⟨t, ht, hfin⟩ := hcod z (mem_univ z)
      refine ⟨t, ht, hfin.subset ?_⟩
      rintro s ⟨hst, hs0⟩
      exact ⟨hst, mem_univ s, by simpa using hs0⟩
  set K : Set ℂ := (Icc 0 1) ×ℂ (Icc T₁ T₂) with hK
  have hKc : IsCompact K := isCompact_Icc.reProdIm isCompact_Icc
  choose t ht hfin using hloc
  obtain ⟨I, -, hcover⟩ := hKc.elim_nhds_subcover t (fun z _ => ht z)
  have hfinU : (⋃ z ∈ I, (t z ∩ {ρ : ℂ | χ.LFunction ρ = 0})).Finite :=
    I.finite_toSet.biUnion fun z _ => hfin z
  refine hfinU.subset ?_
  rintro ρ ⟨hρ, hT₁, hT₂⟩
  have hρK : ρ ∈ K := ⟨⟨hρ.2.1.le, hρ.2.2.le⟩, ⟨hT₁.le, hT₂⟩⟩
  obtain ⟨z, hzI, hρz⟩ := mem_iUnion₂.mp (hcover hρK)
  exact mem_iUnion₂.mpr ⟨z, hzI, hρz, hρ.1⟩

/-- **The seam, discharged**: a primitive χ mod q > 1 satisfies all four LSeam obligations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc0a5b4c084aed86c77f00c6cc834e11e454a187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
