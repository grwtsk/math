# Verification target: GRWTSK.Analysis.MeasureTheory.AEEqOfLIntegral.Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6934d8b853b8fed6d63dcc9149696c84e9681bd7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6934d8b853b8fed6d63dcc9149696c84e9681bd7`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.ENNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_const_le_iff_forall_lt_measure_zero](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/ae-const-le-iff-forall-lt-measure-zero--05c1655d2dbdcebed00ea71c.md) | 46 | `result-track:05c1655d2dbdcebed00ea71cc64c071bd2fa5f59dcab868a59b010283ac3c45e` |
| 2 | `lemma` | [ae_le_const_iff_forall_gt_measure_zero](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/ae-le-const-iff-forall-gt-measure-zero--bc56b7ed17d18fe979dffe9f.md) | 80 | `result-track:bc56b7ed17d18fe979dffe9f5498a32330c3829ffb305e8f2d779eb5cdd5e7e4` |
| 3 | `theorem` | [ae_le_of_forall_setLIntegral_le_of_sigmaFinite₀](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/ae-le-of-forall-setlintegral-le-of-sigmafinite--1b5e8e39715f5e5070112e41.md) | 85 | `result-track:1b5e8e39715f5e5070112e41fb051cdb344cadcdbee88dd94ad15e425f4b274d` |
| 4 | `theorem` | [ae_le_of_forall_setLIntegral_le_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/ae-le-of-forall-setlintegral-le-of-sigmafinite--e7389a09b3d09c1ddaa97313.md) | 136 | `result-track:e7389a09b3d09c1ddaa973138be72c66833327020164d9f8962231a41302b78f` |
| 5 | `theorem` | [ae_eq_of_forall_setLIntegral_eq_of_sigmaFinite₀](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/ae-eq-of-forall-setlintegral-eq-of-sigmafinite--f8c51698f05ecbe457d7039e.md) | 141 | `result-track:f8c51698f05ecbe457d7039ec4c859173b0363e49bbd494456e00cbe59e4f0e4` |
| 6 | `theorem` | [ae_eq_of_forall_setLIntegral_eq_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/ae-eq-of-forall-setlintegral-eq-of-sigmafinite--eb7361258f395dfa4e44451f.md) | 150 | `result-track:eb7361258f395dfa4e44451fa93dfaaa832a7720ec334475514b31bcf0ec69c7` |
| 7 | `theorem` | [AEMeasurable.ae_eq_of_forall_setLIntegral_eq](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/aemeasurable-ae-eq-of-forall-setlintegral-eq--95f730aaafa9ec15e8863b92.md) | 155 | `result-track:95f730aaafa9ec15e8863b92c6c0f5050abbcd781c9b57e39ede24961be506cd` |
| 8 | `theorem` | [lintegral_eq_lintegral_of_isPiSystem](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/lintegral-eq-lintegral-of-ispisystem--7364597d457c32f538659ce1.md) | 187 | `result-track:7364597d457c32f538659ce1a57d48ff572337ca385f2a3bb1d0ab7207d4d6a0` |
| 9 | `lemma` | [lintegral_eq_lintegral_of_isPiSystem_of_univ_mem](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/lintegral-eq-lintegral-of-ispisystem-of-univ-mem--ea855921192127329b8304f5.md) | 207 | `result-track:ea855921192127329b8304f5e318de11dde15f4ae44c39fb4641a8dbf3197fd6` |
| 10 | `lemma` | [ae_eq_of_setLIntegral_prod_eq](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/ae-eq-of-setlintegral-prod-eq--a8b11139e5783f042ed155ce.md) | 218 | `result-track:a8b11139e5783f042ed155ce4aafe2286d12a018e5f3ac82a096b56f297c1f53` |
| 11 | `theorem` | [withDensity_eq_iff_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/withdensity-eq-iff-of-sigmafinite--31c610e7e6d54689ab6ff6fe.md) | 240 | `result-track:31c610e7e6d54689ab6ff6fef5138ea8179ce454e38b7ecd51d88661d4f75300` |
| 12 | `theorem` | [withDensity_eq_iff](../../../../../mathematics/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/declarations/withdensity-eq-iff--1cd8e6c97f1147c8f5d5f77b.md) | 246 | `result-track:1cd8e6c97f1147c8f5d5f77b16f25b5387b857a92c41caa58f2a1c22ec1aa2a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
