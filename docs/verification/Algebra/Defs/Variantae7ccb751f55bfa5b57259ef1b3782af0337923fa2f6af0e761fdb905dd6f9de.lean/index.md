# Verification target: GRWTSK.Algebra.Defs.Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6248b73b7e1309cd6a483f52b01986bbb8965ddd",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6248b73b7e1309cd6a483f52b01986bbb8965ddd`.

Source path: `GRWTSK/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingCon](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/ringcon--bbcdf8348431fc01dc0ede62.md) | 34 | `declaration-track:bbcdf8348431fc01dc0ede6258db1742c2255245edd878c2415aa5195acbc971` |
| 2 | `inductive` | [RingConGen.Rel](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/ringcongen-rel--18f4d72d4dd8dd8c549ec423.md) | 46 | `declaration-track:18f4d72d4dd8dd8c549ec423bcf5b385e5fb881984a5513344abf7756c5ba9f6` |
| 3 | `def` | [ringConGen](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/ringcongen--ac58c29a009ca1badc8e412f.md) | 58 | `declaration-track:ac58c29a009ca1badc8e412f8a94a7e06728e3924caea13d49c4df314cac2ea3` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--2738fff882d56362d9186218.md) | 71 | `declaration-track:2738fff882d56362d918621845924ae1c5bb6b63735bb74f995a263202351ff9` |
| 5 | `theorem` | [coe_mk](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-mk--f88aaadec35744f34b28d008.md) | 81 | `result-track:f88aaadec35744f34b28d00833b45584c51e6a8e9b5fc6058615adeb43b35c67` |
| 6 | `theorem` | [rel_eq_coe](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/rel-eq-coe--9837d99608bdadd7a6597d1e.md) | 83 | `result-track:9837d99608bdadd7a6597d1e0f2b4c4be1a52caf957f2e369610b5ba9a377b53` |
| 7 | `theorem` | [toCon_coe_eq_coe](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/tocon-coe-eq-coe--c9fe76bdd3a599fe1bac62d2.md) | 87 | `result-track:c9fe76bdd3a599fe1bac62d284904d530a4eee7367cc220f53222b7264859dc1` |
| 8 | `theorem` | [refl](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/refl--9d0bb1a45dfc5b36d08a7817.md) | 90 | `result-track:9d0bb1a45dfc5b36d08a781741f9c4c7e066e3687151b3d5307a0453240e3175` |
| 9 | `theorem` | [symm](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/symm--e0f0edab442896c1fc527a74.md) | 93 | `result-track:e0f0edab442896c1fc527a74a1626d439e4c290a1c684606b7ac7d9770a0fc1a` |
| 10 | `theorem` | [trans](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/trans--37e18ef243e72eec265d4c8d.md) | 96 | `result-track:37e18ef243e72eec265d4c8d5417b3fa9145d05465fa63fe4e55b03b900e4036` |
| 11 | `theorem` | [add](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/add--8f1b2462d7b9ad7ae188413e.md) | 99 | `result-track:8f1b2462d7b9ad7ae188413ebbdc63c033d5c28b9de55cc3c56682e3941f402f` |
| 12 | `theorem` | [mul](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/mul--47e9f89d8c6c851de2feef62.md) | 102 | `result-track:47e9f89d8c6c851de2feef62f94ecedea335c1dc1c89c4421374a6cac023dd79` |
| 13 | `theorem` | [sub](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/sub--89ab14d77ab6106deefb5572.md) | 105 | `result-track:89ab14d77ab6106deefb5572685db930f63fa46da0575af650e077cdfc914780` |
| 14 | `theorem` | [neg](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/neg--2cb35ee6b90eb7b6d5c3041b.md) | 108 | `result-track:2cb35ee6b90eb7b6d5c3041b6e54558afcb03db328c7f5ed437260801bda2b70` |
| 15 | `theorem` | [nsmul](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/nsmul--de87591737423d7cd7b0b5cc.md) | 111 | `result-track:de87591737423d7cd7b0b5ccfac4f0ce9cc4885e2737e3c7847b73cb59b341e5` |
| 16 | `theorem` | [zsmul](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/zsmul--2980f2fd53dcf8a3cd365edd.md) | 114 | `result-track:2980f2fd53dcf8a3cd365eddd633f74a189577bf3281f77e59fb46fe68edc10e` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--d25234ef574dc8591b37767b.md) | 117 | `declaration-track:d25234ef574dc8591b37767b0bb3a96ead335f032c5a99f69ec25477d0d3a5d5` |
| 18 | `theorem` | [rel_mk](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/rel-mk--270775dcbfece4c45c24faf3.md) | 121 | `result-track:270775dcbfece4c45c24faf3f0a326bd83308c08b867446afe3f7d0a44262826` |
| 19 | `theorem` | [ext'](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/ext--b149b6e91b3b030c086c040f.md) | 125 | `result-track:b149b6e91b3b030c086c040f58133aa536dd4a2b8814017233bcad0f6399f096` |
| 20 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/ext--bcd5429585b58b551f227a53.md) | 129 | `result-track:bcd5429585b58b551f227a5305dc57371ad387e2fc90b23f9b698688995d3774` |
| 21 | `def` | [comap](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/comap--8f8fe3eedc7969782da80c5d.md) | 135 | `declaration-track:8f8fe3eedc7969782da80c5d8cded182884d896cf1924ed26850e3d10ee1ace3` |
| 22 | `def` | [Quotient](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/quotient--b54b3e6d2e4bd8a10e707853.md) | 151 | `declaration-track:b54b3e6d2e4bd8a10e707853c7f95ccacb2f6c130728ea44920a0f422016a2c8` |
| 23 | `def` | [toQuotient](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/toquotient--f6012cc6899926815a0f86cb.md) | 157 | `declaration-track:f6012cc6899926815a0f86cb1a1417f0f803d38b04b67cfd1a131d0cb76986c1` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--10684a7a1626d6361f3b11ed.md) | 165 | `declaration-track:10684a7a1626d6361f3b11ede83aceafa2d758edee7524938126f409c8594b88` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--10577067aeb3ace163dd7dd1.md) | 170 | `declaration-track:10577067aeb3ace163dd7dd16a9fed1b0c380e78229677a13daa32afbd114588` |
| 26 | `theorem` | [quot_mk_eq_coe](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/quot-mk-eq-coe--deb61e7ba49495cef49d5e43.md) | 174 | `result-track:deb61e7ba49495cef49d5e434f69787087f2b7bb1eba8e554e4a22ba6c19be90` |
| 27 | `theorem` | [eq](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/eq--db1ea24c0bbf3acfff599bc4.md) | 180 | `result-track:db1ea24c0bbf3acfff599bc49a00513c941958e697adb7a0679b13e0fa3e68fb` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--1ac6e0896853cd07ad723c2b.md) | 197 | `declaration-track:1ac6e0896853cd07ad723c2b8aee4a97daf9aba1c851c69d53a0dc7b31e5a75c` |
| 29 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-add--b9f6a0c45da2e5f21a112411.md) | 200 | `result-track:b9f6a0c45da2e5f21a112411a97633385762d0731dd46e3a5aa0e07b1d5cc21e` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--e8d3995d534c4fa654788151.md) | 203 | `declaration-track:e8d3995d534c4fa65478815170caee301f8bac5a1efbfdc3c6cf99a7efbfd8fd` |
| 31 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-mul--ea1bc209ca9376fea987c810.md) | 206 | `result-track:ea1bc209ca9376fea987c810bd4463c7208b7824e5f5384efede0c089dd337b9` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--c0f46a5448167c5aa4a65811.md) | 215 | `declaration-track:c0f46a5448167c5aa4a65811836960d63cd28c4deebb76166dc8d136ebf3085e` |
| 33 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-zero--69a7b82ed053ed128efcdabd.md) | 218 | `result-track:69a7b82ed053ed128efcdabdf02412b1079da6b00898ff7b8528fac589ce9b8d` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--a98d80913643dfe241e0b065.md) | 227 | `declaration-track:a98d80913643dfe241e0b065ae812fb568d4d767b61744bacaea9bb5d1f8f3fe` |
| 35 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-one--e039121e937e6e6b76a4abcf.md) | 230 | `result-track:e039121e937e6e6b76a4abcf48fa1d542c403fc1f52991a34e74250d18807b1d` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--3959f0436a85f9120a3ea431.md) | 239 | `declaration-track:3959f0436a85f9120a3ea431f5c86b04b2540e51d6828fee874d38b70d9ae4bb` |
| 37 | `theorem` | [coe_neg](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-neg--bec3e7efa3379ed8b9c5e7f7.md) | 242 | `result-track:bec3e7efa3379ed8b9c5e7f7c0ad787172c96ad72409a505c10fbe38d36bbdc3` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--e36a3ba76dd41fe794ebdc16.md) | 245 | `declaration-track:e36a3ba76dd41fe794ebdc168a09e3dc5eebf30d257e95449b1e4e92d3d18d08` |
| 39 | `theorem` | [coe_sub](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-sub--2fa134cf60cbf08603f09588.md) | 248 | `result-track:2fa134cf60cbf08603f0958859e32085e03acb5da0fa5c1cee971ffceb8a3cf4` |
| 40 | `instance` | [hasZSMul](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/haszsmul--e8971afa5323e6e4b8a49ab2.md) | 251 | `declaration-track:e8971afa5323e6e4b8a49ab2abc2395495d1680d5046078d57dd4f6eafd9e297` |
| 41 | `theorem` | [coe_zsmul](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-zsmul--1f1242b4e3061e8a1f849a4d.md) | 254 | `result-track:1f1242b4e3061e8a1f849a4d4345c1a72b1802f6792a46552c31461891dab905` |
| 42 | `instance` | [hasNSMul](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/hasnsmul--bb7a75e686c35c8fcf3cf44c.md) | 263 | `declaration-track:bb7a75e686c35c8fcf3cf44c8e574f4ba46aaf49e05d81e66d0f3b2867f60d7b` |
| 43 | `theorem` | [coe_nsmul](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-nsmul--c0edd33c24d6a6e7e3056391.md) | 266 | `result-track:c0edd33c24d6a6e7e3056391e1afd556b3497372bae4398678e2498bd003f8e1` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--872b38e854dcaf64be150cc8.md) | 275 | `declaration-track:872b38e854dcaf64be150cc89bbcb0e567a464732edf7617b4a5666809347e63` |
| 45 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-pow--2c4d8efd159a5be306e0f8d6.md) | 278 | `result-track:2c4d8efd159a5be306e0f8d6e950b68da2de768dd3fc894c9056596cd4c62835` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--4d76adaa42b1e3dacdf6a986.md) | 287 | `declaration-track:4d76adaa42b1e3dacdf6a9867c50cca9515d5b2a7a04e3edf78d48730ee79aa8` |
| 47 | `theorem` | [coe_natCast](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-natcast--5d0e55d23db56a621865cfe3.md) | 291 | `result-track:5d0e55d23db56a621865cfe367b0ae04fda9cee587bc5c46167f69c93541c1ff` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--b8aa816892589bcab51b0452.md) | 300 | `declaration-track:b8aa816892589bcab51b0452794cd0bfbe8890aa0ddb5f9a8ee93624d81dccb2` |
| 49 | `theorem` | [coe_intCast](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/coe-intcast--7b492d6030b88c47e5fdea3a.md) | 304 | `result-track:7b492d6030b88c47e5fdea3a968e61ac285d1f45267338b13e836af2b6ec4c98` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--7e74cd37dcc4e574fef4252d.md) | 309 | `declaration-track:7e74cd37dcc4e574fef4252dd5b1bbe44acf2672521bd601ac2f820e16539355` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--f0fc8931356676b3df50043f.md) | 322 | `declaration-track:f0fc8931356676b3df50043f02d4ab0c7ddab11f36d36ab74da6f35403166ef1` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--6856aa61b7534cbebd2fd2f6.md) | 327 | `declaration-track:6856aa61b7534cbebd2fd2f6d63cbe450e4709591b5b04afccd454c154d07905` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--5ca3f8edea9bc40104e654f8.md) | 331 | `declaration-track:5ca3f8edea9bc40104e654f89716397dfaec3878c3ca900c9b514064990fb12b` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--7dd6a85fe6cd86bc511ba3d3.md) | 335 | `declaration-track:7dd6a85fe6cd86bc511ba3d3efecd740c04c18ac20d87218b53f3d911daa1bed` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--91c7481ed68772be94dde804.md) | 339 | `declaration-track:91c7481ed68772be94dde804bb268ff88db3017544543ca4e0531c23b70b0118` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--0afc00f41afdfe0037dade67.md) | 343 | `declaration-track:0afc00f41afdfe0037dade6762aa924ff9a1adccb1eb6f70bbb63da1587dffce` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--da5562fe9e1842b3d172d235.md) | 348 | `declaration-track:da5562fe9e1842b3d172d235bfbe4f61dc467e43395231401b81053677091d0e` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--6b77cb40fa072be534e2e9d8.md) | 353 | `declaration-track:6b77cb40fa072be534e2e9d81e8b962952588cab0b77711666a435385c95db59` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--549d804c65f7ae86ece344fb.md) | 357 | `declaration-track:549d804c65f7ae86ece344fb4dd4022d8751482c821d5cb1e2cde188c12a1d46` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/instance--63ebfc4b057a340149c6c2d2.md) | 362 | `declaration-track:63ebfc4b057a340149c6c2d29e214270cb852eca5dfe246a17054a1f476a8232` |
| 61 | `def` | [mk'](../../../../mathematics/Algebra/Defs/Variantae7ccb751f55bfa5b57259ef1b3782af0337923fa2f6af0e761fdb905dd6f9de.lean/declarations/mk--8392d76e5f6dbc48a36037e9.md) | 370 | `declaration-track:8392d76e5f6dbc48a36037e9c08d0b96efeb1265b195bcd21310cf26eed6bb0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
