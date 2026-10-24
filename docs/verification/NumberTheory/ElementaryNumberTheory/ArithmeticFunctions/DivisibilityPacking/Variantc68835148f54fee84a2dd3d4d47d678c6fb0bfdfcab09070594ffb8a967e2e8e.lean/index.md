# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DivisibilityPacking.Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b89210c715e559734dba1925ff08544d82b78544",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b89210c715e559734dba1925ff08544d82b78544`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.QuotientRing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeSupport](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/primesupport--04ea0021dfe3c5484a16e10a.md) | 18 | `declaration-track:04ea0021dfe3c5484a16e10a0a2f8641b93e5025e484d64b73afbfeead85004a` |
| 2 | `theorem` | [mem_primeSupport](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/mem-primesupport--c77d2e62979c15216fb92e4a.md) | 20 | `result-track:c77d2e62979c15216fb92e4a7966df59787ff0c8e2990b2a36f6f000a19d14c4` |
| 3 | `def` | [Modulus](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/modulus--2cec6d0416d83c869e25b962.md) | 25 | `declaration-track:2cec6d0416d83c869e25b962b38c05149139e5853151eb29b7760b0769671f8d` |
| 4 | `theorem` | [modulus_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/modulus-pos--a8edaf4725cc1c430d9f22d6.md) | 27 | `result-track:a8edaf4725cc1c430d9f22d67a3377d8911dbdf7f9d58900d3964bf8e551ae2b` |
| 5 | `instance` | [modulus_neZero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/modulus-nezero--0b6556fafa8a40c181b4abab.md) | 32 | `declaration-track:0b6556fafa8a40c181b4abab96e6a06f667008cd1c795f59576ca8f481d906e0` |
| 6 | `instance` | [prime_neZero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/prime-nezero--f9d3d42683dfff0de361252b.md) | 34 | `declaration-track:f9d3d42683dfff0de361252bc9036b9edeb427e454d659e813bf1d624aef29ae` |
| 7 | `def` | [forbiddenResidues](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/forbiddenresidues--0eaeac1f51d9320855d31f38.md) | 38 | `declaration-track:0eaeac1f51d9320855d31f384544b72f04208530ee64d74ab3947ec6d89c0a4d` |
| 8 | `def` | [localForbiddenCount](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/localforbiddencount--2688d407af62eae31f11f762.md) | 42 | `declaration-track:2688d407af62eae31f11f762299983f4b5ad3c0e897c01cb7d3a6be4d863a966` |
| 9 | `theorem` | [localForbiddenCount_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/localforbiddencount-le--534c88f7c89321544e31f27b.md) | 44 | `result-track:534c88f7c89321544e31f27b6dcb735921af54181d67ea1d7073922d9b778c0d` |
| 10 | `def` | [localReduction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/localreduction--f34dd3cd7329cbb974f52b10.md) | 49 | `declaration-track:f34dd3cd7329cbb974f52b1042bf4a6b83ed01824cd64ac04781636ce9f3d527` |
| 11 | `def` | [RawAdmissible](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/rawadmissible--da5170f52594b030ec21e210.md) | 53 | `declaration-track:da5170f52594b030ec21e210ca73edc5dbb9fde818f7fe6cd78b5718c521f157` |
| 12 | `def` | [RawPacking](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/rawpacking--57f9910495e0cc48b1925b80.md) | 57 | `declaration-track:57f9910495e0cc48b1925b802e341f18a60aa5bd7f6cc93668f645d866805097` |
| 13 | `instance` | [rawPackingFintype](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/rawpackingfintype--5fa2c55ab3bafcd44f41b308.md) | 59 | `declaration-track:5fa2c55ab3bafcd44f41b30850d741f2aed46aba88dd9be20681b959052bae47` |
| 14 | `theorem` | [primeSupport_pairwise](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/primesupport-pairwise--41347281d86244f18d1cc401.md) | 64 | `result-track:41347281d86244f18d1cc40126b59f0056305e450a14d024cf644609efc8ea94` |
| 15 | `def` | [residueEquiv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/residueequiv--2ea34f2496689332f897e539.md) | 72 | `declaration-track:2ea34f2496689332f897e539e3a55d0255f2bae66f8c528e1c0e6434b1fcbaff` |
| 16 | `theorem` | [residueEquiv_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/residueequiv-apply--bf3f21cff1f6d47225715120.md) | 77 | `result-track:bf3f21cff1f6d47225715120fa525b19161bb0a10ac97084415c1078096e90aa` |
| 17 | `def` | [rawPackingEquiv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/rawpackingequiv--0e5c4be832da4ceb603056a4.md) | 84 | `declaration-track:0e5c4be832da4ceb603056a4878ee8641da6ad31c6507ae6c00015a186cf8792` |
| 18 | `theorem` | [rawPacking_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/rawpacking-card--a53ec8f0856b39d357d7a2bb.md) | 94 | `result-track:a53ec8f0856b39d357d7a2bb9828c76d17bc08121b2c7560c58f2f156635dc2c` |
| 19 | `def` | [rawDensity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/rawdensity--d47af087af7f19c4fba49b0a.md) | 103 | `declaration-track:d47af087af7f19c4fba49b0ad812a4b86933091ae621461afaf0f13084b07d3c` |
| 20 | `theorem` | [rawPacking_density](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/rawpacking-density--91cd16c2fd2d85c73a7bc626.md) | 106 | `result-track:91cd16c2fd2d85c73a7bc62625892cc85732fe6b89e8deafed9b92437cf3df8f` |
| 21 | `def` | [IntegerSurvivor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/integersurvivor--19ef1a5a4defc67f974ca1d0.md) | 118 | `declaration-track:19ef1a5a4defc67f974ca1d01667564200ac915b6c64ff4f1a0837000fcca3c4` |
| 22 | `theorem` | [integerSurvivor_mono](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/integersurvivor-mono--f1f482218c0d4ed38d64c0ab.md) | 121 | `result-track:f1f482218c0d4ed38d64c0ab4136928ff565e472c00eeb54eadc544a600b8a74` |
| 23 | `theorem` | [integerSurvivor_iff_rawAdmissible](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/integersurvivor-iff-rawadmissible--9baa5199433de8af69ec41ce.md) | 129 | `result-track:9baa5199433de8af69ec41ce7c727cb2fee08b1c17c7e958dd78e9f560d291b8` |
| 24 | `theorem` | [integerSurvivor_iff_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/integersurvivor-iff-product--19ddb08bf7807f1258a9764f.md) | 152 | `result-track:19ddb08bf7807f1258a9764f8fcf325809c1b01980ecee048e095eb3a186a522` |
| 25 | `theorem` | [primeSupport_mono](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/primesupport-mono--57aefe7c84c170695cbe0cd3.md) | 166 | `result-track:57aefe7c84c170695cbe0cd39206a7fb4b01a7fba3da7b15ddb71b5d824e301d` |
| 26 | `theorem` | [modulus_dvd_of_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/modulus-dvd-of-le--bd4bfbaabe453167a5f584ad.md) | 171 | `result-track:bd4bfbaabe453167a5f584adae4eb13e673e0ba1f748cb8dbbc3aad0ace23cc8` |
| 27 | `def` | [reduction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/reduction--b5cf615852ef313b275ca86d.md) | 175 | `declaration-track:b5cf615852ef313b275ca86dfe1abacb75c08b952b377ec1eabc3ab5cb4f1167` |
| 28 | `theorem` | [localReduction_reduction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/localreduction-reduction--49744d0a76c77851aa76940e.md) | 178 | `result-track:49744d0a76c77851aa76940e6f5f8b5e07e845084345d51fbb744732803ea12e` |
| 29 | `theorem` | [rawAdmissible_reduce_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/rawadmissible-reduce-iff--035ea5364674d286618143d5.md) | 186 | `result-track:035ea5364674d286618143d50a4355269b26f938f989d5ac42f52df0b18a3a95` |
| 30 | `theorem` | [rawAdmissible_of_finer](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/rawadmissible-of-finer--005ad330e5b09b3712bbff75.md) | 193 | `result-track:005ad330e5b09b3712bbff75979e134e8b1895ca404b5df7816b774d918cccdd` |
| 31 | `theorem` | [singleton_forbidden_count](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/singleton-forbidden-count--1e773c751fe6698528fa9a15.md) | 200 | `result-track:1e773c751fe6698528fa9a15f242dbb77ddc23868488dc79dd7cd290e26cc806` |
| 32 | `theorem` | [singleton_density](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/singleton-density--15c255ae2421f33ebecd67e8.md) | 203 | `result-track:15c255ae2421f33ebecd67e8fff4dce7e809724523cdd384ca8a15caa03c0eda` |
| 33 | `theorem` | [totient_prime_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/totient-prime-product--b73f7e7ae7054c434606ad82.md) | 207 | `result-track:b73f7e7ae7054c434606ad826f8b0241d0324f7ccbb9f3fc1e3a5f48d89a2f02` |
| 34 | `theorem` | [singleton_card_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/singleton-card-totient--c3d6866944807d73f7fa2843.md) | 221 | `result-track:c3d6866944807d73f7fa284374ad799a43f0292436c3db5d2ace21460e3140e7` |
| 35 | `theorem` | [singleton_density_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/singleton-density-totient--daaa2946dc10b2089acf981b.md) | 228 | `result-track:daaa2946dc10b2089acf981b0784fdc85e1033a73c57773c6a8c69474a43ee25` |
| 36 | `theorem` | [twin_forbidden_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/twin-forbidden-two--499792ed72f4fe2657accca0.md) | 233 | `result-track:499792ed72f4fe2657accca0f9d017bee658e8342fbfc18effe65da5120c5a40` |
| 37 | `theorem` | [twin_forbidden_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/twin-forbidden-large--f0a1c6ccfa336174ff2c4953.md) | 237 | `result-track:f0a1c6ccfa336174ff2c495374502f27b6f46dbb52a0b79c5b807716391357e1` |
| 38 | `theorem` | [twin_density](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/twin-density--a27c28a92359f6abb7ed5012.md) | 243 | `result-track:a27c28a92359f6abb7ed5012e4ce08f5b338915c54a4af5af723eae33018f315` |
| 39 | `theorem` | [composite_raw_survivor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/composite-raw-survivor--364f82ec4c5e4e89e2891027.md) | 259 | `result-track:364f82ec4c5e4e89e289102772c1302642f5588fddb1b5d06db59952854ded21` |
| 40 | `theorem` | [visible_prime_raw_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/visible-prime-raw-excluded--5f9154f180d8620035b0cbc5.md) | 264 | `result-track:5f9154f180d8620035b0cbc56588456a1c64d16dffb3d5ea253b1853f1dbf6dd` |
| 41 | `theorem` | [translated_prime_raw_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/translated-prime-raw-excluded--b6c903a9e8a47d211928edf6.md) | 269 | `result-track:b6c903a9e8a47d211928edf64ea3e14353a7665f5e132e248fbcec8ef488c995` |
| 42 | `theorem` | [empty_support_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/empty-support-card--01af60591eb0b9375d10a1af.md) | 278 | `result-track:01af60591eb0b9375d10a1af25770d4e6039cc843bdff6004a8690b1921aa130` |
| 43 | `theorem` | [twin_five_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/declarations/twin-five-card--13f3e07e8470df1446d97dac.md) | 283 | `result-track:13f3e07e8470df1446d97dac67c9b50d2dbd481932013195a7e6e119bef106df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
