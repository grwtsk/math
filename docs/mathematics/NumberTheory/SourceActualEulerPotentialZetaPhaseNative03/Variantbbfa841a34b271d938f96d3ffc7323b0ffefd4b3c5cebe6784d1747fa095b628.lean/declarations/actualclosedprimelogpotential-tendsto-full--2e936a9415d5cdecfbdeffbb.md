# actualClosedPrimeLogPotential_tendsto_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:133c6122-cfbc-0060-d99f-a8634bff43ca",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeLogPotential_tendsto_full",
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
  "slug": "actualclosedprimelogpotential-tendsto-full--2e936a9415d5cdecfbdeffbb",
  "source": {
    "blob": "f97c0db67477206f236b65fec11bbf63761e31b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e936a9415d5cdecfbdeffbba6de3b6b01ea90cb7e6b77299988bd31998ad2ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:133c6122-cfbc-0060-d99f-a8634bff43ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeLogPotential_tendsto_full (s : ℂ) (hs : 1 < s.re) :
    Tendsto (fun A : ℝ => actualClosedPrimeLogPotential A s) atTop
      (𝓝 (actualFullPrimeLogPotential s)) := by
  have h0 : LSeriesSummable coeff s := actualFullPrimeLogPotential_summable s hs
  have h := h0.hasSum.tendsto_sum_nat
  have he : Tendsto (fun A : ℝ => Real.exp (2*A)) atTop atTop :=
    Real.tendsto_exp_atTop.comp (tendsto_id.const_mul_atTop (by norm_num : 0 < (2:ℝ)))
  have hn : Tendsto (fun A : ℝ => ⌊Real.exp (2*A)⌋₊+1) atTop atTop :=
    (tendsto_add_atTop_nat 1).comp (tendsto_nat_floor_atTop.comp he)
  convert! h.comp hn using 1
  · funext A
    simp only [actualClosedPrimeLogPotential, term_eq_exp, coeff, Function.comp_def]

/-- Genuine full Euler potential negative real phase at this fixed right-line point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative03/Variantbbfa841a34b271d938f96d3ffc7323b0ffefd4b3c5cebe6784d1747fa095b628.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f97c0db67477206f236b65fec11bbf63761e31b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
