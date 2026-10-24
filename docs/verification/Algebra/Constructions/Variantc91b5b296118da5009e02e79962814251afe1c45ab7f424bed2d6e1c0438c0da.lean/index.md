# Verification target: GRWTSK.Algebra.Constructions.Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ad2aca4fcc9102de150cf2d5034140b286feb63",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/index.md) · [Full source](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ad2aca4fcc9102de150cf2d5034140b286feb63`.

Source path: `GRWTSK/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Instances` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pushoutCocone](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/pushoutcocone--c216c7dcd6bfa96f14613049.md) | 41 | `declaration-track:c216c7dcd6bfa96f1461304987481ea34d27fb1c6d4c9b8461522f89c1b04b63` |
| 2 | `theorem` | [pushoutCocone_inl](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/pushoutcocone-inl--640846effde3f37a406ee0e2.md) | 53 | `result-track:640846effde3f37a406ee0e24bdba1ee466f060377b6ad3b769696eac2e818a1` |
| 3 | `theorem` | [pushoutCocone_inr](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/pushoutcocone-inr--5cef9bacb7eac58967763b36.md) | 58 | `result-track:5cef9bacb7eac58967763b3611af75294f71bf40de29a061d1379e249d0a43b3` |
| 4 | `theorem` | [pushoutCocone_pt](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/pushoutcocone-pt--03b1765a42d2e1933af3197d.md) | 63 | `result-track:03b1765a42d2e1933af3197de66f47b8550e8c3cfc4f43416914a0b14048fbda` |
| 5 | `def` | [pushoutCoconeIsColimit](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/pushoutcoconeiscolimit--04338964f95055ee5d45d86e.md) | 68 | `declaration-track:04338964f95055ee5d45d86efa8fcadd1eb48c7bcce2120703a1cb64f84c5821` |
| 6 | `lemma` | [isPushout_tensorProduct](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/ispushout-tensorproduct--2b0281c17ff15e4132d2bc91.md) | 109 | `result-track:2b0281c17ff15e4132d2bc91a9c0aaed3e9a2f1d6d865fffc3d8b28738c8b444` |
| 7 | `lemma` | [isPushout_of_isPushout](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/ispushout-of-ispushout--330841431a6b7ba701fbe201.md) | 119 | `result-track:330841431a6b7ba701fbe201c19f019899efd0a09c062eef06f0ec5c9ec41a8b` |
| 8 | `def` | [coproductCocone](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/coproductcocone--a1058a225692ad08d33654d0.md) | 136 | `declaration-track:a1058a225692ad08d33654d0bf8770d1baff44a9fd92890776725f4042f6b380` |
| 9 | `theorem` | [coproductCocone_inl](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/coproductcocone-inl--2af4e88eba3b018f575d7d0f.md) | 142 | `result-track:2af4e88eba3b018f575d7d0f69cedd7a20d4e1a6d154f870bce79acbb6e0568b` |
| 10 | `theorem` | [coproductCocone_inr](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/coproductcocone-inr--3026164b44fcc40d720ee962.md) | 146 | `result-track:3026164b44fcc40d720ee9628b16f2daaf59df39d3f7d76b584f1ff85bbc3ad6` |
| 11 | `def` | [coproductCoconeIsColimit](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/coproductcoconeiscolimit--a8b2d7ce09f790b0ace79db4.md) | 151 | `declaration-track:a8b2d7ce09f790b0ace79db4fd202eea15267f92c33be1b2a4799416a3f57bf2` |
| 12 | `def` | [coproductColimitCocone](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/coproductcolimitcocone--594190e9c134b721a3b0cc09.md) | 170 | `declaration-track:594190e9c134b721a3b0cc0985938cdd0a8e867ff7f62bc558739ecb7bcdbc7e` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/instance--3d10706afcd2564fe7d3a8b3.md) | 178 | `declaration-track:3d10706afcd2564fe7d3a8b33121e33cbede80f934498a05b6677507820cb6cf` |
| 14 | `def` | [punitIsTerminal](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/punitisterminal--63bbfa74791961b6a2ec0956.md) | 182 | `declaration-track:63bbfa74791961b6a2ec09562ebaa0381d8777e009ebc6b1bd991f15325d0567` |
| 15 | `instance` | [commRingCat_hasStrictTerminalObjects](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/commringcat-hasstrictterminalobjects--2230b72df7569dd2b5387707.md) | 185 | `declaration-track:2230b72df7569dd2b538770734ab422f142f6fc6423dc1e9a1db3380049f74d7` |
| 16 | `theorem` | [subsingleton_of_isTerminal](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/subsingleton-of-isterminal--52a977536ce35ba1230a139c.md) | 197 | `result-track:52a977536ce35ba1230a139c785c87ee3929b28ae89f8bd2ddb3a0fe08dd7e5c` |
| 17 | `def` | [zIsInitial](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/zisinitial--3cb2cb46bc183fd00856e661.md) | 202 | `declaration-track:3cb2cb46bc183fd00856e66143fb2ce9bae25e22dd2cac1888b1b0f13480eb30` |
| 18 | `def` | [isInitial](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/isinitial--7b6ed19e96b1716736cc31b1.md) | 207 | `declaration-track:7b6ed19e96b1716736cc31b1543bab44f1a597507fb89237bd0f7823c52edf0e` |
| 19 | `def` | [prodFan](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/prodfan--4134ccf20530e633c48c926a.md) | 223 | `declaration-track:4134ccf20530e633c48c926aee8ece1976bf2d36305c2b9e1f61f6aa50ea0ace` |
| 20 | `def` | [prodFanIsLimit](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/prodfanislimit--2ef2428bec84e1d3075164ac.md) | 227 | `declaration-track:2ef2428bec84e1d3075164accafcaf6f0f666e5609164edbca1a0fef0b025083` |
| 21 | `def` | [piFan](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/pifan--e63aa570b70e9afc24910b78.md) | 255 | `declaration-track:e63aa570b70e9afc24910b7826558a5612221fbd46e8a20f8370328e6543edd0` |
| 22 | `def` | [piFanIsLimit](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/pifanislimit--a7f0c8fdf3e2af3f9fa6bcf4.md) | 261 | `declaration-track:a7f0c8fdf3e2af3f9fa6bcf4249a9b735e3e5370ae4f2c8db02f7e544ee0746f` |
| 23 | `def` | [piIsoPi](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/piisopi--3dbd25451a9e88402ea86b06.md) | 270 | `declaration-track:3dbd25451a9e88402ea86b0650ec21f669bdbfa5d934c31266e7c9b861366f08` |
| 24 | `def` | [_root_.RingEquiv.piEquivPi](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/root-ringequiv-piequivpi--9257dae4018c3dd839287ab4.md) | 276 | `declaration-track:9257dae4018c3dd839287ab421f42017543ae0214a4db41e1118c8aa9242a4bb` |
| 25 | `def` | [equalizerFork](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/equalizerfork--fd8bb14bdda17782fc13e52d.md) | 287 | `declaration-track:fd8bb14bdda17782fc13e52d670f2ff48c96f77140747ce584f242165c303ced` |
| 26 | `def` | [equalizerForkIsLimit](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/equalizerforkislimit--918056c46a4d2c99db9af21a.md) | 293 | `declaration-track:918056c46a4d2c99db9af21abb64333f18545c997a9f1a5d5878c5634e86dcc6` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/instance--89677ccb264d2963ec05ea24.md) | 304 | `declaration-track:89677ccb264d2963ec05ea247978b37e44fa1cd24ec4582f931da66b70fd8c4b` |
| 28 | `theorem` | [equalizer_ι_isLocalHom](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/equalizer-islocalhom--d0a19a0eed852f414b4733c4.md) | 315 | `result-track:d0a19a0eed852f414b4733c49c17851696b07757366b6787b14ea8384824c6fa` |
| 29 | `instance` | [equalizer_ι_isLocalHom'](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/equalizer-islocalhom--d0b8ff1dbedfce5307d34631.md) | 332 | `declaration-track:d0b8ff1dbedfce5307d34631a6192b7eae801c1b7e11b49104288cb34c9bcaaa` |
| 30 | `def` | [pullbackCone](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/pullbackcone--5d1979636662d0fd47c1f3b1.md) | 350 | `declaration-track:5d1979636662d0fd47c1f3b1b832629659ef090d296ff9918ef9137d9e07701a` |
| 31 | `def` | [pullbackConeIsLimit](../../../../mathematics/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean/declarations/pullbackconeislimit--0f882eb5d948e2f0c60a9009.md) | 363 | `declaration-track:0f882eb5d948e2f0c60a9009813a5455640a12a329aa47fa625779160b2fd318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
