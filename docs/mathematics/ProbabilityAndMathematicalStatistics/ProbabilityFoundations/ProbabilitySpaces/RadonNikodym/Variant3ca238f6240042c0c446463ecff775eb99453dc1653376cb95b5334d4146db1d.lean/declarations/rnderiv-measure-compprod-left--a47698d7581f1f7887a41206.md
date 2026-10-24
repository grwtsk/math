# rnDeriv_measure_compProd_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:934f671a-52f5-ea76-cf5c-f1137c40b23a",
  "kind": "lemma",
  "lexical_name": "rnDeriv_measure_compProd_left",
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
  "slug": "rnderiv-measure-compprod-left--a47698d7581f1f7887a41206",
  "source": {
    "blob": "cc3f7e000f3f37b6a49cf35971591c7cb796a7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 104,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a47698d7581f1f7887a412065b45786f4a3efc209105ab589890880a1c74a19e",
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

Occurrence: `result:934f671a-52f5-ea76-cf5c-f1137c40b23a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_measure_compProd_left (μ ν : Measure α) (κ : Kernel α β)
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] [IsFiniteKernel κ] :
    (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ κ) =ᵐ[ν ⊗ₘ κ] fun p ↦ (μ.rnDeriv ν) p.1 := by
  calc (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ κ)
  _ =ᵐ[ν ⊗ₘ κ] (ν.withDensity (μ.rnDeriv ν) ⊗ₘ κ).rnDeriv (ν ⊗ₘ κ) :=
    (rnDeriv_compProd_withDensity_rnDeriv μ ν κ κ).symm
  _ =ᵐ[ν ⊗ₘ κ] (fun p ↦ (ν.withDensity (μ.rnDeriv ν)).rnDeriv ν p.1) :=
    rnDeriv_measure_compProd_left_of_ac
      (MeasureTheory.withDensity_absolutelyContinuous ν (μ.rnDeriv ν)) κ
  _ =ᵐ[ν ⊗ₘ κ] fun p ↦ μ.rnDeriv ν p.1 :=
    Measure.ae_eq_compProd_of_ae_eq_fst _ (by fun_prop) (by fun_prop)
      (Measure.rnDeriv_withDensity ν (by fun_prop))

/-- The Radon-Nikodym derivative `∂(μ ⊗ₘ κ)/∂(ν ⊗ₘ η)` equals the product of `∂μ/∂ν` and
`∂(μ ⊗ₘ κ)/∂(μ ⊗ₘ η)`.

See `rnDeriv_measure_compProd` for a version that replaces `∂(μ ⊗ₘ κ)/∂(μ ⊗ₘ η)` by `∂κ/∂η`
and does not require the absolute continuity hypothesis, assuming that `α` is countable or `β` is
countably generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant3ca238f6240042c0c446463ecff775eb99453dc1653376cb95b5334d4146db1d.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc3f7e000f3f37b6a49cf35971591c7cb796a7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
