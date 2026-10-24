# Verification target: GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2462a35ddac26d0c9c2d20b4caaac4db5daf757b",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2462a35ddac26d0c9c2d20b4caaac4db5daf757b`.

Source path: `GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoNonunitKernelPair`](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twoKernelRegularOrbitRepresentativeSet](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twokernelregularorbitrepresentativeset--cb18236392080fbb50e34358.md) | 46 | `declaration-track:cb18236392080fbb50e3435841bf2d871edda9db27b489e046873b39a6a00c32` |
| 2 | `theorem` | [twoKernelPartner_ne_self](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twokernelpartner-ne-self--387edb1c4eae075d286ec82b.md) | 54 | `result-track:387edb1c4eae075d286ec82b790f4060a7d900a70f85f55a12fa9817bbaa1dbf` |
| 3 | `theorem` | [twoKernelPartner_injective](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twokernelpartner-injective--d590902735a603c8697a5570.md) | 67 | `result-track:d590902735a603c8697a557044fcc6e3919be0519f58d484af2d7f993c2639a0` |
| 4 | `theorem` | [twoKernelFrequency_mem_nonzeroSet](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twokernelfrequency-mem-nonzeroset--70ad51ac99f914cc1f6372dc.md) | 80 | `result-track:70ad51ac99f914cc1f6372dc69d3449f682ccda0be24a3e2c89f22c1f55a42d4` |
| 5 | `theorem` | [representative_ne_zero](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/representative-ne-zero--10a00f3f48a1c2b63949ce14.md) | 88 | `result-track:10a00f3f48a1c2b63949ce14b30a3b2777e8124f61122c7314fe66871c8bf2fd` |
| 6 | `theorem` | [representative_partner_ne_zero](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/representative-partner-ne-zero--3db99d93e19be11de744e8f2.md) | 96 | `result-track:3db99d93e19be11de744e8f253730e4457e5321f869e2b69e1ca5f3427dabfdf` |
| 7 | `theorem` | [partner_not_mem_representativeSet](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/partner-not-mem-representativeset--49b83c1bcb629e8faa10c992.md) | 104 | `result-track:49b83c1bcb629e8faa10c992692bdf43301bbf111345c99c93e09325e7da4165` |
| 8 | `theorem` | [regularFrequency_representative_or_partner](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/regularfrequency-representative-or-partner--41047cde157092031636988b.md) | 118 | `result-track:41047cde157092031636988b2801d5e7fc948a97cc1bb5809d8694e604538ea5` |
| 9 | `theorem` | [representative_partner_ne](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/representative-partner-ne--c18aeb7ee43d271bd01d4e47.md) | 152 | `result-track:c18aeb7ee43d271bd01d4e471e2a6e53a38f6aa7191e0e9a448290dba576993c` |
| 10 | `theorem` | [nonzeroFrequencySet_eq_exceptional_union_regularOrbits](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/nonzerofrequencyset-eq-exceptional-union-regularorbits--c751212e9a3e3fc2a0f9bd4d.md) | 162 | `result-track:c751212e9a3e3fc2a0f9bd4d32502f77065956a7a857ccd86757518c882f218e` |
| 11 | `theorem` | [exceptional_not_mem_representativeSet](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/exceptional-not-mem-representativeset--c03da711ae44df1e6b686f23.md) | 200 | `result-track:c03da711ae44df1e6b686f23565b72c890084d4faa18824c948470fd226ae00c` |
| 12 | `theorem` | [representativeSet_disjoint_partnerImage](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/representativeset-disjoint-partnerimage--3bc96723bad870364c7b0dde.md) | 209 | `result-track:3bc96723bad870364c7b0dde833ba3cd0577dd32fd1f44aa1c3336f6fe837cec` |
| 13 | `theorem` | [exceptional_not_mem_partnerImage](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/exceptional-not-mem-partnerimage--0de538e2235a351fdbf5d104.md) | 223 | `result-track:0de538e2235a351fdbf5d10436d4725decd9e2d7a5ef50cb2b0bc75633eb4c28` |
| 14 | `theorem` | [sum_nonzeroFrequencies_eq_exceptional_add_regularOrbits](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/sum-nonzerofrequencies-eq-exceptional-add-regularorbits--4569996b4fa290bc9148370c.md) | 241 | `result-track:4569996b4fa290bc9148370ceb0bd063a2484dd2ceddc5696590468349cd1e6e` |
| 15 | `theorem` | [doubledSquareModulusFrequency_kernel_eq_zero](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/doubledsquaremodulusfrequency-kernel-eq-zero--7b244a59e60548ec439a454d.md) | 265 | `result-track:7b244a59e60548ec439a454d50c9b37372f9bef14a594cec9411dc9c66c27635` |
| 16 | `def` | [twoNonunitExceptionalKernelAggregate](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitexceptionalkernelaggregate--a63bde59e5b955b51064d23a.md) | 273 | `declaration-track:a63bde59e5b955b51064d23a13ad8dd82f8da048f6cecbbc457d3aeb5399da58` |
| 17 | `theorem` | [twoNonunitExceptionalKernelAggregate_eq_shiftCharacter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitexceptionalkernelaggregate-eq-shiftcharacter--623947310f6a5751aa5120df.md) | 279 | `result-track:623947310f6a5751aa5120dfcba26e76719349c52a40db5b5669b88669373346` |
| 18 | `def` | [twoNonunitExceptionalKernelFrequencyMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitexceptionalkernelfrequencymajorant--ac8de4afb2e09bfbdb6e5884.md) | 294 | `declaration-track:ac8de4afb2e09bfbdb6e588453a64dfcc03268d53da64abb45c3c1e0edd1faae` |
| 19 | `theorem` | [twoNonunitExceptionalKernelFrequencyMajorant_eq_halfIndex](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitexceptionalkernelfrequencymajorant-eq-halfindex--b0d92d5b3a4d12c90c7da555.md) | 302 | `result-track:b0d92d5b3a4d12c90c7da555fba8434b191dcd9f11a9e449d40cde8a62d0b039` |
| 20 | `def` | [twoNonunitRegularOrbitMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitregularorbitmajorant--ffc9d62742bbd6186f4ead33.md) | 310 | `declaration-track:ffc9d62742bbd6186f4ead335dcd4d957c43131cdb752c3825b69a22d66c1bfb` |
| 21 | `theorem` | [regularOrbit_frequencyPair_le_projectorMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/regularorbit-frequencypair-le-projectormajorant--7207db750a3e4466506091dd.md) | 321 | `result-track:7207db750a3e4466506091dd0cc890d62201f23ee6c6ff573b9680e2e47e3488` |
| 22 | `def` | [twoNonunitOrbitDecomposedModulusMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitorbitdecomposedmodulusmajorant--103bce13e7033a1c49cc4fa7.md) | 352 | `declaration-track:103bce13e7033a1c49cc4fa74c118413a00977cbc0f279884bdef42f418551cb` |
| 23 | `theorem` | [twoNonunitOrbitDecomposedModulusMajorant_eq_halfIndex](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitorbitdecomposedmodulusmajorant-eq-halfindex--b5f2c40dc8a5450c9ad7ded7.md) | 363 | `result-track:b5f2c40dc8a5450c9ad7ded755c3ec504c43e25344c2fc914bedd975b801b5b9` |
| 24 | `def` | [twoNonunitOrbitRepresentativeModulusMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitorbitrepresentativemodulusmajorant--dfd99e05fa4647b24aa8079e.md) | 378 | `declaration-track:dfd99e05fa4647b24aa8079e194457b813a154fd9ab0aad67fccfeb36273420d` |
| 25 | `theorem` | [halfIndexNonzeroModulusMajorant_le_orbitRepresentative](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/halfindexnonzeromodulusmajorant-le-orbitrepresentative--f2503ef208d0b699bd7a3b18.md) | 387 | `result-track:f2503ef208d0b699bd7a3b18eb02c7182a7c2b3405de344db54bdbec6c677d80` |
| 26 | `def` | [twoNonunitExceptionalKernelEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitexceptionalkernelendpointmajorant--55625c4b9d03bc808abe9a01.md) | 403 | `declaration-track:55625c4b9d03bc808abe9a01018a17e41343fd72a4043b428addc172e60e1c6a` |
| 27 | `def` | [twoNonunitRegularOrbitEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitregularorbitendpointmajorant--68dc3a2645eb182d44e7fff1.md) | 416 | `declaration-track:68dc3a2645eb182d44e7fff10eda41bee2db78284245396684e420d5d6202f57` |
| 28 | `theorem` | [twoNonunitHalfIndexEndpointMajorant_le_exceptional_add_regular](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunithalfindexendpointmajorant-le-exceptional-add-regular--c13bfd24ab98cab512f29609.md) | 430 | `result-track:c13bfd24ab98cab512f296097edf16164bb89519ca115cf69250b8322f78dcfd` |
| 29 | `def` | [DyadicNaturalScaleTwoNonunitExceptionalKernelBudget](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/dyadicnaturalscaletwononunitexceptionalkernelbudget--8d91c32fddbd16005e551add.md) | 453 | `declaration-track:8d91c32fddbd16005e551add92a54222dd25e632fc82879201f83d6c21039a6b` |
| 30 | `def` | [DyadicNaturalScaleTwoNonunitRegularOrbitBudget](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/dyadicnaturalscaletwononunitregularorbitbudget--165d398b90663e560863100b.md) | 462 | `declaration-track:165d398b90663e560863100b65ff304237003758cc15655015c955aa83b9f263` |
| 31 | `theorem` | [twoNonunitHalfIndexBudget_of_exceptional_and_regular](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunithalfindexbudget-of-exceptional-and-regular--e14adbb2a1a7a15e99f971c9.md) | 472 | `result-track:e14adbb2a1a7a15e99f971c9999a5c4a4e7b76564da83ba62ebca59d0ef1632b` |
| 32 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_orbitSplit](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-twounit-orbitsplit--75a9fc7093a5aa4c7b7ee078.md) | 487 | `result-track:75a9fc7093a5aa4c7b7ee078d18353e2602862852be87ed72e906efc4da91d82` |
| 33 | `structure` | [ToTwoNonunitExceptionalKernelBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/totwononunitexceptionalkernelbudgetadapter--bcf24912e1aa27e1d30f52dc.md) | 500 | `declaration-track:bcf24912e1aa27e1d30f52dc34678ac9fb1df8695d95e8bae2406ef43dfeef46` |
| 34 | `structure` | [ToTwoNonunitRegularOrbitBudgetAdapter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/totwononunitregularorbitbudgetadapter--d927d982521569f5a883b7cb.md) | 506 | `declaration-track:d927d982521569f5a883b7cbec1517b63a553bb75b8876b52bd23fc09050385e` |
| 35 | `structure` | [TwoNonunitExceptionalKernelAnalyticData](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitexceptionalkernelanalyticdata--ed0fc94647aca4ca2fd019dc.md) | 512 | `declaration-track:ed0fc94647aca4ca2fd019dc2fdf5f3a368a78746ab6a2dc500a214fb44002e3` |
| 36 | `def` | [TwoNonunitExceptionalKernelAnalyticSource](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitexceptionalkernelanalyticsource--b93c9b9a8f09a2fe72c2dbff.md) | 523 | `declaration-track:b93c9b9a8f09a2fe72c2dbff9f9a26876b063e3de8168d76884e27dc4abc96cc` |
| 37 | `abbrev` | [TwoNonunitExceptionalKernelAnalyticAdapter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitexceptionalkernelanalyticadapter--69cf410554c90ea7c75a3f5b.md) | 534 | `declaration-track:69cf410554c90ea7c75a3f5bdf3ede279f662483a12fa7df33ad1105e24aaad7` |
| 38 | `structure` | [TwoNonunitRegularOrbitAnalyticData](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitregularorbitanalyticdata--ccb230a438d44d76d6a31a53.md) | 540 | `declaration-track:ccb230a438d44d76d6a31a534c8b2c4ccad3000e74166fc4746ff611cbf3354c` |
| 39 | `def` | [TwoNonunitRegularOrbitAnalyticSource](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitregularorbitanalyticsource--6b38e16786a9a0d837e1294b.md) | 552 | `declaration-track:6b38e16786a9a0d837e1294b7532a89f009e7e973af4084b1f4ef2f656816adf` |
| 40 | `abbrev` | [TwoNonunitRegularOrbitAnalyticAdapter](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/declarations/twononunitregularorbitanalyticadapter--432463f4bdf3eb7da0701ead.md) | 564 | `declaration-track:432463f4bdf3eb7da0701eadf90fd030e9c1fcd9e4b96a55bc6de6f568138896` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
