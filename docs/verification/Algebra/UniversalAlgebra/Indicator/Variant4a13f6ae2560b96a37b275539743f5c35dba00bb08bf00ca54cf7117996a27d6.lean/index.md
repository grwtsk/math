# Verification target: GRWTSK.Algebra.UniversalAlgebra.Indicator.Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1743d6902befca7588a1dfcea417aa814016cb2b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1743d6902befca7588a1dfcea417aa814016cb2b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Synonym` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mulSupport_sup](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulsupport-sup--64ce777f44266c1be7bccbdd.md) | 28 | `result-track:64ce777f44266c1be7bccbdd29e767821698deaaf785db542a3a0e8d1b4128e8` |
| 2 | `lemma` | [mulSupport_inf](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulsupport-inf--e999a9c60a50d15a1055bf12.md) | 33 | `result-track:e999a9c60a50d15a1055bf12e612f2d6bbdddf48915544d51204ecebeb5b6e52` |
| 3 | `lemma` | [mulSupport_max](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulsupport-max--5695e173755617dc39feec1b.md) | 38 | `result-track:5695e173755617dc39feec1b035ff126f66cb20684717bb52468c2d52743f162` |
| 4 | `lemma` | [mulSupport_min](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulsupport-min--5b8a7553f7b62dfbf46479d9.md) | 42 | `result-track:5b8a7553f7b62dfbf46479d9463ae68ba7ad41f249b0edb3906daac74ad89dcc` |
| 5 | `lemma` | [mulSupport_iSup](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulsupport-isup--1c8335efc16ba0f53b29a959.md) | 46 | `result-track:1c8335efc16ba0f53b29a959dfe93c8cb7392e0bd1994aade74069efd545e90c` |
| 6 | `lemma` | [mulSupport_iInf](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulsupport-iinf--16b7ae3a458f1bff51ca72c4.md) | 53 | `result-track:16b7ae3a458f1bff51ca72c45638bc28954f8cb1c3e2db00bb3cca2b02c5ded1` |
| 7 | `lemma` | [mulIndicator_apply_le'](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-apply-le--40560918f8f26e2815890c0a.md) | 64 | `result-track:40560918f8f26e2815890c0aa9b96269dc44ebd2e7201a7b565d2bc5918bfe44` |
| 8 | `lemma` | [mulIndicator_le'](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-le--77e6d62b542f21ab38bce1c6.md) | 71 | `result-track:77e6d62b542f21ab38bce1c6185b248258085e46fe40dd34e8da151a73c020b6` |
| 9 | `lemma` | [le_mulIndicator_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/le-mulindicator-apply--ea3a8d0372adae14eb56f34f.md) | 75 | `result-track:ea3a8d0372adae14eb56f34f8e632affd935ae68a356e59c88a635655ea8c27b` |
| 10 | `lemma` | [le_mulIndicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/le-mulindicator--0e05caaf8ee45793df9a846c.md) | 79 | `result-track:0e05caaf8ee45793df9a846cb9789da5eb9a6fe3f347ba539e49f2bd651a499d` |
| 11 | `lemma` | [one_le_mulIndicator_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/one-le-mulindicator-apply--7db8b360c2003b72a9de0ed9.md) | 88 | `result-track:7db8b360c2003b72a9de0ed9853def6b4c818f2c6fc9fedbf15d4d2897144c79` |
| 12 | `lemma` | [one_le_mulIndicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/one-le-mulindicator--5ca049f37a5313e1b3aa78f3.md) | 92 | `result-track:5ca049f37a5313e1b3aa78f32f0c533461577534fb419b5fb5c79600058cfb7d` |
| 13 | `lemma` | [mulIndicator_apply_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-apply-le-one--9032b7289b14b2bf02e31bec.md) | 96 | `result-track:9032b7289b14b2bf02e31bec907f492c7965098209aa6f7bac1e930542fba63b` |
| 14 | `lemma` | [mulIndicator_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-le-one--48ce8ac4f531348d4b8dd64f.md) | 100 | `result-track:48ce8ac4f531348d4b8dd64fc3217a1880bd164536a911bb80eb9564800329b2` |
| 15 | `lemma` | [mulIndicator_le_mulIndicator'](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-le-mulindicator--e845d386b018275a7f985c64.md) | 104 | `result-track:e845d386b018275a7f985c64077c5a432e4cd5f9b5c6948c6916a4ae35e68379` |
| 16 | `lemma` | [mulIndicator_le_mulIndicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-le-mulindicator--ef7e1b697871977599b3dfb6.md) | 109 | `result-track:ef7e1b697871977599b3dfb6a328712eac1382d7edac22c6d29ca07b76e4f0e3` |
| 17 | `lemma` | [mulIndicator_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-mono--1eb22daf9ad22550a65558bb.md) | 113 | `result-track:1eb22daf9ad22550a65558bb431a96cbdd8d1751956c553a369d50f7a2418e3f` |
| 18 | `lemma` | [mulIndicator_le_mulIndicator_apply_of_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-le-mulindicator-apply-of-subset--106be24bb16ccfe284fac522.md) | 117 | `result-track:106be24bb16ccfe284fac522e855207f7a5d6917ed945a4dabca75565a0e1340` |
| 19 | `lemma` | [mulIndicator_le_mulIndicator_of_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-le-mulindicator-of-subset--fe39a9b2ef8b41d058807a1a.md) | 124 | `result-track:fe39a9b2ef8b41d058807a1a6b6e25c0606ddd136df0b678f8c46422507765a4` |
| 20 | `lemma` | [mulIndicator_le_self'](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-le-self--a6e49dda4c29f381c025844c.md) | 129 | `result-track:a6e49dda4c29f381c025844c59f3a13853fc9e7b31f9eccf0eda670a3961e9e9` |
| 21 | `lemma` | [indicator_le_indicator_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/indicator-le-indicator-nonneg--a619d85e667d6f66a507e748.md) | 137 | `result-track:a619d85e667d6f66a507e74862ec152f5c70028cfd610b4b0cf153b2cc54e163` |
| 22 | `lemma` | [indicator_nonpos_le_indicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/indicator-nonpos-le-indicator--3ba9931116026bdaf9acfa5c.md) | 145 | `result-track:3ba9931116026bdaf9acfa5c9260a7233371eff5ff15e2340f7d9c3a4f928f5b` |
| 23 | `lemma` | [mulIndicator_iUnion_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-iunion-apply--542c42959f37724d03924036.md) | 155 | `result-track:542c42959f37724d03924036787d65c1028c7cc9956f3eb088c440c3b607da6e` |
| 24 | `lemma` | [mulIndicator_iInter_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-iinter-apply--ac4a929877721546c0663636.md) | 170 | `result-track:ac4a929877721546c06636366607aaa7b00743b213336d77bdb5fb2242ea047d` |
| 25 | `lemma` | [iSup_mulIndicator](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/isup-mulindicator--1faefc80a103c776a84e3fa9.md) | 184 | `result-track:1faefc80a103c776a84e3fa9249b0e35e7f66ebd298fb71cfd85e88f1ad629e2` |
| 26 | `lemma` | [mulIndicator_le_self](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-le-self--f57caeb625ab8fefa8e9211a.md) | 207 | `result-track:f57caeb625ab8fefa8e9211add602baa74a4119fd01f462cf65f61b2f126f2b5` |
| 27 | `lemma` | [mulIndicator_apply_le](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-apply-le--3e810f1e6a9e532a906150a8.md) | 211 | `result-track:3e810f1e6a9e532a906150a8a14f3ce37986c2414e179370d2404a5f83c1df7a` |
| 28 | `lemma` | [mulIndicator_le](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mulindicator-le--9cb06a9ab155330561c54cdf.md) | 216 | `result-track:9cb06a9ab155330561c54cdfe23f27b61fee6ae1ce09aa161f458871b8740ecb` |
| 29 | `lemma` | [mabs_mulIndicator_symmDiff](../../../../../mathematics/Algebra/UniversalAlgebra/Indicator/Variant4a13f6ae2560b96a37b275539743f5c35dba00bb08bf00ca54cf7117996a27d6.lean/declarations/mabs-mulindicator-symmdiff--58b11e9478f033f5cf12fc51.md) | 228 | `result-track:58b11e9478f033f5cf12fc5130d40464fa0b29bc0245fbd65a773f10882c3c13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
