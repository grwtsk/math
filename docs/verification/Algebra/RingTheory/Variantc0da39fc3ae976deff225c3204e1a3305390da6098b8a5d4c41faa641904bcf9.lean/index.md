# Verification target: GRWTSK.Algebra.Ring.Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbc18a1a20551c9954c156e0c4d8cd2f94d2a29a",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbc18a1a20551c9954c156e0c4d8cd2f94d2a29a`.

Source path: `GRWTSK/Algebra/Ring/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Associator` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gnonunitalnonassocsemiring--f7a6bd11afbe53700e6f422d.md) | 98 | `declaration-track:f7a6bd11afbe53700e6f422d5f4e78eccab2c87ffd9c38b36463ca5352d2b8da` |
| 2 | `class` | [GSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gsemiring--749cb8bcd790916ec70c1a18.md) | 118 | `declaration-track:749cb8bcd790916ec70c1a18e22cc02547f5200fcf01484cd061f0bfe6e03ae3` |
| 3 | `class` | [GCommSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gcommsemiring--9311499947473c87d6d2c4af.md) | 128 | `declaration-track:9311499947473c87d6d2c4afd1a10926d305e115f76d6965a4bd69f03923a2e3` |
| 4 | `class` | [GRing](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gring--b5e408d988ccab8ea19714b7.md) | 132 | `declaration-track:b5e408d988ccab8ea19714b7657556c0a6bc1a97e9f99208ab88bc83e75d6606` |
| 5 | `class` | [GCommRing](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gcommring--a2c6555a1cacf20f1ea23660.md) | 144 | `declaration-track:a2c6555a1cacf20f1ea2366052991baf026fd362c3d4db15bea8c82a2fdccd09` |
| 6 | `theorem` | [of_eq_of_gradedMonoid_eq](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/of-eq-of-gradedmonoid-eq--7fb08c99057c6f13ef030633.md) | 148 | `result-track:7fb08c99057c6f13ef03063369b1215f8d486b6806196b04a7c79d09825ec697` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/instance--8850520987789a95ebf1c09b.md) | 162 | `declaration-track:8850520987789a95ebf1c09b62c4ce808d393e5c872926a944d161b3d6797434` |
| 8 | `theorem` | [one_def](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/one-def--3088d41bc0a94e38c9e03939.md) | 164 | `result-track:3088d41bc0a94e38c9e0393934c884ef9e9a0bcb6d1e31da7767e6c99bfb55d8` |
| 9 | `def` | [gMulHom](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gmulhom--d7811106210adc48f5a1eb78.md) | 176 | `declaration-track:d7811106210adc48f5a1eb7831c6d1add1b7b636a30f7e76e072de4465f8f34e` |
| 10 | `def` | [mulHom](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/mulhom--24a1a7bf5771f3a1ecb8e72e.md) | 187 | `declaration-track:24a1a7bf5771f3a1ecb8e72e022a5a076c0ab2dd6f7ab4dbfd117f2259f6b876` |
| 11 | `instance` | [instMul](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/instmul--cd6c045907fba108cfe1d9eb.md) | 193 | `declaration-track:cd6c045907fba108cfe1d9ebe3da443fef697056bea65a82b6871e73ec8037bc` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/instance--6fec75890b4092975cccc6aa.md) | 196 | `declaration-track:6fec75890b4092975cccc6aab8ea28d318b2ccd0a509b85b69aafabc34f96d3f` |
| 13 | `theorem` | [mulHom_apply](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/mulhom-apply--87f9f464fc4516750ca84f86.md) | 206 | `result-track:87f9f464fc4516750ca84f865e63b3901a1e9e4f54bf188579352ad126fb0aa6` |
| 14 | `theorem` | [mulHom_of_of](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/mulhom-of-of--c3bf8d23ae2e957a03c5294a.md) | 208 | `result-track:c3bf8d23ae2e957a03c5294af43029c5ca0c2167b4a115a3f378311725d4bc3a` |
| 15 | `theorem` | [of_mul_of](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/of-mul-of--647afa37f5a5bd7ee4eb3203.md) | 214 | `result-track:647afa37f5a5bd7ee4eb3203330a19c60374a9789106dca22a3ec1813cd6dd0a` |
| 16 | `theorem` | [one_mul](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/one-mul--a112c08fb09b483a999bd9b4.md) | 226 | `result-track:a112c08fb09b483a999bd9b41332391e4918900e22520d8d749debb222184efb` |
| 17 | `theorem` | [mul_one](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/mul-one--698458b1609da3fe3e926519.md) | 233 | `result-track:698458b1609da3fe3e926519540626bc21c99885830af230ff9dd1534bb9220a` |
| 18 | `theorem` | [mul_assoc](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/mul-assoc--8ac1155adcba7b05af0672c5.md) | 240 | `result-track:8ac1155adcba7b05af0672c5ae65ccf93303208bb56cb878d14b236746e05a5a` |
| 19 | `instance` | [instNatCast](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/instnatcast--1fb8e9cc52339002808c5451.md) | 251 | `declaration-track:1fb8e9cc52339002808c5451648a947e8d7e76e06ccb221a5c1db2c5264f9da3` |
| 20 | `instance` | [semiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/semiring--d6d441d02ee51c8eb3fdc518.md) | 255 | `declaration-track:d6d441d02ee51c8eb3fdc51853195ca52670b1dd1a601cd65e9924fe21bafd82` |
| 21 | `theorem` | [ofPow](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/ofpow--52d5d35543cc97c626b638fd.md) | 267 | `result-track:52d5d35543cc97c626b638fd63114cb9a67dc37a332612855accef26f657b07a` |
| 22 | `theorem` | [ofList_dProd](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/oflist-dprod--e6c77748411388239272d98e.md) | 275 | `result-track:e6c77748411388239272d98ead2e720c670ff9a4cd968387c56a828544fcd5c6` |
| 23 | `theorem` | [list_prod_ofFn_of_eq_dProd](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/list-prod-offn-of-eq-dprod--3f3fce6c2c0fda6890160690.md) | 285 | `result-track:3f3fce6c2c0fda6890160690249c51cdd92d2931d74ee97eaa3f66513ef4b5f0` |
| 24 | `theorem` | [mul_eq_dfinsuppSum](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/mul-eq-dfinsuppsum--0c313ccad813dbb4537865fe.md) | 289 | `result-track:0c313ccad813dbb4537865fe422e206fdad11f67ab45bdac2efcd4d0b7d3289a` |
| 25 | `theorem` | [mul_eq_sum_support_ghas_mul](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/mul-eq-sum-support-ghas-mul--6307750d1c65b1343231f9c7.md) | 310 | `result-track:6307750d1c65b1343231f9c76ba1c71b2ef423be25e476e3521175650bd1d407` |
| 26 | `theorem` | [mul_comm](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/mul-comm--e3ee913d9e81cad6e6f5009f.md) | 322 | `result-track:e3ee913d9e81cad6e6f5009fc2cc1ec0de3dd4b2cee2d7121f1a334dd946ddbc` |
| 27 | `instance` | [commSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/commsemiring--23b771806a046e5c229825a3.md) | 330 | `declaration-track:23b771806a046e5c229825a3591963e0e683ed8c32816465212d1f6bd186ef86` |
| 28 | `instance` | [nonAssocRing](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/nonassocring--93f95f8793fdf0d735c16ead.md) | 341 | `declaration-track:93f95f8793fdf0d735c16eaddfec92ed08789d0057b6e1e04812d730a0280075` |
| 29 | `instance` | [ring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/ring--76676b00b1839d0bcfa9517a.md) | 353 | `declaration-track:76676b00b1839d0bcfa9517abf57a119c2806c4e87c87ef9dcd6bbc643040ca4` |
| 30 | `instance` | [commRing](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/commring--4a49820da269112513713829.md) | 368 | `declaration-track:4a49820da269112513713829d1a6c2c10c72ac775b8ee872fcb8bd00da5b071f` |
| 31 | `theorem` | [of_zero_one](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/of-zero-one--a66a877c4005b0cb6e13b393.md) | 388 | `result-track:a66a877c4005b0cb6e13b393e098de391160b2c4573647c2edda05578021eb70` |
| 32 | `theorem` | [of_zero_smul](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/of-zero-smul--83734940502c32b95254f10c.md) | 398 | `result-track:83734940502c32b95254f10c5bd9cb39a549e8c0f1c3df0b03e139e6eed2a868` |
| 33 | `theorem` | [of_zero_mul](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/of-zero-mul--d96f978a37c5260c4a3bc480.md) | 402 | `result-track:d96f978a37c5260c4a3bc480412f0af7e1d385619698ed47adc813331e12325b` |
| 34 | `instance` | [GradeZero.nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gradezero-nonunitalnonassocsemiring--197f316cdf4b63a589cbd5e0.md) | 405 | `declaration-track:197f316cdf4b63a589cbd5e02c107da066552ba90124ce9d890f1628818b324d` |
| 35 | `instance` | [GradeZero.smulWithZero](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gradezero-smulwithzero--ce3398819f2e3ce4fb42f4a0.md) | 409 | `declaration-track:ce3398819f2e3ce4fb42f4a0cfeaae7d82aa8527ba0f5318f1f2527971a91ba0` |
| 36 | `theorem` | [of_zero_pow](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/of-zero-pow--8d2bbd6e211a2b8a42afc692.md) | 421 | `result-track:8d2bbd6e211a2b8a42afc6921f5a2f604860f34b945d48fac271b144812688a9` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/instance--83d0f6b9bc85daf9c231298c.md) | 426 | `declaration-track:83d0f6b9bc85daf9c231298c73608818cfeebaaa585462cb9ef296e7b23fcfcf` |
| 38 | `theorem` | [of_natCast](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/of-natcast--e18c763f80ff4bf6c9ad7704.md) | 433 | `result-track:e18c763f80ff4bf6c9ad7704c136c90dc78fd9234bc2a2ac8aae88aa375deb2d` |
| 39 | `theorem` | [of_zero_ofNat](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/of-zero-ofnat--3ac4c0b24ac41b8ed6b601d0.md) | 437 | `result-track:3ac4c0b24ac41b8ed6b601d076c509e3deb10c5892fe24338f6e99ef9eb404f9` |
| 40 | `instance` | [GradeZero.semiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gradezero-semiring--0a8799e2ac834a1a281991f2.md) | 441 | `declaration-track:0a8799e2ac834a1a281991f2abf760227d78e930fbf6ea50a73bfebe9c506a18` |
| 41 | `def` | [ofZeroRingHom](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/ofzeroringhom--f89a8c36177ecef998007049.md) | 447 | `declaration-track:f89a8c36177ecef9980070492511fb350823094f2bedf1e85add95e4f394d215` |
| 42 | `instance` | [GradeZero.module](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gradezero-module--82b675c2dd2635f909ca6d66.md) | 455 | `declaration-track:82b675c2dd2635f909ca6d668f6f6e2c8bed7897bab79eb33315a08eff53b74d` |
| 43 | `instance` | [GradeZero.commSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gradezero-commsemiring--9ef6d9a4ce91efb5be540c1f.md) | 466 | `declaration-track:9ef6d9a4ce91efb5be540c1ffedc7b198aab9ec4c5a61867e8698d4520ca6638` |
| 44 | `instance` | [GradeZero.nonUnitalNonAssocRing](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gradezero-nonunitalnonassocring--da2f8d438d37be9bbc0c005d.md) | 478 | `declaration-track:da2f8d438d37be9bbc0c005df0fbc8c396cdb29769685a3b2dc2865bd409b822` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/instance--51c36c0ab23ece95e95f90cf.md) | 489 | `declaration-track:51c36c0ab23ece95e95f90cf7fe185e6d295af35ddae23f908c8cf5272492736` |
| 46 | `theorem` | [of_intCast](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/of-intcast--3fd6dd1d78eb1eb3799600be.md) | 493 | `result-track:3fd6dd1d78eb1eb3799600beafcb503b2351b2e49bbaf04a9fa1f238b03fab34` |
| 47 | `instance` | [GradeZero.ring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gradezero-ring--02fad707321306ffff34d697.md) | 497 | `declaration-track:02fad707321306ffff34d69716cf249bec0305a16dc036c62c7af6962a8ff3df` |
| 48 | `instance` | [GradeZero.commRing](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/gradezero-commring--b3c189a7f795408a2b5858c6.md) | 509 | `declaration-track:b3c189a7f795408a2b5858c659094c4a70b50529d09372b8ed209f0d81cda67f` |
| 49 | `theorem` | [ringHom_ext'](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/ringhom-ext--526889aee635abbb7e81be4a.md) | 528 | `result-track:526889aee635abbb7e81be4a1c1b06a15ea98de1ea711d93d7f5e8d2d325261b` |
| 50 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/ringhom-ext--1c9c96a1e51ea24b02f27a7a.md) | 533 | `result-track:1c9c96a1e51ea24b02f27a7ab36d8901aa37a1e3d27bd79dea751a6f11c6fbef` |
| 51 | `def` | [toSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/tosemiring--efecdeb38610c7990f636002.md) | 544 | `declaration-track:efecdeb38610c7990f63600200df1e7a31e21d49865c5b0cb10f8fdb1066e3a9` |
| 52 | `theorem` | [toSemiring_of](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/tosemiring-of--a410b3e52ca0dcdb45edf622.md) | 563 | `result-track:a410b3e52ca0dcdb45edf622cd5111a8f7556f815b2f4bd3be2d660f7bf877cd` |
| 53 | `theorem` | [toSemiring_coe_addMonoidHom](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/tosemiring-coe-addmonoidhom--d1b3700ccda2a8b0f731d061.md) | 568 | `result-track:d1b3700ccda2a8b0f731d061d52284045535d00c3bad0737d2436d2c25c48d17` |
| 54 | `def` | [liftRingHom](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/liftringhom--df94e780199ab8860c2d83ba.md) | 576 | `declaration-track:df94e780199ab8860c2d83bac8d3fc79d86e52d90c7eb0bfcb3a30b2995e4834` |
| 55 | `instance` | [NonUnitalNonAssocSemiring.directSumGNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/nonunitalnonassocsemiring-directsumgnonunitalnonassocsemiring--43a0fe67d2a3d1b0b5d33024.md) | 614 | `declaration-track:43a0fe67d2a3d1b0b5d33024a09b40807909c0a67f00a6831c9e04d49310a5df` |
| 56 | `instance` | [Semiring.directSumGSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/semiring-directsumgsemiring--7a1f3a8191c0e6771f55aa5e.md) | 623 | `declaration-track:7a1f3a8191c0e6771f55aa5eee9bc0d889fabb7d9c1efbfa2f87351e127fdd8b` |
| 57 | `instance` | [Ring.directSumGRing](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/ring-directsumgring--e6a9773a8fbae833bbc6dbf9.md) | 632 | `declaration-track:e6a9773a8fbae833bbc6dbf963101179c643f52a655e265cf31c8aefd6098e9f` |
| 58 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/example--6aea93ef1337904e1c807369.md) | 642 | `declaration-track:6aea93ef1337904e1c807369c897bfd625552db4e2a59417c200256fc78d289e` |
| 59 | `instance` | [CommSemiring.directSumGCommSemiring](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/commsemiring-directsumgcommsemiring--08aaf6c1154b8f06663c9383.md) | 647 | `declaration-track:08aaf6c1154b8f06663c9383e3815009be26b1db932e7521891c79a3724c531e` |
| 60 | `instance` | [CommRing.directSumGCommRing](../../../../mathematics/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/declarations/commring-directsumgcommring--26bd1079c1161e45f38bc056.md) | 653 | `declaration-track:26bd1079c1161e45f38bc05623bbcab6a1b783b63cc78fdea2d60cc6bc24bc1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
