# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HaarToSphere.Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d379344c6f6d2ee9ea2a1cc6abb9b81e87074b9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d379344c6f6d2ee9ea2a1cc6abb9b81e87074b9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.SphereNormEquiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSphere](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/tosphere--b7baf0879a96d5f7ce0720ce.md) | 51 | `declaration-track:b7baf0879a96d5f7ce0720ce163b27e4e705418f07035b4f6b8139b09993a5cc` |
| 2 | `theorem` | [toSphere_apply_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/tosphere-apply-aux--f9ca6ecd9516150475898cdd.md) | 57 | `result-track:f9ca6ecd9516150475898cdd377e26da2ed78d080b83060e9fb094cc25ed3a61` |
| 3 | `theorem` | [toSphere_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/tosphere-apply--b16cae8b2fbde8b26a102d2d.md) | 65 | `result-track:b16cae8b2fbde8b26a102d2da5cca5c1a28fe5287484a2874faabc04e128f418` |
| 4 | `theorem` | [toSphere_apply_univ'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/tosphere-apply-univ--fb9cad2f6b7762c8c267277a.md) | 72 | `result-track:fb9cad2f6b7762c8c267277adf2aa2b47569ece9f5ea7f8a6d5449feb0bbc6bd` |
| 5 | `theorem` | [toSphere_apply_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/tosphere-apply-univ--e117d28d7fc1c8dac00d2362.md) | 78 | `result-track:e117d28d7fc1c8dac00d23622949c5c4affb214304bb6b6c07cc3e42e2ee157f` |
| 6 | `theorem` | [toSphere_real_apply_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/tosphere-real-apply-univ--5f60faaead56f0403555aaeb.md) | 83 | `result-track:5f60faaead56f0403555aaeba88d3e8b05d12b233b576da7fc566f63f777e9fb` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/instance--da33a43295aa3fcf5e4ec05a.md) | 86 | `declaration-track:da33a43295aa3fcf5e4ec05aa67371ef5529fdb0f59789903b5f4fc9d64382fe` |
| 8 | `def` | [volumeIoiPow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/volumeioipow--2ddb404a880f088913b5d8d9.md) | 93 | `declaration-track:2ddb404a880f088913b5d8d9a8b7f7cde582366bddaf3630c0b6163598db4afd` |
| 9 | `lemma` | [volumeIoiPow_apply_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/volumeioipow-apply-iio--acbd5b8a8d9e6e502fea71aa.md) | 96 | `result-track:acbd5b8a8d9e6e502fea71aa9b9e88fd2379f9e3921d92d586246fb2c8a9b592` |
| 10 | `def` | [finiteSpanningSetsIn_volumeIoiPow_range_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/finitespanningsetsin-volumeioipow-range-iio--ccde86894752eb117b6dab0a.md) | 109 | `declaration-track:ccde86894752eb117b6dab0a911e4bd884ad555acd4ce563c027f4e9e9dbcfb2` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/instance--792ad52a0b9e57fcf8b9f60b.md) | 116 | `declaration-track:792ad52a0b9e57fcf8b9f60b198e4987d676c65301d5eb89b0e289d9fa684c0b` |
| 12 | `theorem` | [measurePreserving_homeomorphUnitSphereProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/measurepreserving-homeomorphunitsphereprod--53c7de8673bcf57af796e3cf.md) | 122 | `result-track:53c7de8673bcf57af796e3cffc3230b57eabb824b2707c53a46f859c3863419a` |
| 13 | `lemma` | [integral_fun_norm_addHaar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HaarToSphere/Varianteb165fc6d41bb31817bb0a0c1456d8ed1100026561ecd4c3889b8e7db184fcbe.lean/declarations/integral-fun-norm-addhaar--18955830cea76911940102d9.md) | 145 | `result-track:18955830cea76911940102d9424b32ed5d4c3ce33f62ad1915e099485620fa8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
