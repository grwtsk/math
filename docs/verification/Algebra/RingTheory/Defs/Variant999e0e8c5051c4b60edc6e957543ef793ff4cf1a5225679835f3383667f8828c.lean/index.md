# Verification target: GRWTSK.Algebra.RingTheory.Defs.Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0ed4f76ef10cb6501f11168ebbda152f901aea8",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0ed4f76ef10cb6501f11168ebbda152f901aea8`.

Source path: `GRWTSK/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.StructurePolynomial` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WittVector](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittvector--eb3b6c0375cdfeaff8dd7ae9.md) | 56 | `declaration-track:eb3b6c0375cdfeaff8dd7ae972f7e51ad583805cfaeafafffe97c730898fdafb` |
| 2 | `def` | [WittVector.mk](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittvector-mk--2a8f796c355919b2ba56f6f2.md) | 65 | `declaration-track:2a8f796c355919b2ba56f6f2886d9808de7256dfed5a1cc370346cad797103d4` |
| 3 | `theorem` | [ext](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/ext--15e228ef72e438e070a9cbd6.md) | 79 | `result-track:15e228ef72e438e070a9cbd6d133ce4d589aba98020df32f39d7fec142d97425` |
| 4 | `theorem` | [coeff_mk](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/coeff-mk--ac4646bdc75c002a289849b6.md) | 87 | `result-track:ac4646bdc75c002a289849b6217ed9373b8c0a96688d6951664f30cc64bdcfa4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--b3fdad302c5cf2170ef2591b.md) | 92 | `declaration-track:b3fdad302c5cf2170ef2591bbac4b5c8718daab776d4d3425e87895151ebfcc3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--6fc645fc177ead419fbd39a4.md) | 96 | `declaration-track:6fc645fc177ead419fbd39a40e0cbcf56c1af8e86d52b14c1398f6dfecaf0890` |
| 7 | `def` | [wittZero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittzero--a2b1eb06dfdbcb28ef73507b.md) | 109 | `declaration-track:a2b1eb06dfdbcb28ef73507b66481f6ab7726c5509e6a36d0c6875f236c2a2e2` |
| 8 | `def` | [wittOne](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittone--577c8fc124744e099462cf8d.md) | 113 | `declaration-track:577c8fc124744e099462cf8dd77bad131407b036931585b2a0325a8422f09261` |
| 9 | `def` | [wittAdd](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittadd--957509d7f3452e512abd3baa.md) | 117 | `declaration-track:957509d7f3452e512abd3baa62fd7f4e21b65e46d275f50f5d6c520b172809ae` |
| 10 | `def` | [wittNSMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittnsmul--21da54d77eba2cb91a6b5d94.md) | 121 | `declaration-track:21da54d77eba2cb91a6b5d94fc2480e04fe0b2b06ab7df7c01d976fea45e2fab` |
| 11 | `def` | [wittZSMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittzsmul--75c7dc6ce54c01a83a3d1c6c.md) | 125 | `declaration-track:75c7dc6ce54c01a83a3d1c6cea48318f708dfd011ef3be1b4c9e3f86ef92a71c` |
| 12 | `def` | [wittSub](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittsub--7d23c94380f493b171759cf1.md) | 129 | `declaration-track:7d23c94380f493b171759cf1b9db691a29c5ef8336dc514507a54d2fbcec7ba7` |
| 13 | `def` | [wittMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittmul--7fb93749ebe5e83a536d5898.md) | 133 | `declaration-track:7fb93749ebe5e83a536d5898757fee02288935d6d406d81dbefb5eb26b840e52` |
| 14 | `def` | [wittNeg](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittneg--1623cc57bd68244cfa4e1495.md) | 137 | `declaration-track:1623cc57bd68244cfa4e149538b1e2bf52d3267dd1a3409a85b7dc9f55af73ed` |
| 15 | `def` | [wittPow](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittpow--8fa8f450ecb0c8d9d45400ca.md) | 141 | `declaration-track:8fa8f450ecb0c8d9d45400ca73c9ff2471398e9b07cab6471863e8be33f4a4f3` |
| 16 | `def` | [peval](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/peval--2d25306a225a389c2e4ab39d.md) | 151 | `declaration-track:2d25306a225a389c2e4ab39dadc8c260e1a871840e2195e4d93a4746345d8cd2` |
| 17 | `def` | [eval](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/eval--2f71026937bac9622ce38c2b.md) | 164 | `declaration-track:2f71026937bac9622ce38c2bdb97ddc9bf4639f6b761dcca188dd56a94ae5837` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--9335f97c649c0946ad064926.md) | 167 | `declaration-track:9335f97c649c0946ad064926c65894614e7f745f9bbb165d807c3c01cfd00af4` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--68c2fcbf04c4d8e3a1be3f54.md) | 170 | `declaration-track:68c2fcbf04c4d8e3a1be3f5404c84abbc5019f96dea5ceb55c0dad728f5cad82` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--d24dbbb4cbca34bd42ac073c.md) | 173 | `declaration-track:d24dbbb4cbca34bd42ac073cd5c4e8f058f44f04fba66fd95b03c1dc48d49d00` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--6f028ad08f4a59e61b60aeee.md) | 176 | `declaration-track:6f028ad08f4a59e61b60aeee942d8dce80799b3c2d354e76673e3791e2498b7e` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--d4cbe3536af9aae8c7f1d102.md) | 179 | `declaration-track:d4cbe3536af9aae8c7f1d1029560ff5de478856825ec1cdd56041b8650198dd7` |
| 23 | `instance` | [hasNatScalar](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/hasnatscalar--65110713696836c59a2d0d9f.md) | 182 | `declaration-track:65110713696836c59a2d0d9fbf788c64aeccbc6ee921a5dddde196ee85504b14` |
| 24 | `instance` | [hasIntScalar](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/hasintscalar--20aa935638fbba2c34c7a693.md) | 185 | `declaration-track:20aa935638fbba2c34c7a6938a61e8f37f9ae69e8af16d2930a21a1fd49a7968` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--ce37f874a078ecf222d013d0.md) | 188 | `declaration-track:ce37f874a078ecf222d013d01558fd48e17c2921d512f6a71e5ed7c3c460560f` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--979a6a6db73bad6190cba4c0.md) | 191 | `declaration-track:979a6a6db73bad6190cba4c075032b973d5c57655562cf9c025c605e8cd4f613` |
| 27 | `instance` | [hasNatPow](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/hasnatpow--98ee0d44c854551497353731.md) | 194 | `declaration-track:98ee0d44c854551497353731daf494e09f5a749848cc581774858ff431d80b67` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--04cc570f89e0a3a1915957ef.md) | 197 | `declaration-track:04cc570f89e0a3a1915957ef5becf68b3cd12865314d322347407ece45093a44` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/instance--a14415e04cb49f066f5749db.md) | 200 | `declaration-track:a14415e04cb49f066f5749db3355f12e5a6f422742f65c9178adb8b3040128aa` |
| 30 | `theorem` | [wittZero_eq_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittzero-eq-zero--cc5625f75ca65daf063a1d09.md) | 208 | `result-track:cc5625f75ca65daf063a1d0932405669f716e2c452ea1a115c1f00b9915f7568` |
| 31 | `theorem` | [wittOne_zero_eq_one](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittone-zero-eq-one--17ae87d15116a72f6557bacb.md) | 214 | `result-track:17ae87d15116a72f6557bacbbdcc1311b179e654e629278caa0bffc2c02a4534` |
| 32 | `theorem` | [wittOne_pos_eq_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittone-pos-eq-zero--dd1a6391e6acdedc03830ba7.md) | 220 | `result-track:dd1a6391e6acdedc03830ba7e9bad58955ec1d03bed307040b0a72a9e4821d5e` |
| 33 | `theorem` | [wittAdd_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittadd-zero--4d7ded81e7ff83f0d182d371.md) | 238 | `result-track:4d7ded81e7ff83f0d182d371849f66568367d49e213715edc106cb984946e8ab` |
| 34 | `theorem` | [wittSub_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittsub-zero--15aaa53c3fb0ff210bcbceef.md) | 244 | `result-track:15aaa53c3fb0ff210bcbceefc67421905627960233e090e1350f7fb34862428a` |
| 35 | `theorem` | [wittMul_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittmul-zero--2871a617ea9f8badc156ae6a.md) | 250 | `result-track:2871a617ea9f8badc156ae6a5797cb21a11f2bf9412eee539d91a2b2364e4d6b` |
| 36 | `theorem` | [wittNeg_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittneg-zero--6da4e16c9ccce2be290c1216.md) | 256 | `result-track:6da4e16c9ccce2be290c1216e61ac3f14c8686bcf5157172ae931f8d0eb95a0a` |
| 37 | `theorem` | [constantCoeff_wittAdd](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/constantcoeff-wittadd--c89459c197b4844ff255d23b.md) | 262 | `result-track:c89459c197b4844ff255d23b55803869f1d1e524ba2121d988f378ed5b668a19` |
| 38 | `theorem` | [constantCoeff_wittSub](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/constantcoeff-wittsub--fc8bb479c8cd9f629006b92a.md) | 267 | `result-track:fc8bb479c8cd9f629006b92aa0e1d40196230034ff5d1e5a5d9a268b08395aa7` |
| 39 | `theorem` | [constantCoeff_wittMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/constantcoeff-wittmul--831f32096297f3d76e48e316.md) | 272 | `result-track:831f32096297f3d76e48e3167b2ff7ca5b77467e62863a5078901799cfc83b8c` |
| 40 | `theorem` | [constantCoeff_wittNeg](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/constantcoeff-wittneg--11f57128b43654d7597dc8f1.md) | 277 | `result-track:11f57128b43654d7597dc8f1aa4784f66e52fa4e9c1e90435176fa447c87c556` |
| 41 | `theorem` | [constantCoeff_wittNSMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/constantcoeff-wittnsmul--1c801fd4eadd8cec7399d517.md) | 282 | `result-track:1c801fd4eadd8cec7399d517b10a52a2a94b01d68faa67c64cd8eb925b6d9ff5` |
| 42 | `theorem` | [constantCoeff_wittZSMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/constantcoeff-wittzsmul--dd055604df8a95747e9eb51d.md) | 287 | `result-track:dd055604df8a95747e9eb51d86e5c71f55f4482a099f1d0e0a4a2c585423dbaa` |
| 43 | `theorem` | [zero_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/zero-coeff--ddbe99af11ec1bb5c9501da8.md) | 298 | `result-track:ddbe99af11ec1bb5c9501da833a2aab4f97adca4449caad12f80764f6f014d92` |
| 44 | `theorem` | [one_coeff_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/one-coeff-zero--dfff829fb168834c8a35cbd8.md) | 302 | `result-track:dfff829fb168834c8a35cbd83e9ed33fe77bb9074d5f931e1f2d71b05abb8e9c` |
| 45 | `theorem` | [one_coeff_eq_of_pos](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/one-coeff-eq-of-pos--002504ed0f93e3cd483348aa.md) | 306 | `result-track:002504ed0f93e3cd483348aa20d9b62ca10ea23a09738d6f6b6298553c4fd1e8` |
| 46 | `theorem` | [v2_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/v2-coeff--63e97abf530f4bf5c35078e1.md) | 312 | `result-track:63e97abf530f4bf5c35078e1699c689d28e596655ef79ad731199bd62d79a771` |
| 47 | `theorem` | [add_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/add-coeff--ab23242563d5aa22d4bcb451.md) | 317 | `result-track:ab23242563d5aa22d4bcb451dafd821cd691b37d77c4770f7a9f60f99ca1a5d3` |
| 48 | `theorem` | [sub_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/sub-coeff--bbee03a0fb01add9c297c3fb.md) | 321 | `result-track:bbee03a0fb01add9c297c3fb35b812745a8d0612d0f1d9c0c614ed1e9b94794a` |
| 49 | `theorem` | [mul_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/mul-coeff--cc1b4f874babe43db8a626b0.md) | 325 | `result-track:cc1b4f874babe43db8a626b0c01dc0cff9e97f2e5a5155c09214c17420dae8c8` |
| 50 | `theorem` | [neg_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/neg-coeff--788b2e6400f7d30dbd379bd5.md) | 329 | `result-track:788b2e6400f7d30dbd379bd5f80b3843acb5294d541eb3d408c0f40c5eaa14b3` |
| 51 | `theorem` | [nsmul_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/nsmul-coeff--29480690877a2499866de017.md) | 332 | `result-track:29480690877a2499866de01799790cc4eaa49a081fecb7ca6ed54e257610b826` |
| 52 | `theorem` | [zsmul_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/zsmul-coeff--6938e2e3fa291f995aff0b65.md) | 336 | `result-track:6938e2e3fa291f995aff0b65ab8d3e3e684c1d9d9ecb43ecfa254d9edf0268a7` |
| 53 | `theorem` | [pow_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/pow-coeff--f0584b0b95116921995344ba.md) | 340 | `result-track:f0584b0b95116921995344baff13fc2416a8ed0bca5b6fb893bd6dfaaa6e1598` |
| 54 | `theorem` | [add_coeff_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/add-coeff-zero--a145c9053325122bbd9c8370.md) | 344 | `result-track:a145c9053325122bbd9c8370ef4986535e0593568426933b151b9bde82a32c07` |
| 55 | `theorem` | [mul_coeff_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/mul-coeff-zero--308fafd35c72aa09dba6ac43.md) | 347 | `result-track:308fafd35c72aa09dba6ac433050f37fee274e436374c830fe0b260644d0fe4f` |
| 56 | `theorem` | [wittAdd_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittadd-vars--bb0c238fab0d077af388b582.md) | 352 | `result-track:bb0c238fab0d077af388b582d8431a9729b0648f92003eefd518864f030786fa` |
| 57 | `theorem` | [wittSub_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittsub-vars--05710155017bc65dae0f790c.md) | 355 | `result-track:05710155017bc65dae0f790c90498636a4af924812a2dc005d0c178f7b96535d` |
| 58 | `theorem` | [wittMul_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittmul-vars--8bb554eb58f55f787bc2670b.md) | 358 | `result-track:8bb554eb58f55f787bc2670b9a488a4824aab2b6234104c8f2ca3d940d51f523` |
| 59 | `theorem` | [wittNeg_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittneg-vars--1a65a0cb60dc9a1f04525160.md) | 361 | `result-track:1a65a0cb60dc9a1f045251602a3aa60a123b3261c63b9bd1e9a50c8c16f873c6` |
| 60 | `theorem` | [wittNSMul_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittnsmul-vars--0cab54d09c43c9d1ab7c1959.md) | 364 | `result-track:0cab54d09c43c9d1ab7c1959c5caf7cf3d1ddb13f168b25a646c66553f6615cc` |
| 61 | `theorem` | [wittZSMul_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittzsmul-vars--74d7dc38e645e5234a6c51d5.md) | 368 | `result-track:74d7dc38e645e5234a6c51d5e667999a2b806e2c6c9bf50fd77be87310bdd51e` |
| 62 | `theorem` | [wittPow_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant999e0e8c5051c4b60edc6e957543ef793ff4cf1a5225679835f3383667f8828c.lean/declarations/wittpow-vars--0a9d616a4776124f9ec1698e.md) | 372 | `result-track:0a9d616a4776124f9ec1698e2df992f3c6dcc054c1d3902ab1d72000dd5d9ea1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
