# Verification target: GRWTSK.Analysis.MeasureTheory.Lemmas.Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb029669c12172c02376eb426ab76f533d070dfa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb029669c12172c02376eb426ab76f533d070dfa`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.BoundedLinearMaps` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [aestronglyMeasurable_dirac](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/declarations/aestronglymeasurable-dirac--c36ff54d7c44aa105d923081.md) | 31 | `result-track:c36ff54d7c44aa105d92308169df5db130dd034232e629e5ddb312f0b443a210` |
| 2 | `theorem` | [MeasureTheory.AEStronglyMeasurable.comp_measurePreserving](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/declarations/measuretheory-aestronglymeasurable-comp-measurepreserving--e11821e6fd7fa26c9831ff7a.md) | 35 | `result-track:e11821e6fd7fa26c9831ff7abdbd1756e2a28dd52998553b1d317c1bd83f0240` |
| 3 | `theorem` | [MeasureTheory.MeasurePreserving.aestronglyMeasurable_comp_iff](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/declarations/measuretheory-measurepreserving-aestronglymeasurable-comp-iff--fe92b3a09240eb242ade722f.md) | 41 | `result-track:fe92b3a09240eb242ade722f39f8fced3b11a45d979d8425ae72b60f6d860eed` |
| 4 | `theorem` | [aestronglyMeasurable_smul_const_iff](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/declarations/aestronglymeasurable-smul-const-iff--178d8419b1d0f8d7499d8dec.md) | 52 | `result-track:178d8419b1d0f8d7499d8decccc9c55c894fc88d01dc3ecbc49baa3cfc0f3dbb` |
| 5 | `theorem` | [StronglyMeasurable.apply_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/declarations/stronglymeasurable-apply-continuouslinearmap--ca1438d3737658d312ba8291.md) | 65 | `result-track:ca1438d3737658d312ba82916956ad0155c6d269cecebf84b03e4265150c2d94` |
| 6 | `theorem` | [MeasureTheory.AEStronglyMeasurable.apply_continuousLinearMap](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/declarations/measuretheory-aestronglymeasurable-apply-continuouslinearmap--135dd2bdd1da710f5df6ed40.md) | 71 | `result-track:135dd2bdd1da710f5df6ed40b1391fc330f13479703342b6481e35ec0402ea23` |
| 7 | `theorem` | [ContinuousLinearMap.aestronglyMeasurable_comp₂](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/declarations/continuouslinearmap-aestronglymeasurable-comp--e351b131c2d946b2123d7aa2.md) | 76 | `result-track:e351b131c2d946b2123d7aa298d593b3a30a4ca71816f5bef873028039a716a1` |
| 8 | `theorem` | [aestronglyMeasurable_withDensity_iff](../../../../../mathematics/Analysis/MeasureTheory/Lemmas/Variantd65cd9adb7a8c80cec0ce88d21f1ab1ee641129f42143191979f493416abe9af.lean/declarations/aestronglymeasurable-withdensity-iff--848f5a550901f0741fdb75bb.md) | 83 | `result-track:848f5a550901f0741fdb75bb2b2702577476ed87ad34968ac88f7d4239f215cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
