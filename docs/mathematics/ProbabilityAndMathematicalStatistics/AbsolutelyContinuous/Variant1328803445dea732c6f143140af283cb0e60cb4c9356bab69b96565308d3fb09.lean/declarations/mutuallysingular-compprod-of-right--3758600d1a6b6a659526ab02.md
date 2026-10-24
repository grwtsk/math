# MutuallySingular.compProd_of_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24e41a23-2ecd-b261-ff34-996bd7273d18",
  "kind": "lemma",
  "lexical_name": "MutuallySingular.compProd_of_right",
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
  "slug": "mutuallysingular-compprod-of-right--3758600d1a6b6a659526ab02",
  "source": {
    "blob": "b9a94bff461d59a822153daad428e27f06c92d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3758600d1a6b6a659526ab02da9b4c1f105826999a1452cd2802ae0c4f6f7851",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24e41a23-2ecd-b261-ff34-996bd7273d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MutuallySingular.compProd_of_right (μ ν : Measure α) (hκη : ∀ᵐ a ∂μ, κ a ⟂ₘ η a) :
    μ ⊗ₘ κ ⟂ₘ ν ⊗ₘ η := by
  by_cases hμ : SFinite μ
  swap; · rw [compProd_of_not_sfinite _ _ hμ]; simp
  by_cases hν : SFinite ν
  swap; · rw [compProd_of_not_sfinite _ _ hν]; simp
  let s := κ.mutuallySingularSet η
  have hs : MeasurableSet s := Kernel.measurableSet_mutuallySingularSet κ η
  symm
  refine ⟨s, hs, ?_⟩
  rw [compProd_apply hs, compProd_apply hs.compl]
  have h_eq a : Prod.mk a ⁻¹' s = Kernel.mutuallySingularSetSlice κ η a := rfl
  have h1 a : η a (Prod.mk a ⁻¹' s) = 0 := by rw [h_eq, Kernel.measure_mutuallySingularSetSlice]
  have h2 : ∀ᵐ a ∂μ, κ a (Prod.mk a ⁻¹' s)ᶜ = 0 := by
    filter_upwards [hκη] with a ha
    rwa [h_eq, ← Kernel.withDensity_rnDeriv_eq_zero_iff_measure_eq_zero κ η a,
      Kernel.withDensity_rnDeriv_eq_zero_iff_mutuallySingular]
  simp [h1, lintegral_congr_ae h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/AbsolutelyContinuous/Variant1328803445dea732c6f143140af283cb0e60cb4c9356bab69b96565308d3fb09.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a94bff461d59a822153daad428e27f06c92d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
