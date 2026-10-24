# Verification target: GRWTSK.Algebra.LinearAlgebra.PiTensorProduct.Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d83268dbd3e17ce9b5c05b7197de6b8be092df00",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d83268dbd3e17ce9b5c05b7197de6b8be092df00`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instone--7807816a03830d14b27d4998.md) | 34 | `declaration-track:7807816a03830d14b27d49984dad9091b900d004c823756ed9120b83bfc3a4d3` |
| 2 | `lemma` | [one_def](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/one-def--23be644594cfb3cc4aa7ff27.md) | 37 | `result-track:23be644594cfb3cc4aa7ff277caadf8080fed51c35f7bb3aea2ac2083dd46b56` |
| 3 | `instance` | [instAddCommMonoidWithOne](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instaddcommmonoidwithone--d82ec3f03fe2c9bcaee36229.md) | 39 | `declaration-track:d82ec3f03fe2c9bcaee36229879cc05c142815740fce49291f5a58915d023535` |
| 4 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/mul--de5cb78cb8dc706d514f35ca.md) | 54 | `declaration-track:de5cb78cb8dc706d514f35ca7a108ffc4ac3d04cd09211ccae75eebdbdc3daee` |
| 5 | `lemma` | [mul_tprod_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/mul-tprod-tprod--80e2287264ad657021aa784a.md) | 57 | `result-track:80e2287264ad657021aa784ad333aff3a205394b1f951c0ece4c7d61d1396c42` |
| 6 | `instance` | [instMul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instmul--94635b158358a7f5daf35042.md) | 61 | `declaration-track:94635b158358a7f5daf350422e6662b821fa596b14d57d6a57e314a7b2f5d8fd` |
| 7 | `lemma` | [mul_def](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/mul-def--26908c76ba86335c082bcc37.md) | 64 | `result-track:26908c76ba86335c082bcc372b4568aa22f59eb98cb0a76b4b9dcb589b04b0f7` |
| 8 | `lemma` | [tprod_mul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/tprod-mul-tprod--fb793d169a628d73d6b15da3.md) | 66 | `result-track:fb793d169a628d73d6b15da32e109bfe35ea017ab2d8168a329040cf21f9dcba` |
| 9 | `theorem` | [_root_.SemiconjBy.tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/root-semiconjby-tprod--db59cb20089ffa38b3fa1ccd.md) | 70 | `result-track:db59cb20089ffa38b3fa1ccd6540b29d40234bd3dc1e8a5f3e314ac66945167f` |
| 10 | `theorem` | [_root_.Commute.tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/root-commute-tprod--c44775aece51c30b5c827417.md) | 75 | `result-track:c44775aece51c30b5c8274173c94b536fd61302efc57469d4fa3a51e778b1fdb` |
| 11 | `lemma` | [smul_tprod_mul_smul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/smul-tprod-mul-smul-tprod--690f8487dff84e2c8eedbe2c.md) | 79 | `result-track:690f8487dff84e2c8eedbe2cadf17a7e805260c2e5652e70b567b16341b9cc77` |
| 12 | `instance` | [instNonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instnonunitalnonassocsemiring--dd838f62536e6067e02f2b50.md) | 83 | `declaration-track:dd838f62536e6067e02f2b5082389386c2d605d4e29b3c05a6ff979530aaaffa` |
| 13 | `lemma` | [one_mul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/one-mul--eeee42fa218c50a9f0422703.md) | 98 | `result-track:eeee42fa218c50a9f04227030ee5708da182f6c3363cf6f42684a8de9007bb8b` |
| 14 | `lemma` | [mul_one](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/mul-one--8bf49be8793b524a859ece5c.md) | 103 | `result-track:8bf49be8793b524a859ece5c52a9705c617a1175fd725ba37765d2b061ecaf9c` |
| 15 | `instance` | [instNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instnonassocsemiring--9a857bad5d9773b42eec211a.md) | 108 | `declaration-track:9a857bad5d9773b42eec211aa946a2ca5abddd1cee34248073e4507ff269c950` |
| 16 | `def` | [tprodMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/tprodmonoidhom--5c08f87916b6e022aef2a087.md) | 116 | `declaration-track:5c08f87916b6e022aef2a087aa974d4e429cec6e47b2849fea1904ffd0d88d03` |
| 17 | `lemma` | [mul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/mul-assoc--39aab4616df45c8367a2533a.md) | 128 | `result-track:39aab4616df45c8367a2533a9e35dcef6789d7f14617306ed5778d6f0fecad04` |
| 18 | `instance` | [instNonUnitalSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instnonunitalsemiring--d25e2cc20b895ef58f258cd6.md) | 138 | `declaration-track:d25e2cc20b895ef58f258cd6c0ea79521c6546c04594df8b8778126322c0367f` |
| 19 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instsemiring--f60a6e51cc97658e0f1b0098.md) | 150 | `declaration-track:f60a6e51cc97658e0f1b0098b4351964e21782f991e251f29c125840a5da8d5f` |
| 20 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instalgebra--d02861bb634006346399f3d9.md) | 154 | `declaration-track:d02861bb634006346399f3d927feee93ded753f16a6d86b95738d52586a08c28` |
| 21 | `lemma` | [algebraMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/algebramap-apply--2eda6fea2c8a1badcf2e7fed.md) | 180 | `result-track:2eda6fea2c8a1badcf2e7fed3e5acd5719bbc580b8d3906bf561dc48bcd54979` |
| 22 | `def` | [singleAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/singlealghom--0ade8081fafd0356bab4f67a.md) | 192 | `declaration-track:0ade8081fafd0356bab4f67a83ee3d6a48cb6dc29e2ab8ed1112682e649cd6a2` |
| 23 | `def` | [liftAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/liftalghom--124ea1bd69978936cbd9cbda.md) | 207 | `declaration-track:124ea1bd69978936cbd9cbdab13e5cbb496be09df4dcfd331d7b757c6fdb11c0` |
| 24 | `lemma` | [tprod_noncommProd](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/tprod-noncommprod--01723f6e17d0b1bcfb60ed64.md) | 213 | `result-track:01723f6e17d0b1bcfb60ed6411bd87fb498c707ae6bf97ab200d9cba65bf8828` |
| 25 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/alghom-ext--8cc466cec4c4a80de752e19c.md) | 221 | `result-track:8cc466cec4c4a80de752e19cd2d73728e2860171359f2707d8ffe838cab07c78` |
| 26 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instring--720ad3c923b6554618d4abeb.md) | 235 | `declaration-track:720ad3c923b6554618d4abeb948edf9d78d6aee45aaf4d61f825875b47ced1cd` |
| 27 | `lemma` | [mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/mul-comm--6e7f0abdfb01a04be302cefa.md) | 245 | `result-track:6e7f0abdfb01a04be302cefa683629641d8628f6b1b838d0f9c51be941c6babc` |
| 28 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instcommsemiring--858268aed5ae554270cc8ba3.md) | 252 | `declaration-track:858268aed5ae554270cc8ba3667b3b56b14c5b62deabdc9f437dda7e61ac021a` |
| 29 | `lemma` | [tprod_prod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/tprod-prod--88220dbbb3d72050f44824fb.md) | 257 | `result-track:88220dbbb3d72050f44824fb6e1e7df65ed23f0ba4e387ad3f5841bc42542b08` |
| 30 | `def` | [constantBaseRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/constantbaseringequiv--d5e56c7aaf45c270a5ce49ea.md) | 271 | `declaration-track:d5e56c7aaf45c270a5ce49ea78aa5e906f71cfd77a475a97b3825816e80f8d8c` |
| 31 | `theorem` | [constantBaseRingEquiv_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/constantbaseringequiv-tprod--f0df10af7b8cc3a43bda69f6.md) | 295 | `result-track:f0df10af7b8cc3a43bda69f6277c9bcd7aa1e5c6845e66833da5c6d73918aa15` |
| 32 | `theorem` | [constantBaseRingEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/constantbaseringequiv-symm--45af243d1bfc687046ed45b0.md) | 300 | `result-track:45af243d1bfc687046ed45b0e790aeec957d1569017a0f978ec47fcc56453753` |
| 33 | `instance` | [instCommRing](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant03a377df616c255996fcb73d3139deb38b969b306badb17a1dbc6e7903e2ee69.lean/declarations/instcommring--2e831ef3db3bed8c89106f26.md) | 310 | `declaration-track:2e831ef3db3bed8c89106f268cdb47620173594a955535046bd3bf81070efc45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
