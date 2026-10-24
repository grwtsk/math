# Verification target: GRWTSK.Analysis.MeasureTheory.AEEqOfLIntegral.Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b20fb39e19f7d730f526643e81992c3ffeca9682",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b20fb39e19f7d730f526643e81992c3ffeca9682`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.ENNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_const_le_iff_forall_lt_measure_zero](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/ae-const-le-iff-forall-lt-measure-zero--f9caf26bef6e6d3db0c46451.md) | 38 | `result-track:f9caf26bef6e6d3db0c4645164096fb7b2f62447665ea8bfa25f818f059b0c3b` |
| 2 | `lemma` | [ae_le_const_iff_forall_gt_measure_zero](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/ae-le-const-iff-forall-gt-measure-zero--13ee3cdbd358118405cca284.md) | 72 | `result-track:13ee3cdbd358118405cca2841914e35949158908667de3f82406c8b203a2a042` |
| 3 | `theorem` | [ae_le_of_forall_setLIntegral_le_of_sigmaFinite₀](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/ae-le-of-forall-setlintegral-le-of-sigmafinite--9801d2ed5890581a5131752f.md) | 77 | `result-track:9801d2ed5890581a5131752fdde2073fbab7b1be94e577921c3f44960b0a56db` |
| 4 | `theorem` | [ae_le_of_forall_setLIntegral_le_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/ae-le-of-forall-setlintegral-le-of-sigmafinite--b45fe06e476b78da5d09046a.md) | 128 | `result-track:b45fe06e476b78da5d09046ab5c9b6c1d22206f223ff39c9bca74fee443a6318` |
| 5 | `theorem` | [ae_eq_of_forall_setLIntegral_eq_of_sigmaFinite₀](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/ae-eq-of-forall-setlintegral-eq-of-sigmafinite--84275fd7cc4a7487a12d321d.md) | 133 | `result-track:84275fd7cc4a7487a12d321d4b29924a35f7bc50a9e4f9c6535052714db7d6d2` |
| 6 | `theorem` | [ae_eq_of_forall_setLIntegral_eq_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/ae-eq-of-forall-setlintegral-eq-of-sigmafinite--8ec3268d4df1d2add7b990ec.md) | 142 | `result-track:8ec3268d4df1d2add7b990ec997439002cd317da4fb610b45bd2b63d90e002c6` |
| 7 | `theorem` | [AEMeasurable.ae_eq_of_forall_setLIntegral_eq](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/aemeasurable-ae-eq-of-forall-setlintegral-eq--b9bfe6a4f58487ab97d9d653.md) | 147 | `result-track:b9bfe6a4f58487ab97d9d653b15a0703f83b3b0afd5070533f5feffab8448773` |
| 8 | `theorem` | [lintegral_eq_lintegral_of_isPiSystem](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/lintegral-eq-lintegral-of-ispisystem--f88943e22ef493600ccdf68b.md) | 179 | `result-track:f88943e22ef493600ccdf68bfabbc861104c8826a6bf020a564ad6353ab2cc7a` |
| 9 | `lemma` | [lintegral_eq_lintegral_of_isPiSystem_of_univ_mem](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/lintegral-eq-lintegral-of-ispisystem-of-univ-mem--3a267a225325d3d1d54e48c7.md) | 199 | `result-track:3a267a225325d3d1d54e48c73f4c79f0a5a99391fca3180bf7346b451855fc03` |
| 10 | `lemma` | [ae_eq_of_setLIntegral_prod_eq](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/ae-eq-of-setlintegral-prod-eq--501ad9fcb4122ccade487ff0.md) | 210 | `result-track:501ad9fcb4122ccade487ff0fb9cbc242abe2e218ead140c39ca0ce982fa29b1` |
| 11 | `theorem` | [withDensity_eq_iff_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/withdensity-eq-iff-of-sigmafinite--6f737087158a35378be72a37.md) | 232 | `result-track:6f737087158a35378be72a371fac18aa925e3a3ba7602c583f55ded023b1ff57` |
| 12 | `theorem` | [withDensity_eq_iff](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant03b9d92b720fdc94f3f9fa98e7748a508cd56f23b486dc3acd74a449914cfefd.lean/declarations/withdensity-eq-iff--fc5154b325722d75c5dd91fd.md) | 238 | `result-track:fc5154b325722d75c5dd91fda5e6e9955052d754069291cff33c49dc90b29aa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
