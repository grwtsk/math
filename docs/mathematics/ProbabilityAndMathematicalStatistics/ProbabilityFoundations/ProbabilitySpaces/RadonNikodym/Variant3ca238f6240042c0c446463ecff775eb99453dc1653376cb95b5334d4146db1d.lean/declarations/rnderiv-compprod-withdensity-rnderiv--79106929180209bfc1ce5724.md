# rnDeriv_compProd_withDensity_rnDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc9c715a-9297-296b-8fd3-464d854debbd",
  "kind": "lemma",
  "lexical_name": "rnDeriv_compProd_withDensity_rnDeriv",
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
  "slug": "rnderiv-compprod-withdensity-rnderiv--79106929180209bfc1ce5724",
  "source": {
    "blob": "cc3f7e000f3f37b6a49cf35971591c7cb796a7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79106929180209bfc1ce572433d58ee814d8738357eb35317a4259b192cf1241",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc9c715a-9297-296b-8fd3-464d854debbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_compProd_withDensity_rnDeriv (μ ν : Measure α) (κ η : Kernel α β)
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] [IsFiniteKernel κ] [IsFiniteKernel η] :
    (ν.withDensity (μ.rnDeriv ν) ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) =ᵐ[ν ⊗ₘ η] (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) := by
  conv_rhs => rw [Measure.haveLebesgueDecomposition_add μ ν]
  rw [Measure.compProd_add_left]
  have h := Measure.rnDeriv_add' (μ.singularPart ν ⊗ₘ κ) (ν.withDensity (μ.rnDeriv ν) ⊗ₘ κ)
    (ν ⊗ₘ η)
  have h2 : (μ.singularPart ν ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) =ᵐ[ν ⊗ₘ η] 0 := by
    refine Measure.rnDeriv_eq_zero_of_mutuallySingular ?_ ?_
    · exact Measure.MutuallySingular.compProd_of_left (μ.mutuallySingular_singularPart _) _ _
    · exact Measure.AbsolutelyContinuous.rfl
  filter_upwards [h, h2] with x hx hx2
  simp [hx, hx2]

/-- The Radon-Nikodym derivative `∂(μ ⊗ₘ κ)/∂(ν ⊗ₘ κ)` (with the same kernel) equals `∂μ/∂ν`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc3f7e000f3f37b6a49cf35971591c7cb796a7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
