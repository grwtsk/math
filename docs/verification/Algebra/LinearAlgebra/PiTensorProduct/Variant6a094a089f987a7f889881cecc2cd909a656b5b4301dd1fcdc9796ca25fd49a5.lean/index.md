# Verification target: GRWTSK.Algebra.LinearAlgebra.PiTensorProduct.Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71ca646e36a876541bf363464f47cc865e2ad21a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71ca646e36a876541bf363464f47cc865e2ad21a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.PiTensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Bilinear` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Equiv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NoncommProd` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instone--290720c0c67a54c0da80df2d.md) | 31 | `declaration-track:290720c0c67a54c0da80df2dd997b5cc8b44dbb8830812ade22075fae0001360` |
| 2 | `lemma` | [one_def](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/one-def--4976facdd1637463c94ac2d9.md) | 34 | `result-track:4976facdd1637463c94ac2d9a3ffcb799e25a5301c1c7e1acca22c28ba037ea2` |
| 3 | `instance` | [instAddCommMonoidWithOne](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instaddcommmonoidwithone--53282ad433f76b1133717f8c.md) | 36 | `declaration-track:53282ad433f76b1133717f8ceab928d0c50341d22f52272eeff67c133b08d772` |
| 4 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/mul--d39963db05101cc016a9b84c.md) | 51 | `declaration-track:d39963db05101cc016a9b84c4ff86205f7e2889771f7ce0322608dca89d64f81` |
| 5 | `lemma` | [mul_tprod_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/mul-tprod-tprod--6cc1dafe53d1c70f8d7bbb55.md) | 54 | `result-track:6cc1dafe53d1c70f8d7bbb55c3533232dca227d6239fd2fba16fa5290e28c4d7` |
| 6 | `instance` | [instMul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instmul--08bc68a6d619f008dfde756b.md) | 58 | `declaration-track:08bc68a6d619f008dfde756b02a04ac9f0383485ebd1045b4bf47dab2352c4a4` |
| 7 | `lemma` | [mul_def](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/mul-def--7d844dba48d8c88958b45158.md) | 61 | `result-track:7d844dba48d8c88958b45158946eb8ddbcfe1ec3f1bf9c368292c6524a57526b` |
| 8 | `lemma` | [tprod_mul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/tprod-mul-tprod--6c31d9429423c3c09e7a455c.md) | 63 | `result-track:6c31d9429423c3c09e7a455ce71f30647bc7040274f801e2cc64a99b6cf0d789` |
| 9 | `theorem` | [_root_.SemiconjBy.tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/root-semiconjby-tprod--415fb5974ed292933a914dab.md) | 67 | `result-track:415fb5974ed292933a914dab203655d39cc0927a133d66c18f488f7e527faee3` |
| 10 | `theorem` | [_root_.Commute.tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/root-commute-tprod--3c60fd7024e639a148a5c593.md) | 72 | `result-track:3c60fd7024e639a148a5c593e393a3bccc3e264f647ab4db5866742b423b02e2` |
| 11 | `lemma` | [smul_tprod_mul_smul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/smul-tprod-mul-smul-tprod--b6e2227e95a92aded77faaac.md) | 76 | `result-track:b6e2227e95a92aded77faaac8e2f67f7b7d8086d51fa8c0ec2f5b38e06ca91d6` |
| 12 | `instance` | [instNonUnitalNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instnonunitalnonassocsemiring--6acf426316e699b4a806c118.md) | 80 | `declaration-track:6acf426316e699b4a806c11885c4a9a63887d7d439b13e9af32ebe2ae15c2575` |
| 13 | `lemma` | [one_mul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/one-mul--65a336e7996d0930c5559c6f.md) | 95 | `result-track:65a336e7996d0930c5559c6f0473307bc122f1fdb333cbdd27f4df1c530853e1` |
| 14 | `lemma` | [mul_one](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/mul-one--11a4a9f9ba2e3a5388fba2a3.md) | 100 | `result-track:11a4a9f9ba2e3a5388fba2a30515bfc05b9c8d7c9407d9da9dfb8b95beb2b11e` |
| 15 | `instance` | [instNonAssocSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instnonassocsemiring--7af616c4698387c8ec7cc05e.md) | 105 | `declaration-track:7af616c4698387c8ec7cc05ec4c5ec3c423a8aff5a2871f2d37c6a20f76f6ce3` |
| 16 | `def` | [tprodMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/tprodmonoidhom--7d9022383891d974d2274ed1.md) | 113 | `declaration-track:7d9022383891d974d2274ed1a81ab033b4b8f43e22638db54ae6a3d7353192c7` |
| 17 | `lemma` | [mul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/mul-assoc--64d7e815acfa297f4bd6b524.md) | 125 | `result-track:64d7e815acfa297f4bd6b5240670b8986fbfd9906e8385af1332db1439e15b0b` |
| 18 | `instance` | [instNonUnitalSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instnonunitalsemiring--1fc5e133a4f4400791dcc230.md) | 134 | `declaration-track:1fc5e133a4f4400791dcc23001aab81fbc1ac5e3476c93abee58f9f1e587be4a` |
| 19 | `instance` | [instSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instsemiring--57e6f44f94813e80071c219b.md) | 146 | `declaration-track:57e6f44f94813e80071c219b061dd1a033794455bbc93da983f9375b0c1cb4c3` |
| 20 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instalgebra--67ea803ed09be57164258fe9.md) | 150 | `declaration-track:67ea803ed09be57164258fe90e9a5599f6cd42ab052a997c9b008f3ab2008aff` |
| 21 | `lemma` | [algebraMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/algebramap-apply--cb0aa0b7303c92e66d9edc50.md) | 176 | `result-track:cb0aa0b7303c92e66d9edc5061263e23a55c84979de67cae054bb275bd5732d1` |
| 22 | `def` | [singleAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/singlealghom--cdcfc37d25e107e7f66cc364.md) | 188 | `declaration-track:cdcfc37d25e107e7f66cc364647703f1e0ae29e217886658e902157095a7a1d7` |
| 23 | `def` | [liftAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/liftalghom--8e2245c766d6a05be6323569.md) | 203 | `declaration-track:8e2245c766d6a05be6323569fdc2205178ffc5c162ea9b0daa842588c1e3491d` |
| 24 | `lemma` | [tprod_noncommProd](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/tprod-noncommprod--18252b37c37b2b2be9e8c29b.md) | 209 | `result-track:18252b37c37b2b2be9e8c29b1339b51473ccf3077b1591df85988df00afa0a4e` |
| 25 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/alghom-ext--add5df8509bed842cc3f4b5f.md) | 217 | `result-track:add5df8509bed842cc3f4b5f4328e50b81586675b019c864bf26484170763a6b` |
| 26 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instring--82c585205cc3438dd9216730.md) | 231 | `declaration-track:82c585205cc3438dd9216730fa33f0c33f0f9f537e13632a6cef7170c72d6449` |
| 27 | `lemma` | [mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/mul-comm--b0de2ef9063fc98aadd399ea.md) | 241 | `result-track:b0de2ef9063fc98aadd399eab8cbe10a0df3ab49f4712be17bc590045e52bca5` |
| 28 | `instance` | [instCommSemiring](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instcommsemiring--268c6ce9e042716cdac84ce2.md) | 248 | `declaration-track:268c6ce9e042716cdac84ce20dd692fc35283b16569bf7e0395615acbee077fd` |
| 29 | `lemma` | [tprod_prod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/tprod-prod--461afdf5e46b8a4f1ed7d07d.md) | 253 | `result-track:461afdf5e46b8a4f1ed7d07d295caef8bf14fa18886a6af8f8bb5fec9781d3ad` |
| 30 | `def` | [constantBaseRingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/constantbaseringequiv--22ec1e46aa9deee4aed71c9b.md) | 269 | `declaration-track:22ec1e46aa9deee4aed71c9b63f55672fd40325f2d51760110351d8389168620` |
| 31 | `theorem` | [constantBaseRingEquiv_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/constantbaseringequiv-tprod--6556312da976d6d9cba78ca9.md) | 293 | `result-track:6556312da976d6d9cba78ca950bd457557de91acd928a2834f5bc8c4c63b0532` |
| 32 | `theorem` | [constantBaseRingEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/constantbaseringequiv-symm--d28f956332a433c963580632.md) | 298 | `result-track:d28f956332a433c963580632beaf610bbfd69084fec026dd8415cc35587f53b1` |
| 33 | `instance` | [instCommRing](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean/declarations/instcommring--c2ca7a7d2ffb84edc21938bc.md) | 308 | `declaration-track:c2ca7a7d2ffb84edc21938bc3af427efe29b5f27dde575c54eb7b3ce6f1ae7d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
