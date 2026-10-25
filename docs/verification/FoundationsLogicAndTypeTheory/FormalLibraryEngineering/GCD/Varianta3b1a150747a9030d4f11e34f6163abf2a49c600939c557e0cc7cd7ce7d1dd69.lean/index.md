# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCD.Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "004b838781ed0b2b53a89aca20fb1795a291f922",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `004b838781ed0b2b53a89aca20fb1795a291f922`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.GCD` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [int_gcd_helper'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/int-gcd-helper--ebee1feb4202d7a81f4a9d24.md) | 31 | `result-track:ebee1feb4202d7a81f4a9d24f41b19a4fe91017529989e231af1b0b4c117d210` |
| 2 | `theorem` | [nat_gcd_helper_dvd_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/nat-gcd-helper-dvd-left--64f88fe303d0e4711194d0d4.md) | 39 | `result-track:64f88fe303d0e4711194d0d4b64d224f0cbbc6ecc9fe1709c3c64dca9c9fb085` |
| 3 | `theorem` | [nat_gcd_helper_dvd_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/nat-gcd-helper-dvd-right--dc9c38ca4c7e0e16f17ce420.md) | 42 | `result-track:dc9c38ca4c7e0e16f17ce42070cd1d44e4bcad5cf86716f21a6de9b7ced4ead8` |
| 4 | `theorem` | [nat_gcd_helper_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/nat-gcd-helper-2--7cdbe69c040a2249a33eca88.md) | 45 | `result-track:7cdbe69c040a2249a33eca88b0a91df0254eb2366e16b7ddd07977184dc9af42` |
| 5 | `theorem` | [nat_gcd_helper_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/nat-gcd-helper-1--537c0ab0a02eb1c9da207757.md) | 54 | `result-track:537c0ab0a02eb1c9da207757a24d061816fa338c03d8e2496329de9eb61ff5b6` |
| 6 | `theorem` | [nat_gcd_helper_1'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/nat-gcd-helper-1--2aa22ae19644f3f409efaecb.md) | 58 | `result-track:2aa22ae19644f3f409efaecb1bc1ae8168bba21eb8e4fc7e7fe586c1f3174943` |
| 7 | `theorem` | [nat_gcd_helper_2'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/nat-gcd-helper-2--c177c2ea4c81179e4ad82e0c.md) | 62 | `result-track:c177c2ea4c81179e4ad82e0c1cf9f57b1981148ff0121a84e95d9e0629cf7efe` |
| 8 | `theorem` | [nat_lcm_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/nat-lcm-helper--993ef4b89414b1eb2a5f4ebb.md) | 66 | `result-track:993ef4b89414b1eb2a5f4ebbecd09ac9b1d8e4dd79668d979265c24a7516d7db` |
| 9 | `theorem` | [int_gcd_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/int-gcd-helper--d52d95190fbcd3f5c07431d4.md) | 73 | `result-track:d52d95190fbcd3f5c07431d4acfd1480990c1256d48bae593750f763c6a6ee85` |
| 10 | `theorem` | [int_lcm_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/int-lcm-helper--1247ed9246373c00553e8633.md) | 77 | `result-track:1247ed9246373c00553e8633eef34e43d447b14558f559a2e0b044ffb0481eba` |
| 11 | `theorem` | [isNat_gcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/isnat-gcd--5924fb8bec4c0c0c3351519d.md) | 83 | `result-track:5924fb8bec4c0c0c3351519d30e14e51a7ce98ec578a8211558a5d68245b5503` |
| 12 | `theorem` | [isNat_lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/isnat-lcm--c73e17ed957baf9b01e39899.md) | 87 | `result-track:c73e17ed957baf9b01e398999d9947738f8e8d22684408ad2c0e0ac038662d4a` |
| 13 | `theorem` | [isInt_gcd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/isint-gcd--076d5816ad4281c8b01f780d.md) | 91 | `result-track:076d5816ad4281c8b01f780d1cda558aa3e6ef3a9338c27bdf766a674f0117a1` |
| 14 | `theorem` | [isInt_lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/isint-lcm--ebaa3ccdab45fc1ad0fddf99.md) | 95 | `result-track:ebaa3ccdab45fc1ad0fddf994a64c13a0ac2cc41fb45a8dd60e3ff9d0e4f90d4` |
| 15 | `def` | [proveNatGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/provenatgcd--994c79ce55894c8821a37a42.md) | 101 | `declaration-track:994c79ce55894c8821a37a42023d8ce03e118344abb069d7c681f4f271321943` |
| 16 | `def` | [evalNatGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/evalnatgcd--aa06057083dce34b566b1890.md) | 138 | `declaration-track:aa06057083dce34b566b1890e40f3f72c059636da403bc759a2dc53133361a1b` |
| 17 | `def` | [proveNatLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/provenatlcm--f9707ecc7eb5940fbece6592.md) | 150 | `declaration-track:f9707ecc7eb5940fbece659221dc0b8df745e768b63d9596c14016ca6a343b25` |
| 18 | `def` | [evalNatLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/evalnatlcm--7f9a0b45a8ca8f4686cb4fff.md) | 167 | `declaration-track:7f9a0b45a8ca8f4686cb4fff5ccf5cb9f39962171da4a5929aa2c7f2da1e0d7e` |
| 19 | `def` | [proveIntGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/proveintgcd--3274c505f07e33cdbf75689f.md) | 179 | `declaration-track:3274c505f07e33cdbf75689fe836a9cace0331a47c6e1f51e26c5fd126e5b3c0` |
| 20 | `def` | [evalIntGCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/evalintgcd--7333fe63efa5c65404188327.md) | 187 | `declaration-track:7333fe63efa5c6540418832743581b8419856bec7d232d26a94baa66ea3fc8cd` |
| 21 | `def` | [proveIntLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/proveintlcm--4b935b2f5ec4641f0665e5a3.md) | 198 | `declaration-track:4b935b2f5ec4641f0665e5a34c8e4d17973440dc749674ab8b2a632e82bccc24` |
| 22 | `def` | [evalIntLCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/evalintlcm--5fecb686353e76879b76bc89.md) | 206 | `declaration-track:5fecb686353e76879b76bc891eee786eef01112b40103c1bd6ef22c4ff59f289` |
| 23 | `theorem` | [isInt_ratNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/isint-ratnum--e1e4f162dc69467ff62a77e9.md) | 215 | `result-track:e1e4f162dc69467ff62a77e9d10ff85a0ef4c25393472088b1a50f6b4390844e` |
| 24 | `theorem` | [isNat_ratDen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/isnat-ratden--56d0585908512848a87573c1.md) | 224 | `result-track:56d0585908512848a87573c1cda6fd2635c4a713966ac4552409bbe953aac62c` |
| 25 | `def` | [evalRatNum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/evalratnum--18bcdbc6185ad1f236cc951b.md) | 235 | `declaration-track:18bcdbc6185ad1f236cc951b75b635b405037e492551b8a97a1c6d1fffc5f07c` |
| 26 | `def` | [evalRatDen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/declarations/evalratden--b0cf1e68711053723bd27e1b.md) | 247 | `declaration-track:b0cf1e68711053723bd27e1b850bb93633826222d27e2c301b2689b50f4e4031` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
