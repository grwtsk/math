# Verification target: GRWTSK.Algebra.UniversalAlgebra.LinearCombination.Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5acce7bb054125a8b42e87bd88825a0d28a5a778",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5acce7bb054125a8b42e87bd88825a0d28a5a778`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination'` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/test-sorry--d59f265eb50974c3fd3c59aa.md) | 8 | `declaration-track:d59f265eb50974c3fd3c59aa140a7366c8ae92f3cd53a49aaefcc8e23f727880` |
| 2 | `axiom` | [Real](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/real--42766e1f2c68f25f3f8f81f6.md) | 11 | `declaration-track:42766e1f2c68f25f3f8f81f6a027d5d0d733362593ec944ae62b5fb8b232730f` |
| 3 | `axiom` | [Real.field](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/real-field--0a6a168a4f6ba2589ba7c6bf.md) | 13 | `declaration-track:0a6a168a4f6ba2589ba7c6bfd95f1f137fe9779f7ef655dac16467efc2fa0259` |
| 4 | `axiom` | [Real.linearOrder](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/real-linearorder--4233eca6b630c869107cd0b4.md) | 14 | `declaration-track:4233eca6b630c869107cd0b431047c5fab2c2e4b92a64119b995ef31f092c6bb` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/real-isstrictorderedring--033aed28bf8222c20c8dadb5.md) | 15 | `declaration-track:033aed28bf8222c20c8dadb5005669d2978c966c16fff67280dcfd215be93a9e` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--1479d37464bc28e27d1a15d6.md) | 19 | `declaration-track:1479d37464bc28e27d1a15d645ba0866aa4d15182c339786dea57b3a8d95a100` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--20b8c11460ed123c6d5d86ca.md) | 22 | `declaration-track:20b8c11460ed123c6d5d86caafa72eb9ffff780acc53b641b9af4806513603f7` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--1f33075407dd443db09cd8bf.md) | 25 | `declaration-track:1f33075407dd443db09cd8bf1a3c7d568ebbf5733ca0f3ecedc0278fe5291926` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--a92060049b97a55323d2aca0.md) | 28 | `declaration-track:a92060049b97a55323d2aca09002cdb6d4f5d379574ce8d9efc79c52c9b294ba` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--30ef922b93c26ddf7f0f4b8e.md) | 31 | `declaration-track:30ef922b93c26ddf7f0f4b8ef34b57f3ec46086220784d11f5461189784f2700` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--bf1b8a709ea583af4d2dae5e.md) | 34 | `declaration-track:bf1b8a709ea583af4d2dae5ef9200c5c0c73bd813653cbbe0ba641afbfbf78e0` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--91749d5ca459998e93c08591.md) | 37 | `declaration-track:91749d5ca459998e93c08591c6d5f2652547dfcdd5cfe5d9f86e5a0e0a713efd` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--982489ad9e66c33dd4e5af09.md) | 40 | `declaration-track:982489ad9e66c33dd4e5af098bd1a1966b8c09745b75607b34a8c25dfce76f0b` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--b3a849a7f3614a464c1199df.md) | 43 | `declaration-track:b3a849a7f3614a464c1199df7d5b18e02bd0f0af0fdf8ac901c735352afaf3dd` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--125bbc74633eae1f1375b978.md) | 46 | `declaration-track:125bbc74633eae1f1375b9787d3e7fffc44b034ff2a8dcd36bde58c3466c6875` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--27c658c651c2f7b5333361f1.md) | 49 | `declaration-track:27c658c651c2f7b5333361f145d770689fc718fe024b6fd1e53e0d7ec09358ef` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--3aa64416ae9d969bee06f28e.md) | 54 | `declaration-track:3aa64416ae9d969bee06f28e6de8875fb083b6552d9f7916e399cd626cbdd51e` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--edc26471f95e420851e20656.md) | 57 | `declaration-track:edc26471f95e420851e206568cc773a55aac56339dd507c6d13525be12f21d44` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--e172d7f1f2ae204a7e1acc24.md) | 60 | `declaration-track:e172d7f1f2ae204a7e1acc24f478a575383b6699e42c365c08eb9cd3683c667a` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--fb46f87a938b99cb38fdc5dc.md) | 65 | `declaration-track:fb46f87a938b99cb38fdc5dcd2548b4460a1d6829db5be1f595294f7303221ae` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--b35f9e0e809ce0b36d7f23f5.md) | 68 | `declaration-track:b35f9e0e809ce0b36d7f23f5d5c1973064d513669933f2c0c7cd91807464e8b6` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--19a293137d66d69c7ac09b80.md) | 71 | `declaration-track:19a293137d66d69c7ac09b8082d030186c3769813898578c28f55d18d5b764e4` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--1a2aeee00d847eeb7b7abe39.md) | 75 | `declaration-track:1a2aeee00d847eeb7b7abe39028f3e8a0a6f20e29f58a4e322eea14070a6f433` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--2dca061d8b6afcc1b5860515.md) | 79 | `declaration-track:2dca061d8b6afcc1b58605157bb3f5f08e55cd7d308a644f95cec7bf1e328d81` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--f62bf77b5e55cd885a8a3638.md) | 83 | `declaration-track:f62bf77b5e55cd885a8a36381b2db8539dd4e1a27753afc99ad0b9d9e6512bb5` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--3637207752719a4ad16d5400.md) | 87 | `declaration-track:3637207752719a4ad16d54003bfde6a8cb4975c582d2a528ba5a5d6687bdbf4c` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--6b14d9e826c73adc61258b6b.md) | 91 | `declaration-track:6b14d9e826c73adc61258b6b124823ba2e203992ad697030df86ee24a2bf34cd` |
| 28 | `axiom` | [qc](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/qc--b9aff9ddd22fb80316c20ca2.md) | 97 | `declaration-track:b9aff9ddd22fb80316c20ca29011e8247ef52de444a7cefefdf5ec880cdd4159` |
| 29 | `axiom` | [hqc](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/hqc--2328efb6869165859fa890df.md) | 98 | `declaration-track:2328efb6869165859fa890df951ba4ab626c3206df41cafbba14a814dd7256c1` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--e6de2e4d3b999b2c71abcc61.md) | 100 | `declaration-track:e6de2e4d3b999b2c71abcc612213608e28717b3b81dda61b7eaf3267347c3513` |
| 31 | `axiom` | [bad](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/bad--4b4f6b12361185fa6566d484.md) | 103 | `declaration-track:4b4f6b12361185fa6566d484bf7263801bbd94d4636ed512da45c3c5093d76b5` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--0da4f9ac2c816d0da1876ccc.md) | 105 | `declaration-track:0da4f9ac2c816d0da1876ccc4ef09db776588bfa6f5f4e9ff01b6dfbdeb9d010` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--45217bf8ea87ead4ae4cdaae.md) | 109 | `declaration-track:45217bf8ea87ead4ae4cdaaeb205295ca09577462b0fb88994ebd993434e086a` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--3971fc5d161e99cf3a6a89c7.md) | 111 | `declaration-track:3971fc5d161e99cf3a6a89c7091b75834a781aa6b1cd8443d11dab4b84ec6b30` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--d39b01970d12cf98cd7beac2.md) | 113 | `declaration-track:d39b01970d12cf98cd7beac23dddcca0d9aa3544fab50157cf6a9b4a9632ab77` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--7106b289614aeb5bab742d03.md) | 116 | `declaration-track:7106b289614aeb5bab742d0376e6a7600189a3e8146253522228736f14aace15` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--e08cd061c6944671646f1a65.md) | 120 | `declaration-track:e08cd061c6944671646f1a6512e20951bcde7a81487f5da912840e59b6d788fb` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--406d08ca49e8e45e0ec721c7.md) | 123 | `declaration-track:406d08ca49e8e45e0ec721c707c8813982eb97169c7c97dde65ac114ab54d31a` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--c6b498ef0c7fe58f0599ba81.md) | 126 | `declaration-track:c6b498ef0c7fe58f0599ba818cf4cb1e8940d96dfe835283da3a9442d89ca35b` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--924fe6a3f901c46bf0f52d17.md) | 128 | `declaration-track:924fe6a3f901c46bf0f52d1705ec56d7b28956165fa1c432e6ba7a58c541c3ac` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--f7935805cf51b09c3f43967d.md) | 132 | `declaration-track:f7935805cf51b09c3f43967d8d842ca4a7cfb369de87324bb3822b7bbca9563e` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--4b10b16d5c16de5d4a3584d2.md) | 135 | `declaration-track:4b10b16d5c16de5d4a3584d2b646e50d8be1b8eb583bcfe2710e823796599e36` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--1ed82361611df830d3e9b2c7.md) | 138 | `declaration-track:1ed82361611df830d3e9b2c790028e1f4dfba9a449e28ee6df8d8934c2c8d397` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--f97f31f8b32e6a6ce0f349ea.md) | 141 | `declaration-track:f97f31f8b32e6a6ce0f349eaa28d8590fa04175836311a24ad86c202eccfcb99` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--9a521d4c740ef62a07d7fdb0.md) | 146 | `declaration-track:9a521d4c740ef62a07d7fdb09fc900f29c8325e655405d0e66b416533f7b83c2` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--bf15a9c12708dcd98656a11d.md) | 150 | `declaration-track:bf15a9c12708dcd98656a11d286662101bf36902d571b45f1a99689fa54ac9c1` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--27dd420b2d20441db0bb05b6.md) | 157 | `declaration-track:27dd420b2d20441db0bb05b68a50c9a631475493fb03fc78c20295b86838712c` |
| 48 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--523a5852af7c7db35783844e.md) | 161 | `declaration-track:523a5852af7c7db35783844efe8668f7d5c903e34382466f7bf85582dc048535` |
| 49 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--62609dcbfdb8a6bb31bc9dc6.md) | 166 | `declaration-track:62609dcbfdb8a6bb31bc9dc61c6877c2e8201ec279cd5f1d367c2430b64a4c7f` |
| 50 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--c4c8855e46ede9ec6b57c39b.md) | 171 | `declaration-track:c4c8855e46ede9ec6b57c39bcdffd1d26a8e3d2272559170a4d4403adee2ad18` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--68e448b21dd19e7bcf37ebbf.md) | 177 | `declaration-track:68e448b21dd19e7bcf37ebbfd4320417008229b2bb8964ef7e4db0e64b13e15a` |
| 52 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--9c9f47b520375d3251668054.md) | 184 | `declaration-track:9c9f47b520375d325166805497457401bd358af1db594c386d884d3c9f50412b` |
| 53 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--9ddb6e265aa6779695f86100.md) | 197 | `declaration-track:9ddb6e265aa6779695f8610088d0fc474746d51171deb2586c89693b9120d0ba` |
| 54 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--91f1bb9e4c30d1f837a25d9b.md) | 214 | `declaration-track:91f1bb9e4c30d1f837a25d9ba21423027af61b1b51f9eff446dbf06b03e8234e` |
| 55 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--4a21905a79a89bdbc585c1d4.md) | 220 | `declaration-track:4a21905a79a89bdbc585c1d49e47e55b41bed20ac72488ecdc49f1af8599930b` |
| 56 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--89db4e3a1fe42bfa2539d8f1.md) | 225 | `declaration-track:89db4e3a1fe42bfa2539d8f130a24571fd3e651a0112fbf9e30fe5ac13f11e30` |
| 57 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--56a5e689d1cf44deaa602b41.md) | 231 | `declaration-track:56a5e689d1cf44deaa602b41177b2bf8a28c5579b9edab72233c0225b97dd36b` |
| 58 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--1bff7fea46e37afb8d8fcc8f.md) | 234 | `declaration-track:1bff7fea46e37afb8d8fcc8fdf1b2c30b84130900e73256ed8dd2ce9256c18f4` |
| 59 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--bc92805af960c8f1bbbd8a7e.md) | 238 | `declaration-track:bc92805af960c8f1bbbd8a7e3e529e179b421944d8176307b4e59a7da989229a` |
| 60 | `def` | [g](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/g--55434c33db895eb20b2de580.md) | 253 | `declaration-track:55434c33db895eb20b2de5808452019f027a3737620cb58a935cac93daf05270` |
| 61 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--eeb6a344c57cca298f856726.md) | 255 | `declaration-track:eeb6a344c57cca298f85672601062eb9542ab5688fc1b45bed52ddc23d593de9` |
| 62 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--b9f71dbc608fa9c93053ccf5.md) | 259 | `declaration-track:b9f71dbc608fa9c93053ccf57b67293b870d7481c1fd6ade065982ca92867130` |
| 63 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/LinearCombination/Variant09d446d48e3aff6fbbd22c28d660d6d88d26dc081d60c550408fc0c74745f0cb.lean/declarations/example--dd9975e774cd506d79b37f99.md) | 266 | `declaration-track:dd9975e774cd506d79b37f99bbcd855d214e444ce9e375b32caf6e0bd3bbc714` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
