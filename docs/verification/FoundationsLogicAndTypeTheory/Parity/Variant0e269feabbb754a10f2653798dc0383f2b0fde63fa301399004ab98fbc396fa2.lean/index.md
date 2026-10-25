# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Parity.Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6965c6a9c04701061abc35f629b4ed03f7756b6a",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6965c6a9c04701061abc35f629b4ed03f7756b6a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [emod_two_ne_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/emod-two-ne-one--3e1a8705b553e7e491fb010d.md) | 26 | `result-track:3e1a8705b553e7e491fb010da40789a4a2a88fb21c7d1ff1e8bdb6788da8e138` |
| 2 | `theorem` | [emod_two_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/emod-two-ne-zero--b908dce32c9b1a67b7e5e79b.md) | 32 | `result-track:b908dce32c9b1a67b7e5e79b0016717a0155bdcc3471327259232fc0ff5e8009` |
| 3 | `theorem` | [even_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-iff--cbf6fb576d517b66fc74464e.md) | 36 | `result-track:cbf6fb576d517b66fc74464e96d7c967e4ed61e94f694aa1e98254e7bdf929fb` |
| 4 | `theorem` | [odd_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-iff--b21f946b2859687952f27c88.md) | 41 | `result-track:b21f946b2859687952f27c8881fad16381292680bd8e3338a480ad9848e6faaf` |
| 5 | `theorem` | [not_even_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/not-even-iff--f66aaa95ecfec2f10071694e.md) | 46 | `result-track:f66aaa95ecfec2f10071694e0ee373cb1afb6b2d7c60859872958dacd426f224` |
| 6 | `theorem` | [not_odd_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/not-odd-iff--727ace539897b310fcbbd218.md) | 49 | `result-track:727ace539897b310fcbbd2182ce525ccbb2dacf6cc69ef785faac5afe00353ee` |
| 7 | `theorem` | [even_iff_not_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-iff-not-odd--2a4e2094fb2442990f2c3a31.md) | 52 | `result-track:2a4e2094fb2442990f2c3a31f59e7609c9c1d1b21c306657cd4cb66fbc9bd570` |
| 8 | `theorem` | [odd_iff_not_even](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-iff-not-even--ead2e108d3c4d66883838bb1.md) | 56 | `result-track:ead2e108d3c4d66883838bb1b569809dfdbe83b6232d5707806b921a2e569e1d` |
| 9 | `theorem` | [isCompl_even_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/iscompl-even-odd--5b7cbf16e59c9f41bb79ae04.md) | 59 | `result-track:5b7cbf16e59c9f41bb79ae04c28e14b7e5e550f777422e85543088ed47702c79` |
| 10 | `theorem` | [even_or_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-or-odd--dbc7ef612d2e1a7cf193f1a4.md) | 63 | `result-track:dbc7ef612d2e1a7cf193f1a454fe3f6fe7405348a8d107d22b2056c55cd65f39` |
| 11 | `theorem` | [even_or_odd'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-or-odd--95dff325115292e34c1154de.md) | 67 | `result-track:95dff325115292e34c1154de538f18c55541e018c19c6eef023d838d5a40bce0` |
| 12 | `theorem` | [even_xor'_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-xor-odd--d3736bf7879205a8f54f58d6.md) | 71 | `result-track:d3736bf7879205a8f54f58d6a942f943b46b3d54ee8485789197bb8c99e35c4d` |
| 13 | `theorem` | [even_xor'_odd'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-xor-odd--c94497fc9d24cbe06a785639.md) | 77 | `result-track:c94497fc9d24cbe06a785639a89f52882b3fce8cfa1a2b67f2675c7da4fe40bf` |
| 14 | `theorem` | [two_dvd_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/two-dvd-ne-zero--b4014da686ad6afb761525b5.md) | 86 | `result-track:b4014da686ad6afb761525b5995a327985a4929c9dcef7ffb342e3fc4c660067` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/instance--9b4420862da4e2d7226a7672.md) | 90 | `declaration-track:9b4420862da4e2d7226a7672e6270be855df53f40e17801b00e713a2c0f4e9ba` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/instance--9b7f25286647b1007b230e0d.md) | 92 | `declaration-track:9b7f25286647b1007b230e0d6b50fde4cedcab0d73f9e77d7b389c7afee4607d` |
| 17 | `theorem` | [not_even_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/not-even-one--7ecabc0029ce68d7cf9d9ec5.md) | 95 | `result-track:7ecabc0029ce68d7cf9d9ec562ee3aa19786f68da810b71b417122de6b427155` |
| 18 | `theorem` | [even_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-add--a8c6bc395e1d8f2365176b1c.md) | 101 | `result-track:a8c6bc395e1d8f2365176b1c735b2dd4120c167830f6483239497436b9370c9c` |
| 19 | `theorem` | [even_add'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-add--e48c44e2507eea6d39bdb231.md) | 107 | `result-track:e48c44e2507eea6d39bdb231234109c80b64b82a54e679141ed9b28405827656` |
| 20 | `theorem` | [not_even_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/not-even-bit1--be15063ae903b372e5e57f6c.md) | 114 | `result-track:be15063ae903b372e5e57f6c79e860648cd9d80e869aeeb81b91e8d0b2cddef6` |
| 21 | `theorem` | [two_not_dvd_two_mul_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/two-not-dvd-two-mul-add-one--e6f865f928ee6572747757f6.md) | 117 | `result-track:e6f865f928ee6572747757f68e5b559d81d231679ba8f08e7a777abe796a27e6` |
| 22 | `theorem` | [even_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-sub--306f93c56aef2545d1cf72d9.md) | 122 | `result-track:306f93c56aef2545d1cf72d9c11496e38ce1e8d00c10e94057fd2f50771448bc` |
| 23 | `theorem` | [even_sub'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-sub--7448b609b78d3f067b75d2fd.md) | 126 | `result-track:7448b609b78d3f067b75d2fd7e45f64afc0ca87cfbe089169f34d12e656754ea` |
| 24 | `theorem` | [even_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-add-one--5c91dca4ec308274814f340b.md) | 131 | `result-track:5c91dca4ec308274814f340b612ff0cf41c7187c2ca9606a338aea29b3c116e3` |
| 25 | `theorem` | [even_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-mul--f4ffb750c45edd4ff18a84c5.md) | 136 | `result-track:f4ffb750c45edd4ff18a84c5d387e5175495ae813c087eaa8827edaeae782581` |
| 26 | `theorem` | [odd_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-mul--fd075f54dd8f2ab4d02f0f3c.md) | 142 | `result-track:fd075f54dd8f2ab4d02f0f3c4aa9c4411783ca5e1c13e51075ee5f9d4d4bdaf1` |
| 27 | `theorem` | [Odd.of_mul_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-of-mul-left--376239611cf578dd90a3cbaa.md) | 145 | `result-track:376239611cf578dd90a3cbaacf4399835f7decfb44ad18ebd01437a3e9df7cdb` |
| 28 | `theorem` | [Odd.of_mul_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-of-mul-right--871f1d32367b9ac969cffe7c.md) | 149 | `result-track:871f1d32367b9ac969cffe7c72717d56ed868cc6ed497fab8015998c516c5db8` |
| 29 | `theorem` | [even_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-pow--34433a55814d45c6d6987164.md) | 154 | `result-track:34433a55814d45c6d69871640ba51969bb504a03a374438edf35d25d486fe67e` |
| 30 | `theorem` | [even_pow'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-pow--127e8c3ef5d54d6ff517da3d.md) | 159 | `result-track:127e8c3ef5d54d6ff517da3d4c675182401f3db9d5366bb23678fe0bd4e23f2b` |
| 31 | `theorem` | [odd_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-pow--0711b2c386253f64280676da.md) | 164 | `result-track:0711b2c386253f64280676dada1f9c3323a93995f0effd9efa6c6726106f91d3` |
| 32 | `theorem` | [odd_pow'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-pow--7e5e8e7f5673ac4f502dedb2.md) | 167 | `result-track:7e5e8e7f5673ac4f502dedb2b21289c2a79509b9ddee2797156c77ceb69313a0` |
| 33 | `theorem` | [odd_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-add--3f456b92ef7a3763456a6b52.md) | 171 | `result-track:3f456b92ef7a3763456a6b528177b0fd026e2b24e09e2786bb778dc09c06890c` |
| 34 | `theorem` | [odd_add'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-add--0a31d50b9de3c2df41368f09.md) | 175 | `result-track:0a31d50b9de3c2df41368f09e217b9fe97f9bc79da014d947e3c2a0aba8d10a3` |
| 35 | `theorem` | [ne_of_odd_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/ne-of-odd-add--2f743da1794acab15c5817be.md) | 179 | `result-track:2f743da1794acab15c5817be0feb9f859284bfa27c352962d8970445cf268ad4` |
| 36 | `theorem` | [odd_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-sub--cf875626fcfbaaf525d8cbd6.md) | 184 | `result-track:cf875626fcfbaaf525d8cbd6e56cb101a4be8dcdbede6f3b88ad76d199cf624e` |
| 37 | `theorem` | [odd_sub'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-sub--98698e0fcf92e8f79190d950.md) | 188 | `result-track:98698e0fcf92e8f79190d950444c951f7fb185f6c10972ba0407a094bb0cf04e` |
| 38 | `theorem` | [even_mul_succ_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-mul-succ-self--6481cd7ab77f43fca80fbd3a.md) | 192 | `result-track:6481cd7ab77f43fca80fbd3aef98cef862bbb15095af055cbb9be03f5a56fe67` |
| 39 | `theorem` | [even_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/even-coe-nat--ff7d4282922de905421420d0.md) | 197 | `result-track:ff7d4282922de905421420d0d470bd9a0815828b1c140b801e0c4ad3ff9847ff` |
| 40 | `theorem` | [odd_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/odd-coe-nat--402846d15b53de15dbf485b1.md) | 203 | `result-track:402846d15b53de15dbf485b1de9dcdac475c48da846b7fd38f5b23b02ad290dd` |
| 41 | `theorem` | [natAbs_even](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/natabs-even--17c990a72e812ea4bd2eefe8.md) | 208 | `result-track:17c990a72e812ea4bd2eefe8a27c8170479b694a963e554617681f64e32c06a4` |
| 42 | `theorem` | [natAbs_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/natabs-odd--3ec1e04a1a14ebe98f7c87b5.md) | 214 | `result-track:3ec1e04a1a14ebe98f7c87b584badef928bac48ea263d0eb83b62faa648daae9` |
| 43 | `theorem` | [four_dvd_add_or_sub_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/four-dvd-add-or-sub-of-odd--98f360a5155da90e39f4c660.md) | 228 | `result-track:98f360a5155da90e39f4c6606f3a22969a7bcd7607e8dcf31f09fcaacdb7f73c` |
| 44 | `theorem` | [two_mul_ediv_two_of_even](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/two-mul-ediv-two-of-even--cba5d6c2722d1100d3350d90.md) | 248 | `result-track:cba5d6c2722d1100d3350d90e06643ad7e2e01eab0b23af152dea808a75772ff` |
| 45 | `theorem` | [ediv_two_mul_two_of_even](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/ediv-two-mul-two-of-even--b611ab095bd10f8d26f85be3.md) | 252 | `result-track:b611ab095bd10f8d26f85be3da3c41f97ff26a3ea90346a4ed774cb9f1550b6e` |
| 46 | `theorem` | [two_mul_ediv_two_add_one_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/two-mul-ediv-two-add-one-of-odd--5dcb7ed130ae8fd29c59d63d.md) | 256 | `result-track:5dcb7ed130ae8fd29c59d63dbb7b2ceb2926b46be42fecd36b93a44983e1f29e` |
| 47 | `theorem` | [ediv_two_mul_two_add_one_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/ediv-two-mul-two-add-one-of-odd--6c857dc73a17b42b7aa5ef7b.md) | 263 | `result-track:6c857dc73a17b42b7aa5ef7b9d8a198f0e3b50f2648f766a0a89b3eaceda1a97` |
| 48 | `theorem` | [add_one_ediv_two_mul_two_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/add-one-ediv-two-mul-two-of-odd--bc9252c89d6ac8593222f8ce.md) | 269 | `result-track:bc9252c89d6ac8593222f8ce94585e64220866e909fe9edd14472404b5695a14` |
| 49 | `theorem` | [two_mul_ediv_two_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/two-mul-ediv-two-of-odd--78c0f43f97dc65982e36650e.md) | 276 | `result-track:78c0f43f97dc65982e36650e168e0f5e6e19b42628f73c11a9d67a2ab4fa8d14` |
| 50 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/example--b06865f21b6509fa6d43a199.md) | 281 | `declaration-track:b06865f21b6509fa6d43a1996876463f62f87625e7351f1e321292d04c499d4b` |
| 51 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant0e269feabbb754a10f2653798dc0383f2b0fde63fa301399004ab98fbc396fa2.lean/declarations/example--11383a50c74951b12e490892.md) | 284 | `declaration-track:11383a50c74951b12e490892e1aa2c2d5b857dba25c5565ff2ae866daed35b31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
