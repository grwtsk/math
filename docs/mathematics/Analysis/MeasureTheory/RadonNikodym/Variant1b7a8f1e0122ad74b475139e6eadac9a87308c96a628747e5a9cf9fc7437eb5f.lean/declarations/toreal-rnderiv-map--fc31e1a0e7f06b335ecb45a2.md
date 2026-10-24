# toReal_rnDeriv_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d177835c8606c4b74cc394f2df9080d4abe83cfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85490bb2-ed3e-469e-c952-96a08c5f8b88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0d15188-45d5-2311-3b74-c499bae7fbde",
  "kind": "lemma",
  "lexical_name": "toReal_rnDeriv_map",
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
  "slug": "toreal-rnderiv-map--fc31e1a0e7f06b335ecb45a2",
  "source": {
    "blob": "d177835c8606c4b74cc394f2df9080d4abe83cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 52,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc31e1a0e7f06b335ecb45a2a88c3e6e8436b3168b0e024d316faf60ef1b0a1b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variant1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0d15188-45d5-2311-3b74-c499bae7fbde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toReal_rnDeriv_map [IsFiniteMeasure μ] (hμν : μ ≪ ν)
    {g : 𝓧 → 𝓨} (hg : Measurable g) [hσ : SigmaFinite (ν.map g)] :
    (fun a ↦ ((μ.map g).rnDeriv (ν.map g) (g a)).toReal) =ᵐ[ν]
      ν[(fun a ↦ (μ.rnDeriv ν a).toReal) | m𝓨.comap g] := by
  have : SigmaFinite (ν.trim hg.comap_le) := by
    rw [← map_trim_comap hg] at hσ
    refine SigmaFinite.of_map (ν.trim hg.comap_le) ?_ hσ
    refine Measurable.aemeasurable ?_
    exact measurable_iff_comap_le.mpr le_rfl
  have : SigmaFinite ν := SigmaFinite.of_map _ hg.aemeasurable hσ
  refine ae_eq_condExp_of_forall_setIntegral_eq _ (by fun_prop) ?_ ?_ ?_
  · rintro _ ⟨t, _, rfl⟩ _
    exact Integrable.integrableOn (Measure.integrable_toReal_rnDeriv.comp_measurable hg)
  · rintro _ ⟨t, ht, rfl⟩ _
    calc ∫ x in g ⁻¹' t, ((μ.map g).rnDeriv (ν.map g) (g x)).toReal ∂ν
    _ = ∫ y in t, ((μ.map g).rnDeriv (ν.map g) y).toReal ∂(ν.map g) := by
      rw [setIntegral_map ht _ hg.aemeasurable]
      exact Measurable.aestronglyMeasurable (by fun_prop)
    _ = ∫ x in g ⁻¹' t, (μ.rnDeriv ν x).toReal ∂ν := by
      rw [Measure.setIntegral_toReal_rnDeriv (hμν.map hg),
        Measure.setIntegral_toReal_rnDeriv hμν, measureReal_def, Measure.map_apply hg ht,
        measureReal_def]
  · refine (Measurable.ennreal_toReal fun s hs ↦ ?_).aestronglyMeasurable
    exact ⟨_, Measure.measurable_rnDeriv _ _ hs, rfl⟩

/-- The Radon-Nikodym derivative `∂(μ.map g)/∂(ν.map g)` of the pushforward of measures by
a function `g : 𝓧 → 𝓨` evaluated at `g x` is a.e.-equal to the conditional expectation of `∂μ/∂ν`
with respect to the comap by `g` of the sigma-algebra on `𝓨`.

See `rnDeriv_map_ae_eq_trim` for the same statement, but with a.e. equality with respect to
the trimmed measure `ν.trim hg.comap_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variant1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d177835c8606c4b74cc394f2df9080d4abe83cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
