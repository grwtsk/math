# Verification target: GRWTSK.Algebra.GroupTheory.Exponent.Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb2c7ab393bc6e1ed051576f052d90ffee4b2f06",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb2c7ab393bc6e1ed051576f052d90ffee4b2f06`.

Source path: `GRWTSK/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.NoncommPiCoprod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Finset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExponentExists](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponentexists--c006f5b45707b4f1152197f9.md) | 68 | `declaration-track:c006f5b45707b4f1152197f95867725dd870ede42a07c910a42fba024467c03b` |
| 2 | `def` | [exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent--98eb63eb4cf2929671512844.md) | 78 | `declaration-track:98eb63eb4cf29296715128449992a712f559d4fa4244cf2b9d445bd68e4736d9` |
| 3 | `theorem` | [exponentExists_iff_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponentexists-iff-ne-zero--a9637b2df39497ea15145f06.md) | 86 | `result-track:a9637b2df39497ea15145f067a16285726ce4ec697444154a84bf629d5e03759` |
| 4 | `theorem` | [exponent_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-eq-zero-iff--4a37c4f6a90561b0a91ed7b7.md) | 96 | `result-track:4a37c4f6a90561b0a91ed7b7222e167310de5d717eb37496758d72635cbccc95` |
| 5 | `theorem` | [exponent_eq_zero_of_order_zero](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-eq-zero-of-order-zero--2430273d4547cea0d545f642.md) | 102 | `result-track:2430273d4547cea0d545f642c862716107d4fa5929d9fee5026102f734a51761` |
| 6 | `theorem` | [pow_exponent_eq_one](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/pow-exponent-eq-one--b84add5d2852b000beaab4c2.md) | 108 | `result-track:b84add5d2852b000beaab4c2e9f3132c81faf9ec1b132f0b3036be47ff2208fc` |
| 7 | `theorem` | [pow_eq_mod_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/pow-eq-mod-exponent--c0ceb0136c6068c0a71ff195.md) | 117 | `result-track:c0ceb0136c6068c0a71ff19543ed457a8a3f7361bea95caeef79564d7c60dbab` |
| 8 | `theorem` | [exponent_pos_of_exists](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-pos-of-exists--a8156c1f06626ace7062d7b9.md) | 126 | `result-track:a8156c1f06626ace7062d7b9241cc110cfa32f7ba075d0f7688724a7d80dca1f` |
| 9 | `theorem` | [exponent_min'](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-min--404766c9126b396128e8cdd1.md) | 135 | `result-track:404766c9126b396128e8cdd1f417dc2165e36f31c5afeed4349f15fec3c71b89` |
| 10 | `theorem` | [exponent_min](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-min--352f52879cd1f669fc07c4dc.md) | 144 | `result-track:352f52879cd1f669fc07c4dc2d7a37b8ff23783ad6619c2c96a642647066081c` |
| 11 | `theorem` | [exp_eq_one_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exp-eq-one-of-subsingleton--926467105442f9184027e1e6.md) | 152 | `result-track:926467105442f9184027e1e6a5e9f46d8e866ce2d619f408e47601610114bdf6` |
| 12 | `theorem` | [order_dvd_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/order-dvd-exponent--2f8181ea58ef588989e59879.md) | 163 | `result-track:2f8181ea58ef588989e598790143b881e89029bc96e17243e9a9599189ea9e48` |
| 13 | `theorem` | [exponent_dvd_of_forall_pow_eq_one](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-dvd-of-forall-pow-eq-one--e9eb69ebf045d3c18b68d488.md) | 171 | `result-track:e9eb69ebf045d3c18b68d488e68f3c62b9dc0ab635b060fd7c9ac825b2fc0d5c` |
| 14 | `theorem` | [lcm_orderOf_dvd_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/lcm-orderof-dvd-exponent--4b91fff73b17fb71bbb0deaf.md) | 188 | `result-track:4b91fff73b17fb71bbb0deaf3430292e1ce98f953707e57c8734d686ce22c7c7` |
| 15 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.Nat.Prime.exists_orderOf_eq_pow_factorization_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/root-grwtsk-algebra-grouptheory-exponentexists-variant7f1930949096d4e40a--6384397b69f775a3a7fbf1c1.md) | 197 | `result-track:6384397b69f775a3a7fbf1c1d82c55bb25ca2598434995793288d2f65a86df51` |
| 16 | `theorem` | [exponent_ne_zero_iff_range_orderOf_finite](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-ne-zero-iff-range-orderof-finite--4884a660a0d0addd2e884318.md) | 229 | `result-track:4884a660a0d0addd2e884318d7172e32f3f28d326bafc1836dc4aaebf6bd4eb3` |
| 17 | `theorem` | [exponent_eq_zero_iff_range_orderOf_infinite](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-eq-zero-iff-range-orderof-infinite--16d671bee82aca61713ccb91.md) | 254 | `result-track:16d671bee82aca61713ccb9100326fc0f71e995ed561078f3dab0eca248f9b39` |
| 18 | `theorem` | [lcm_order_eq_exponent](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/lcm-order-eq-exponent--068a0b79233b2a5185791c85.md) | 262 | `result-track:068a0b79233b2a5185791c854a7b381f13f74b526aedb37d180fb644ae0b1806` |
| 19 | `theorem` | [exponent_ne_zero_of_finite](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-ne-zero-of-finite--554d47051878906d18c6d1af.md) | 277 | `result-track:554d47051878906d18c6d1aff7a3f760d28f5f04dc3e7ebf76dbf32571bf6e8e` |
| 20 | `theorem` | [exponent_eq_iSup_orderOf](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-eq-isup-orderof--e780488c44ce9646f46d39f8.md) | 290 | `result-track:e780488c44ce9646f46d39f847395baebac4bc0ec2edfc14990d7f495e9405ee` |
| 21 | `theorem` | [exponent_eq_iSup_orderOf'](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-eq-isup-orderof--9e59704cbb60aa01ad054dc5.md) | 336 | `result-track:9e59704cbb60aa01ad054dc50bbab4165a34701f3e5a4afe6e368ae75bf3d43e` |
| 22 | `theorem` | [exponent_eq_max'_orderOf](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/exponent-eq-max-orderof--7d3fa4cd1a28992d91038fd5.md) | 353 | `result-track:7d3fa4cd1a28992d91038fd5f93430702c901c65066a290d9aa3678cbb9917c0` |
| 23 | `theorem` | [card_dvd_exponent_pow_rank](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/card-dvd-exponent-pow-rank--5d13c6eb89f07afa59f0ec89.md) | 373 | `result-track:5d13c6eb89f07afa59f0ec89d8eb6ec3c5cfd7c5b5cb59af8106392f3db7a796` |
| 24 | `theorem` | [card_dvd_exponent_pow_rank'](../../../../../mathematics/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/declarations/card-dvd-exponent-pow-rank--1de3136417bb190b70b63ceb.md) | 389 | `result-track:1de3136417bb190b70b63ceb3c1aa96a68a8c604ea26a5fb45b87a765f0633bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
