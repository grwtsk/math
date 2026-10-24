# rnDeriv_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19c002f6-e5af-9099-f71b-48637b905cdf",
  "kind": "lemma",
  "lexical_name": "rnDeriv_map",
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
  "slug": "rnderiv-map--a1b2a6ae769651bd1525493c",
  "source": {
    "blob": "8b3c6a58ba4356f58c0e290feab1bd44ab0995ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 91,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1b2a6ae769651bd1525493ce6ce8999e085fcfba0b6d70ce224dc800a40c9a8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19c002f6-e5af-9099-f71b-48637b905cdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_map [IsFiniteMeasure μ] (hμν : μ ≪ ν)
    {g : 𝓧 → 𝓨} (hg : Measurable g) [hσ : SigmaFinite (ν.map g)] :
    (fun a ↦ (μ.map g).rnDeriv (ν.map g) (g a)) =ᵐ[ν] ν⁻[μ.rnDeriv ν|m𝓨.comap g] := by
  have : SigmaFinite ν := SigmaFinite.of_map _ hg.aemeasurable hσ
  have h_ne_top1 : ∀ᵐ x ∂ν, (μ.map g).rnDeriv (ν.map g) (g x) ≠ ∞ :=
    ae_of_ae_map hg.aemeasurable (Measure.rnDeriv_ne_top (μ.map g) (ν.map g))
  have h_ne_top2 : ∀ᵐ x ∂ν, ν⁻[μ.rnDeriv ν|MeasurableSpace.comap g m𝓨] x ≠ ∞ := by
    refine condLExp_ne_top ?_
    simp [Measure.lintegral_rnDeriv hμν]
  have h_condExp := toReal_condLExp (m𝓨.comap g) (f := μ.rnDeriv ν) (μ := ν) (by fun_prop) ?_
  swap; · simp [Measure.lintegral_rnDeriv hμν]
  filter_upwards [toReal_rnDeriv_map hμν hg, h_condExp, h_ne_top1, h_ne_top2]
    with x hx h_condExp h_ne_top1 h_ne_top2
  rwa [← h_condExp, ENNReal.toReal_eq_toReal_iff' h_ne_top1 h_ne_top2] at hx

/-- The Radon-Nikodym derivative `∂(μ.map g)/∂(ν.map g)` of the pushforward of measures by
a function `g : 𝓧 → 𝓨` evaluated at `g x` is a.e.-equal to the conditional expectation of `∂μ/∂ν`
with respect to the comap by `g` of the sigma-algebra on `𝓨`.

See `rnDeriv_map` for the same statement, but with a.e. equality with respect to the measure `ν`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b3c6a58ba4356f58c0e290feab1bd44ab0995ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
