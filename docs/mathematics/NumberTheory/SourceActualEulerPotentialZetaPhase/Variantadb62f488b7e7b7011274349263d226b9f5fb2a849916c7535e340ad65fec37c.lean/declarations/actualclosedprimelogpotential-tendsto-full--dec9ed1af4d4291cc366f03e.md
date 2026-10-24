# actualClosedPrimeLogPotential_tendsto_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4671c94-55cf-1fc7-21a1-ff04623e1037",
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
  "slug": "actualclosedprimelogpotential-tendsto-full--dec9ed1af4d4291cc366f03e",
  "source": {
    "blob": "1ae361507bc73af76f011404c0f398be55489db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dec9ed1af4d4291cc366f03e0529415fcf75e7cd132bffa1b29b52baf4ff775d",
  "verification": {
    "reference": "docs/verification/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4671c94-55cf-1fc7-21a1-ff04623e1037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

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

[Verification target and public status](../../../../../verification/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantadb62f488b7e7b7011274349263d226b9f5fb2a849916c7535e340ad65fec37c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ae361507bc73af76f011404c0f398be55489db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
