# Verification target: GRWTSK.Algebra.CommutativeAlgebra.WeightedHomogeneous.Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbbe77a7227db32dce9b6c71a5dce74b27b3ebbc",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbbe77a7227db32dce9b6c71a5dce74b27b3ebbc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Variables` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedDegree'](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weighteddegree--637087e17445600d02161922.md) | 73 | `declaration-track:637087e17445600d02161922aa574df5b9c3c8f61477f9d30c87e41b7718e5fc` |
| 2 | `def` | [weightedTotalDegree'](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedtotaldegree--ed16c452ba884b451e8c6596.md) | 82 | `declaration-track:ed16c452ba884b451e8c65960c6fc68a1c2f5dbba383ea173ed127bc6714e4a0` |
| 3 | `theorem` | [weightedTotalDegree'_eq_bot_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedtotaldegree-eq-bot-iff--f535b19a837255bbcdc9fa52.md) | 87 | `result-track:f535b19a837255bbcdc9fa52b917914a03ece645c4c3ba639b0128504dba78e9` |
| 4 | `theorem` | [weightedTotalDegree'_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedtotaldegree-zero--09e220c5f61c704099b28edd.md) | 95 | `result-track:09e220c5f61c704099b28edd5a1d6f49bdc1d3f0c81437062a60029a71f0b4f1` |
| 5 | `def` | [weightedTotalDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedtotaldegree--67382d7aecea8ad7c2ad7a0e.md) | 105 | `declaration-track:67382d7aecea8ad7c2ad7a0e68e7b87d7fe3752164dfea94dc7bb4ba196633b4` |
| 6 | `theorem` | [weightedTotalDegree_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedtotaldegree-coe--91d59dafa934a5230ddae940.md) | 110 | `result-track:91d59dafa934a5230ddae9402ae91f046672ac46fc3d4e64da06863c97a4201d` |
| 7 | `theorem` | [weightedTotalDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedtotaldegree-zero--89812cd943c7de77adee4375.md) | 125 | `result-track:89812cd943c7de77adee4375efc959d18c8c345d2a95b2edd87f4f790aa96252` |
| 8 | `theorem` | [le_weightedTotalDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/le-weightedtotaldegree--ee275109ee36b63702ee1acf.md) | 129 | `result-track:ee275109ee36b63702ee1acf0c53eb8088cea23cf2bf97ccb9e8fd6c6b2cd2fa` |
| 9 | `def` | [IsWeightedHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/isweightedhomogeneous--cb1ed4d543ca546b1bd1590e.md) | 140 | `declaration-track:cb1ed4d543ca546b1bd1590e6e2ce4e2785a88668e92e353fbf2613668eb0da8` |
| 10 | `def` | [weightedHomogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneoussubmodule--4f64fc6c914035c6523921cd.md) | 147 | `declaration-track:4f64fc6c914035c6523921cd2f62b53a953d3888fe494c66eb3821db8615143a` |
| 11 | `theorem` | [mem_weightedHomogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/mem-weightedhomogeneoussubmodule--10f4fe4bf141e5794db11d2b.md) | 163 | `result-track:10f4fe4bf141e5794db11d2b7c49278cc67e6b2f3fa0e9a6f4ad26dcb583b05c` |
| 12 | `theorem` | [weightedHomogeneousSubmodule_eq_finsupp_supported](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneoussubmodule-eq-finsupp-supported--368558811b825507d9a00b82.md) | 172 | `result-track:368558811b825507d9a00b82df6850653f8915e4c330dc07c47611e60509e66e` |
| 13 | `theorem` | [weightedHomogeneousSubmodule_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneoussubmodule-mul--bc27c51bb4b70de4bf9d6af0.md) | 184 | `result-track:bc27c51bb4b70de4bf9d6af0e361bbbedb08b8c5070c85412da50a843ba2eecd` |
| 14 | `theorem` | [isWeightedHomogeneous_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/isweightedhomogeneous-monomial--2b24b0ea2ef0d2f452f9ca5c.md) | 200 | `result-track:2b24b0ea2ef0d2f452f9ca5c649de9af9876b34ab994c492b03a185fe04e5d5f` |
| 15 | `theorem` | [isWeightedHomogeneous_of_total_degree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/isweightedhomogeneous-of-total-degree-zero--6d250986c5ab6061a8e192dc.md) | 212 | `result-track:6d250986c5ab6061a8e192dced358fa7a63717f45ae2326080e319b975c0737f` |
| 16 | `theorem` | [isWeightedHomogeneous_C](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/isweightedhomogeneous-c--32baad5b99216f8c4bb2dcb3.md) | 223 | `result-track:32baad5b99216f8c4bb2dcb31b8adeb6d5ca78efd8efc37b6c5d579fa2f26d23` |
| 17 | `theorem` | [isWeightedHomogeneous_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/isweightedhomogeneous-zero--dbdf073b2f6bbaed08f7b27a.md) | 232 | `result-track:dbdf073b2f6bbaed08f7b27ab7b29b78900428ec034410b962dad3f15524b853` |
| 18 | `theorem` | [isWeightedHomogeneous_one](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/isweightedhomogeneous-one--49c76f5de58d14a59c4a2a49.md) | 238 | `result-track:49c76f5de58d14a59c4a2a494272b7f1f2360f8afb93bd38b50a19ff6b07f877` |
| 19 | `theorem` | [isWeightedHomogeneous_X](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/isweightedhomogeneous-x--94eb33aa0c59b14427698566.md) | 243 | `result-track:94eb33aa0c59b14427698566b234b89a2b120219db9d758dc3377fc3ab9de441` |
| 20 | `theorem` | [coeff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/coeff-eq-zero--afbd018ac1b543bbc6c04f96.md) | 257 | `result-track:afbd018ac1b543bbc6c04f96e3969ae2de0dca43285d24801c242fdb0d255b86` |
| 21 | `theorem` | [inj_right](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/inj-right--ef4b428e726f3fbdbb5b6fa2.md) | 264 | `result-track:ef4b428e726f3fbdbb5b6fa22ba198b1575263c910e0145b01eeb2ca59955f09` |
| 22 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/add--c446acb80add231e134508c2.md) | 272 | `result-track:c446acb80add231e134508c2aed0a29650aabc3254ded49899dbca2623d4be2c` |
| 23 | `theorem` | [sum](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/sum--5969df74192b34f0aa57e38a.md) | 279 | `result-track:5969df74192b34f0aa57e38add958aa8948261829183c207ee271593860846dc` |
| 24 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/mul--3677c5673a153a5fb3d4922c.md) | 286 | `result-track:3677c5673a153a5fb3d4922c88de752f1464f39f6cf3b75a21d36d79f2f4bfd8` |
| 25 | `theorem` | [prod](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/prod--3b96e15215367cba72f16a93.md) | 293 | `result-track:3b96e15215367cba72f16a93cde08fd56f8f89aece8b1c4cd1c39d3b2ac2745b` |
| 26 | `theorem` | [weighted_total_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weighted-total-degree--6ee7e62b46954161c93616b8.md) | 309 | `result-track:6ee7e62b46954161c93616b854d7845c9eea6ce9667d880e7c7a63c4c21ac7c5` |
| 27 | `instance` | [WeightedHomogeneousSubmodule.gcomm_monoid](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneoussubmodule-gcomm-monoid--eb4518fe74c9baa6429aede9.md) | 322 | `declaration-track:eb4518fe74c9baa6429aede997d9109f87e80607c569cec2c218ae6693fc1256` |
| 28 | `def` | [weightedHomogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneouscomponent--f268bf25dd8e11e9f0bd3a50.md) | 336 | `declaration-track:f268bf25dd8e11e9f0bd3a50d334fa2201a27bbe6e4e93ee76107c1421fffa65` |
| 29 | `theorem` | [coeff_weightedHomogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/coeff-weightedhomogeneouscomponent--21e233549075132a9ad78ae6.md) | 344 | `result-track:21e233549075132a9ad78ae6eb183d69bfebb4318b86429a1fb0447d66f06693` |
| 30 | `theorem` | [weightedHomogeneousComponent_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneouscomponent-apply--ff3562c0e3c06f2f3ef93413.md) | 350 | `result-track:ff3562c0e3c06f2f3ef934136b1f39eab31b59206d611cefb55ae402d8f5967d` |
| 31 | `theorem` | [weightedHomogeneousComponent_isWeightedHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneouscomponent-isweightedhomogeneous--d88b765f9c5a1e551b34fe88.md) | 358 | `result-track:d88b765f9c5a1e551b34fe88fd0f41d5d3f9c092c33524c975dabe626c499fea` |
| 32 | `theorem` | [weightedHomogeneousComponent_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneouscomponent-c-mul--2d60e717f389487d6b5bafeb.md) | 367 | `result-track:2d60e717f389487d6b5bafeb74a047245ada172fe3ba87161a1e0de559c0bd50` |
| 33 | `theorem` | [weightedHomogeneousComponent_eq_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneouscomponent-eq-zero--6c5046eb545f14fc049ef820.md) | 373 | `result-track:6c5046eb545f14fc049ef820426360e641e95cc1b67b854e0b1df9d09b9b7e3c` |
| 34 | `theorem` | [weightedHomogeneousComponent_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneouscomponent-eq-zero--46b3b0e5d855b46509a781e0.md) | 382 | `result-track:46b3b0e5d855b46509a781e06f5bd09a191dc8b2b894ce96e86de97612fdf499` |
| 35 | `theorem` | [weightedHomogeneousComponent_finsupp](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneouscomponent-finsupp--2838993dbc03d96c3bc9f37f.md) | 394 | `result-track:2838993dbc03d96c3bc9f37f36a80e94e855f3cc1e43268a2acac50849a63cb2` |
| 36 | `theorem` | [sum_weightedHomogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/sum-weightedhomogeneouscomponent--cad02e0f72ecada65b216edb.md) | 411 | `result-track:cad02e0f72ecada65b216edbb7081039560f2802785356077c615f6e83296775` |
| 37 | `theorem` | [weightedHomogeneousComponent_weighted_homogeneous_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneouscomponent-weighted-homogeneous-polynomial--a08450b77e7a3370b4f06021.md) | 432 | `result-track:a08450b77e7a3370b4f060219784c6f71ed52a906954630bec2563617a48b0a7` |
| 38 | `theorem` | [weightedHomogeneousComponent_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WeightedHomogeneous/Variant5c5f053b5f34ef3f546a01c4cd5ce137ec949319ef4d7f473e9519f2b72b4f08.lean/declarations/weightedhomogeneouscomponent-zero--f7d64004ea1780cc73d5cf8a.md) | 459 | `result-track:f7d64004ea1780cc73d5cf8a3a28b27d1de6781764ba720b3c04c563bbefe1ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
