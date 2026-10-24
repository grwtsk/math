# completedZeta_zeros_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:528e405d-d9da-c7b0-4a62-acc19027c1db",
  "kind": "theorem",
  "lexical_name": "completedZeta_zeros_strip",
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
  "slug": "completedzeta-zeros-strip--668b163750553feb234e9b70",
  "source": {
    "blob": "6c97ecfefcde59493ae06ae47b1b352dfb1f5e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 103,
    "path": "GRWTSK/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:668b163750553feb234e9b70403a46366fd89aa8a8da6aa557ad0e948ca2261f",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:528e405d-d9da-c7b0-4a62-acc19027c1db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedZeta_zeros_strip {ρ : ℂ} (h : 0 < ρ.re) (h' : ρ.re < 1) :
    (completedRiemannZeta ρ = 0 ↔ IsNontrivialZero ρ) ∧
    analyticOrderAt completedRiemannZeta ρ = analyticOrderAt riemannZeta ρ := by
  have hρ1 : ρ ≠ 1 := fun e => by simp [e] at h'
  have hΓ : Gammaℝ ρ ≠ 0 := Gammaℝ_ne_zero_of_re_pos h
  have hev := completedZeta_eventuallyEq_mul h
  have hval : completedRiemannZeta ρ = Gammaℝ ρ * riemannZeta ρ := hev.eq_of_nhds
  have hΓan := analyticAt_Gammaℝ h
  have hζan := analyticAt_riemannZeta hρ1
  refine ⟨?_, ?_⟩
  · rw [hval, mul_eq_zero, IsNontrivialZero]
    constructor
    · rintro (hΓ0 | hz)
      · exact absurd hΓ0 hΓ
      · exact ⟨hz, h, h'⟩
    · rintro ⟨hz, -, -⟩
      exact Or.inr hz
  · rw [analyticOrderAt_congr hev]
    have hmul := analyticOrderAt_mul hΓan hζan
    rw [show (Gammaℝ * riemannZeta) = (fun u => Gammaℝ u * riemannZeta u) from rfl] at hmul
    rw [hmul, hΓan.analyticOrderAt_eq_zero.mpr hΓ, zero_add]

end WeilEF
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/XiLogDeriv/Variant8a8b5770939bb4157bf803c1acb289929997cca7557f5cfe125ef05ef2cb17d2.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c97ecfefcde59493ae06ae47b1b352dfb1f5e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
