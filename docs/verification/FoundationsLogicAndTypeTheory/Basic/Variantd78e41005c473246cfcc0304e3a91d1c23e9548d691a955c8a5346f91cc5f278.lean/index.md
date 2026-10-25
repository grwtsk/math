# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b89fb4ba0559dd3d97a3fdd28e238be0c6756cc",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b89fb4ba0559dd3d97a3fdd28e238be0c6756cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose--7f86ce4417f0b4a7a72b86b4.md) | 54 | `declaration-track:7f86ce4417f0b4a7a72b86b4799eea502efa03b598a842cb4f384cfaa3699b60` |
| 2 | `theorem` | [choose_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-zero-right--8a8808d44cc2ebb88338f4c5.md) | 61 | `result-track:8a8808d44cc2ebb88338f4c5001fb80d004e165ab8cc321f3f69e4726020e7bc` |
| 3 | `theorem` | [choose_zero_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-zero-succ--256efc52425c83e27af04f6a.md) | 65 | `result-track:256efc52425c83e27af04f6a01dd23c93013ed9abafe434f0e49c7c69b209641` |
| 4 | `theorem` | [choose_succ_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-succ-succ--3dce618fb0237a2cb0e2e67a.md) | 69 | `result-track:3dce618fb0237a2cb0e2e67ad6e02010f74a9f88265bc46f18d643fcd5533d69` |
| 5 | `theorem` | [choose_succ_succ'](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-succ-succ--8ad28bbf9727a1714f030052.md) | 73 | `result-track:8ad28bbf9727a1714f030052b04257e31c697336509db1b3084a52fa69b82d85` |
| 6 | `theorem` | [choose_eq_zero_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-eq-zero-of-lt--6dc01d13f20d794ba968552f.md) | 76 | `result-track:6dc01d13f20d794ba968552fa77eccb361974d196b8f41d0f93809d196b4b13f` |
| 7 | `theorem` | [choose_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-self--fffed611d8aa34cb8867faef.md) | 86 | `result-track:fffed611d8aa34cb8867faef2287618a7ee65f0135dd13b47d8f4d3dc767cf4f` |
| 8 | `theorem` | [choose_succ_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-succ-self--1ae09c3797386b63c2a8e072.md) | 91 | `result-track:1ae09c3797386b63c2a8e0722f5d2f673c88dc4e4fc75650210bf8873a43050b` |
| 9 | `theorem` | [choose_one_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-one-right--619fe8272fdc42363255a42a.md) | 96 | `result-track:619fe8272fdc42363255a42a034ca037743ec27c0912d972e53078821a3506f5` |
| 10 | `theorem` | [triangle_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/triangle-succ--000f23ff52a216ac256ae5bb.md) | 100 | `result-track:000f23ff52a216ac256ae5bb802341d690251e7364e9a7eb86b0ef704adb5599` |
| 11 | `theorem` | [choose_two_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-two-right--cd1cbd42b8ea4ca2165f2e7b.md) | 106 | `result-track:cd1cbd42b8ea4ca2165f2e7b5e8a80ce61a2f721fcd148b26130c7a062d2da68` |
| 12 | `theorem` | [choose_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-pos--ed0fff20fd426147a8910816.md) | 113 | `result-track:ed0fff20fd426147a8910816b22814e64e24d06c60188ab5efc894e1b129cd72` |
| 13 | `theorem` | [choose_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-eq-zero-iff--34b404b6a93ae95ce43dcd0c.md) | 121 | `result-track:34b404b6a93ae95ce43dcd0c27a1df240a90d6014f737f3bde99c52cb1148011` |
| 14 | `theorem` | [succ_mul_choose_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/succ-mul-choose-eq--a4f448368fec5634c828688b.md) | 125 | `result-track:a4f448368fec5634c828688b56c2a70db52903c5714a73edeb4e4291b2185822` |
| 15 | `theorem` | [choose_mul_factorial_mul_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-mul-factorial-mul-factorial--a9f36fd50e60fac53b7af952.md) | 134 | `result-track:a9f36fd50e60fac53b7af952fb599052792cf235a13959d837d72705cd86b419` |
| 16 | `theorem` | [choose_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-mul--2dc999f144958387ee98d446.md) | 154 | `result-track:2dc999f144958387ee98d446a0b860f8b10de3a8ad08bf240c85f7beabe6efc4` |
| 17 | `theorem` | [choose_eq_factorial_div_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-eq-factorial-div-factorial--847db66cdcc399b716fbc842.md) | 173 | `result-track:847db66cdcc399b716fbc8427b080824bc106797a7dd6887783722f9b0ea0698` |
| 18 | `theorem` | [add_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/add-choose--7ed2739c28ceb7f1deed756e.md) | 179 | `result-track:7ed2739c28ceb7f1deed756e5fb06b2f76db878095b285b743915302238a2128` |
| 19 | `theorem` | [add_choose_mul_factorial_mul_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/add-choose-mul-factorial-mul-factorial--de215eca630e80da2f5532c1.md) | 183 | `result-track:de215eca630e80da2f5532c1b5fb22cacfa7c682f8fbffde2bb07294406ca293` |
| 20 | `theorem` | [factorial_mul_factorial_dvd_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/factorial-mul-factorial-dvd-factorial--5cde397b8ca774c36e59121b.md) | 189 | `result-track:5cde397b8ca774c36e59121b5b6518bb796a59a51f9036aa754bbf9ecd513eb9` |
| 21 | `theorem` | [factorial_mul_factorial_dvd_factorial_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/factorial-mul-factorial-dvd-factorial-add--48de500a62f4e3aea0503042.md) | 193 | `result-track:48de500a62f4e3aea050304208ea48b9de449daf77096737e0c9d14cca3652dc` |
| 22 | `theorem` | [choose_symm](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-symm--b5ec00326e86abd942b96a74.md) | 200 | `result-track:b5ec00326e86abd942b96a74ad1da636c08179e349eab9dd62dfb5a731009c86` |
| 23 | `theorem` | [choose_symm_of_eq_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-symm-of-eq-add--57dfbb8d0eea9e3c99e1a5e9.md) | 205 | `result-track:57dfbb8d0eea9e3c99e1a5e9d5a6d23186d78cc8b8d2ed675466537fb1270cf9` |
| 24 | `theorem` | [choose_symm_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-symm-add--2a03d44a375b8f8effc32885.md) | 211 | `result-track:2a03d44a375b8f8effc328859edfbe8556c97f9ff19a9b651285ce4bbf3707e8` |
| 25 | `theorem` | [choose_symm_half](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-symm-half--614fbdd236193c26869f5ae5.md) | 215 | `result-track:614fbdd236193c26869f5ae5cd726b4957485892b05e2e96601265f4827d5c60` |
| 26 | `theorem` | [choose_succ_right_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-succ-right-eq--10006a5f26d94623cbe8e741.md) | 220 | `result-track:10006a5f26d94623cbe8e74193533b7c809e037125d8da9c46a174fea05ef0ac` |
| 27 | `theorem` | [choose_succ_self_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-succ-self-right--339c622342f778703756ee07.md) | 227 | `result-track:339c622342f778703756ee07d07955773b675714a5a43b1ba85bee13cdce5c79` |
| 28 | `theorem` | [choose_mul_succ_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-mul-succ-eq--5afe592529dee8ba46bf19be.md) | 232 | `result-track:5afe592529dee8ba46bf19be42d7d9922435ca65560d7d009794ce495cb36612` |
| 29 | `theorem` | [ascFactorial_eq_factorial_mul_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/ascfactorial-eq-factorial-mul-choose--ebb10b641941b96e0a9d9dc6.md) | 243 | `result-track:ebb10b641941b96e0a9d9dc6399123615e61881030634994d5980224ce2e1cca` |
| 30 | `theorem` | [factorial_dvd_ascFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/factorial-dvd-ascfactorial--06409a497a532c252d90baaf.md) | 252 | `result-track:06409a497a532c252d90baaf16dea1114f6a403700346aee90fdf28e026b81aa` |
| 31 | `theorem` | [choose_eq_asc_factorial_div_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-eq-asc-factorial-div-factorial--696e482fe485f43a34185352.md) | 256 | `result-track:696e482fe485f43a341853523844f85cdad17f5592326dffd8b0291a9544bcaf` |
| 32 | `theorem` | [descFactorial_eq_factorial_mul_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/descfactorial-eq-factorial-mul-choose--de7d764388ac9bcdb01d10d4.md) | 263 | `result-track:de7d764388ac9bcdb01d10d4b5ae0500d7da28e0734e33d46d6c999ea5da2f49` |
| 33 | `theorem` | [factorial_dvd_descFactorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/factorial-dvd-descfactorial--27317d7c0345ac35c9abdcfe.md) | 271 | `result-track:27317d7c0345ac35c9abdcfe7fc43d8864e2d7ba2ee9384bde2e44ed5d184c66` |
| 34 | `theorem` | [choose_eq_descFactorial_div_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-eq-descfactorial-div-factorial--e010cbf0ba9e552e813cc10b.md) | 275 | `result-track:e010cbf0ba9e552e813cc10b6f2d706a910fe42e75975c047851706fa3e5fd3c` |
| 35 | `def` | [fast_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/fast-choose--be729cb489e66ad7e55b2c48.md) | 283 | `declaration-track:be729cb489e66ad7e55b2c489547a27e43e01d27dc9353bb126ddbf58388e2f2` |
| 36 | `lemma` | [choose_eq_fast_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-eq-fast-choose--f9c7299e46b6400fa914e5de.md) | 285 | `result-track:f9c7299e46b6400fa914e5de75c57424d0db1445a4ada62f79facc445a1c399e` |
| 37 | `theorem` | [choose_le_succ_of_lt_half_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-le-succ-of-lt-half-left--1c67c47e38dfbebc6faf61aa.md) | 293 | `result-track:1c67c47e38dfbebc6faf61aa1bda696f628e44df4884e9c3ab99c3da42a9b1b2` |
| 38 | `theorem` | [choose_le_middle_of_le_half_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-le-middle-of-le-half-left--c0455f55e08e4da7bc39e2d1.md) | 303 | `result-track:c0455f55e08e4da7bc39e2d17779d3e5d5d8df88a6b7b57854d9032a9c9cfce4` |
| 39 | `theorem` | [choose_le_middle](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-le-middle--84a5215895154e04c5f1ad9e.md) | 312 | `result-track:84a5215895154e04c5f1ad9e384407badbd9b3d495d6c9cd70360d6eb566cac1` |
| 40 | `theorem` | [choose_le_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-le-succ--4bc065eaf524fde2ee7bf812.md) | 329 | `result-track:4bc065eaf524fde2ee7bf812cd24f8fb93b52a4d0b9bd66964a53f8713d4936e` |
| 41 | `theorem` | [choose_le_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-le-add--528e8ebd1a32fb969a5068cd.md) | 333 | `result-track:528e8ebd1a32fb969a5068cd3e96135361eb9c502b1493230b16789bc831e0fd` |
| 42 | `theorem` | [choose_le_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-le-choose--81c6bb7c42f2b2d2d83746bf.md) | 339 | `result-track:81c6bb7c42f2b2d2d83746bf480187bc20905dee7c7de00b50ee39939bc7a063` |
| 43 | `theorem` | [choose_mono](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/choose-mono--41fede7415b0b748a6b9d35e.md) | 343 | `result-track:41fede7415b0b748a6b9d35e8e8c1c0c5a0bb7776838571c7f5db379c1208172` |
| 44 | `def` | [multichoose](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/multichoose--202e0f069fae0fd8dfac7fb7.md) | 368 | `declaration-track:202e0f069fae0fd8dfac7fb77a7e62f1446dbc171849130aece2de75c1c858ca` |
| 45 | `theorem` | [multichoose_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/multichoose-zero-right--bf5cd502ca1043d605abdbb3.md) | 377 | `result-track:bf5cd502ca1043d605abdbb3f35df411c9650e290edc46c17f65f5363361f531` |
| 46 | `theorem` | [multichoose_zero_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/multichoose-zero-succ--fd81fd5e63317ddff32060a0.md) | 381 | `result-track:fd81fd5e63317ddff32060a0c5318dafd7fd8e60c132289a6a3b69075f779d91` |
| 47 | `theorem` | [multichoose_succ_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/multichoose-succ-succ--c65ca4d3c919429d8b0ea6ec.md) | 384 | `result-track:c65ca4d3c919429d8b0ea6ec11e79a6afca1f325cb9894f16541fdd17ca17d02` |
| 48 | `theorem` | [multichoose_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/multichoose-one--294cd94dc5454ac94a2945bc.md) | 390 | `result-track:294cd94dc5454ac94a2945bc8752302787041007cfa6e1b5229206eb2f8a99ba` |
| 49 | `theorem` | [multichoose_two](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/multichoose-two--6e5044faf638ce4c6d67b9dc.md) | 396 | `result-track:6e5044faf638ce4c6d67b9dc040cd4ecb7479d803586381dd06bc836602a3258` |
| 50 | `theorem` | [multichoose_one_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/multichoose-one-right--5840c3f5927ecaffffe5b161.md) | 403 | `result-track:5840c3f5927ecaffffe5b161e0cb997fd422977b039f9934a3c87d79c9279652` |
| 51 | `theorem` | [multichoose_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variantd78e41005c473246cfcc0304e3a91d1c23e9548d691a955c8a5346f91cc5f278.lean/declarations/multichoose-eq--87986d6a1f7cd1851a17044d.md) | 408 | `result-track:87986d6a1f7cd1851a17044db79e353e3c5b71185d798e46475167b6ceeab0c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
