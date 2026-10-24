# Verification target: GRWTSK.Algebra.LinearAlgebra.PiTensorProduct.Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b55d5c2885e741ccbc2b4511f6fcee91acaf549",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b55d5c2885e741ccbc2b4511f6fcee91acaf549`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.PiTensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Equiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NoncommProd` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instone--3930846a008c1d04dfcc2df9.md) | 39 | `declaration-track:3930846a008c1d04dfcc2df9602aa248906999c4c6a7eb289d80126b9be90e2c` |
| 2 | `lemma` | [one_def](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/one-def--ee324cc4e249a7ffe4293135.md) | 42 | `result-track:ee324cc4e249a7ffe4293135434ba9b33908f74496965550666a48440de4f982` |
| 3 | `instance` | [instAddCommMonoidWithOne](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instaddcommmonoidwithone--74aced98dd80107172990e05.md) | 44 | `declaration-track:74aced98dd80107172990e0572751d188a9859a623fd82fa89daaded3f3761c0` |
| 4 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/mul--b7f8061f482d5ebdd87744e0.md) | 59 | `declaration-track:b7f8061f482d5ebdd87744e0df6c2ffc82d2d29ba5ce26ffbdbeffeea0a2dc71` |
| 5 | `lemma` | [mul_tprod_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/mul-tprod-tprod--81ef95ac5cb904353c3ee3b8.md) | 62 | `result-track:81ef95ac5cb904353c3ee3b8bd40640911c87672ee164c36286897cf56471ca0` |
| 6 | `instance` | [instMul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instmul--fb13dc1c22351d4316de5888.md) | 66 | `declaration-track:fb13dc1c22351d4316de588862dd2fbe0f28a7d28991335cd4c37cf944d5b9d1` |
| 7 | `lemma` | [mul_def](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/mul-def--8fa7eb227e0cdf9c44362980.md) | 69 | `result-track:8fa7eb227e0cdf9c44362980484365b592b563bd8afcca78749a61832f76bafd` |
| 8 | `lemma` | [tprod_mul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/tprod-mul-tprod--ab976ebcf6a830039e251533.md) | 71 | `result-track:ab976ebcf6a830039e2515333c4211eb92ea22e62ae9589e062ad58b89c43148` |
| 9 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.OneDef.Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.SemiconjBy.tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/root-grwtsk-algebra-linearalgebra-onedef-variant6a094a089f987a7f889881ce--2581dcc72bc0e426d90f1827.md) | 75 | `result-track:2581dcc72bc0e426d90f1827514e413cdb1210a69a006b1b919b8d503cd6010b` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.OneDef.Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.Commute.tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/root-grwtsk-algebra-linearalgebra-onedef-variant6a094a089f987a7f889881ce--0b5a9d676489d55fb5809579.md) | 80 | `result-track:0b5a9d676489d55fb580957967df10f7aef9a141124514fdfbc83ec67ccb5594` |
| 11 | `lemma` | [smul_tprod_mul_smul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/smul-tprod-mul-smul-tprod--c3ec8d904240d31f56067792.md) | 84 | `result-track:c3ec8d904240d31f560677920d5a434f52b28b0ce85b23c4f870b0216caf0e33` |
| 12 | `instance` | [instNonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instnonunitalnonassocsemiring--5af8b70f7689e8d7a1796e5e.md) | 88 | `declaration-track:5af8b70f7689e8d7a1796e5e5b878946c9759efcd7950351c9400da8664764fd` |
| 13 | `lemma` | [one_mul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/one-mul--a1559ba929abce7161bdb39a.md) | 103 | `result-track:a1559ba929abce7161bdb39acf1cbd060e26a9e88c95b4f1864cfb96438ee696` |
| 14 | `lemma` | [mul_one](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/mul-one--4352e6b6f818955c94676696.md) | 108 | `result-track:4352e6b6f818955c946766962ac6d0dff08a75695fb05fe7432280adbd7ab428` |
| 15 | `instance` | [instNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instnonassocsemiring--9eb0ea8460618653bc7da7e3.md) | 113 | `declaration-track:9eb0ea8460618653bc7da7e3aefac43a107a69236a7e3ddc7450963df44d678c` |
| 16 | `def` | [tprodMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/tprodmonoidhom--de7cf41627aedc726574f6d6.md) | 121 | `declaration-track:de7cf41627aedc726574f6d65179993218bde5b01251f1b00b0441afb4c03a36` |
| 17 | `lemma` | [mul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/mul-assoc--cb0c52a157e29b3f700021e3.md) | 133 | `result-track:cb0c52a157e29b3f700021e3e92dc72991c34224f66c401c689409bab48e12d8` |
| 18 | `instance` | [instNonUnitalSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instnonunitalsemiring--2997e8c1032c637d6a6a12b0.md) | 142 | `declaration-track:2997e8c1032c637d6a6a12b0fa443f90c94d62e0092035da9272b0ed27e4ea90` |
| 19 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instsemiring--c0f88fae18214ea31da43e08.md) | 154 | `declaration-track:c0f88fae18214ea31da43e080022620e3d6b3d80ecf59dbf296c5e2a757715b0` |
| 20 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instalgebra--f5283dd5e31a962e00119581.md) | 158 | `declaration-track:f5283dd5e31a962e001195813f3c88d9e9d71b714b1fd4af125305a77b55ad53` |
| 21 | `lemma` | [algebraMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/algebramap-apply--70717dde0f88f483a5e1ad99.md) | 184 | `result-track:70717dde0f88f483a5e1ad999c875918186e796f99b1c493bd5d925ae6e38b10` |
| 22 | `def` | [singleAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/singlealghom--a41c50d3efb312dfc396616b.md) | 196 | `declaration-track:a41c50d3efb312dfc396616be2845494bd66aa1853bc697356bbf6a95b6cc58c` |
| 23 | `def` | [liftAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/liftalghom--eab8da9835b5568f21a78bb0.md) | 211 | `declaration-track:eab8da9835b5568f21a78bb0ab9f8f2896e964358c1f476c4e3ca32e5a86b1d7` |
| 24 | `lemma` | [tprod_noncommProd](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/tprod-noncommprod--b85cc63a71969f2117f04d76.md) | 217 | `result-track:b85cc63a71969f2117f04d7602054fc19a962bcd9ff927cf08c686c3499173cd` |
| 25 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/alghom-ext--873e3dd399f2b148edff2930.md) | 225 | `result-track:873e3dd399f2b148edff2930f768b7f3640611c7f6c9601643ae91eff014acce` |
| 26 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instring--9ef20a2adcb742fae2a0155d.md) | 239 | `declaration-track:9ef20a2adcb742fae2a0155d0ebf016e5039d1fd61b6007316bf263bffd8cd1c` |
| 27 | `lemma` | [mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/mul-comm--1dec3e5760186d4f710a186c.md) | 249 | `result-track:1dec3e5760186d4f710a186c14c637d6c9bbe6385120d181fc9e93453929f8e3` |
| 28 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instcommsemiring--c998c3a4613ba5a94ab34fcc.md) | 256 | `declaration-track:c998c3a4613ba5a94ab34fcc032c2ff1e7e017f0c2eac6ebdf853b829850b4eb` |
| 29 | `lemma` | [tprod_prod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/tprod-prod--95c023688510685eb6db0b03.md) | 261 | `result-track:95c023688510685eb6db0b03b36b072d9f6186e242bb18afd36c32b9b4ecd5b2` |
| 30 | `def` | [constantBaseRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/constantbaseringequiv--af6d3646c600868a9c1d06f4.md) | 277 | `declaration-track:af6d3646c600868a9c1d06f4ce437a61a0d2d571db459c1822d10a11e2a4f82f` |
| 31 | `theorem` | [constantBaseRingEquiv_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/constantbaseringequiv-tprod--69399da7e41359c91910aa45.md) | 301 | `result-track:69399da7e41359c91910aa45ed88742c61f6c3ab6bfd693b01ed2d9224b54bda` |
| 32 | `theorem` | [constantBaseRingEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/constantbaseringequiv-symm--a78de6f2a017319a47b7977f.md) | 306 | `result-track:a78de6f2a017319a47b7977f2f8dc0f4db6f2b4e175a02427b96f38ea3cf9773` |
| 33 | `instance` | [instCommRing](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variantb5274d7207335fdc2878fe1bb230a4bf5126aa1fddd37cf09c422eac660fd55d.lean/declarations/instcommring--a0744a100c16d3724f0b304c.md) | 316 | `declaration-track:a0744a100c16d3724f0b304c6c3c3185f501f0bb52a49c6a088b258396f5a958` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
