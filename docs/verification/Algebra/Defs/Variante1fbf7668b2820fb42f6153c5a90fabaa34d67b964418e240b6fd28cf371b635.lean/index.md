# Verification target: GRWTSK.Algebra.Defs.Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3cd19d6b51c68fe749ec327131e3b22477097be",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3cd19d6b51c68fe749ec327131e3b22477097be`.

Source path: `GRWTSK/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Distrib](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/distrib--af70c3785d20f0568fdfb236.md) | 56 | `declaration-track:af70c3785d20f0568fdfb236b65187e6da996399d3b612d2e8202ba1c419c68c` |
| 2 | `class` | [LeftDistribClass](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/leftdistribclass--5f69b07ecebf70e4744b667f.md) | 64 | `declaration-track:5f69b07ecebf70e4744b667f957ae4bdb5f77d53dc7d2d75bb76f505ac03cb9c` |
| 3 | `class` | [RightDistribClass](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/rightdistribclass--969298243ec4d5c9394d5f7a.md) | 70 | `declaration-track:969298243ec4d5c9394d5f7a5f2d2787a8ab5ad3d539ccd0cee84e5a961ac7fd` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--e50f71e77078f998e561b972.md) | 76 | `declaration-track:e50f71e77078f998e561b972b8b6543f1118c7509eebb6b5606e0d2da1bc9828` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--0db783cbc05d848be12a6b30.md) | 81 | `declaration-track:0db783cbc05d848be12a6b30c94cce7d4966eace5a47353816a43fbf3b493c42` |
| 6 | `theorem` | [left_distrib](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/left-distrib--446ed3e0413c6e47a4f33702.md) | 86 | `result-track:446ed3e0413c6e47a4f337029468e44215d7d3cb3542ef5ac81ba174a5e18526` |
| 7 | `theorem` | [right_distrib](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/right-distrib--c4ffe67c93bcc19895e9b377.md) | 94 | `result-track:c4ffe67c93bcc19895e9b377ee43d1722ba4d96385af2d1a6d3720b7fe2732dd` |
| 8 | `theorem` | [distrib_three_right](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/distrib-three-right--94893d89ba91fe578206fb21.md) | 102 | `result-track:94893d89ba91fe578206fb215dc8e2ff6ca5a3addaee476dc75af1bef33c89fd` |
| 9 | `class` | [NonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/nonunitalnonassocsemiring--ee458a8062e7249faa78dc69.md) | 121 | `declaration-track:ee458a8062e7249faa78dc69d30cda64be0a6d49e182e6228957127688532a98` |
| 10 | `class` | [NonUnitalSemiring](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/nonunitalsemiring--e5c393db8fdc1febc538664b.md) | 125 | `declaration-track:e5c393db8fdc1febc538664b8b7ca30a3cc09a577b772496d5ceb93a7c7fcce2` |
| 11 | `class` | [NonAssocSemiring](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/nonassocsemiring--7bfb091fd63b279c004a9da8.md) | 129 | `declaration-track:7bfb091fd63b279c004a9da8c832e50c7a9ca3e77b6af78e95fbdc7200a47c4d` |
| 12 | `class` | [NonUnitalNonAssocRing](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/nonunitalnonassocring--61a3034e1e512763672748f0.md) | 134 | `declaration-track:61a3034e1e512763672748f092f02ab946215f1f371a25c7cdf3e7230862d62b` |
| 13 | `class` | [NonUnitalRing](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/nonunitalring--0e79f468891c1bc0cda15b1c.md) | 140 | `declaration-track:0e79f468891c1bc0cda15b1c2d3850078d5cd27130a88f4ec1631e4acd84c444` |
| 14 | `class` | [NonAssocRing](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/nonassocring--6d2a478b3f3e2c849df7cc52.md) | 144 | `declaration-track:6d2a478b3f3e2c849df7cc52b7f8a8957788e67d026f5d892deb3f0ae49d1e18` |
| 15 | `class` | [Semiring](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/semiring--45578ccfbfd153c7de348a24.md) | 148 | `declaration-track:45578ccfbfd153c7de348a24b4286ecf56c3d2e0a791e1809205f3dc2b428084` |
| 16 | `class` | [Ring](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/ring--4695479c6aaea9ba221a7eff.md) | 151 | `declaration-track:4695479c6aaea9ba221a7eff5f9e0ac8e3bf296bdcf92cda0aea02824081e92f` |
| 17 | `theorem` | [add_one_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/add-one-mul--b7cbcc4736809cc60348060e.md) | 162 | `result-track:b7cbcc4736809cc60348060e7a736a2462567feff213d234ea9b098e8bd453ae` |
| 18 | `theorem` | [mul_add_one](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-add-one--27157e31373c5a7f95ffa99d.md) | 166 | `result-track:27157e31373c5a7f95ffa99db2a012ed3a16f7073a9082bab25160198470ed86` |
| 19 | `theorem` | [one_add_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/one-add-mul--6cb4c1cbeb40a725ae646bb9.md) | 170 | `result-track:6cb4c1cbeb40a725ae646bb91b20e47c88bd7e9435199afd2983169d2b6afc08` |
| 20 | `theorem` | [mul_one_add](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-one-add--23eafb8fd32df015f6072731.md) | 174 | `result-track:23eafb8fd32df015f6072731fa374b59358882fcc837331c9c9d934b6c8c7b96` |
| 21 | `theorem` | [two_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/two-mul--5e30acce550d8485876226c7.md) | 185 | `result-track:5e30acce550d8485876226c7bf86114282af9abe1b561103d04a93ca56c07841` |
| 22 | `theorem` | [bit0_eq_two_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/bit0-eq-two-mul--ab3934aa2d77b22d14c28af2.md) | 191 | `result-track:ab3934aa2d77b22d14c28af286e28dc5889b16a64e8250ec3806daf49182548e` |
| 23 | `theorem` | [mul_two](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-two--7b7b30f4319dd278e75d9d9b.md) | 196 | `result-track:7b7b30f4319dd278e75d9d9b21da45e50090735562c373071ddd2d478dc90223` |
| 24 | `theorem` | [mul_ite](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-ite--331efa9ddacc501e7a9bfb1e.md) | 203 | `result-track:331efa9ddacc501e7a9bfb1ee2062fafcdede7f4eb4ec98090682575842acd5c` |
| 25 | `theorem` | [ite_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/ite-mul--0f4242e72033a9446861000a.md) | 209 | `result-track:0f4242e72033a9446861000a055fcbaaa08ea8bd97ef39e25b323d6791f05298` |
| 26 | `theorem` | [mul_boole](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-boole--2a1a8d00aea8f7c984128ae9.md) | 225 | `result-track:2a1a8d00aea8f7c984128ae9e9095af25813ef90c656364bdbec744c5739f631` |
| 27 | `theorem` | [boole_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/boole-mul--2caf7468a9a7881e67a42780.md) | 230 | `result-track:2caf7468a9a7881e67a427801a9966a9f6f5a2809340faf29ec0ceacd9d7e7cf` |
| 28 | `theorem` | [ite_mul_zero_left](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/ite-mul-zero-left--60d3de07cfdc1d0f9583585d.md) | 234 | `result-track:60d3de07cfdc1d0f9583585d2625ca89378e4487366f2b888ae1d52044715852` |
| 29 | `theorem` | [ite_mul_zero_right](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/ite-mul-zero-right--54a45c32e79d2071462ec044.md) | 238 | `result-track:54a45c32e79d2071462ec0449184be521258d327574bd5efafbbadf32d5d8b9a` |
| 30 | `theorem` | [ite_and_mul_zero](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/ite-and-mul-zero--967fae72e148bff1fc993afc.md) | 242 | `result-track:967fae72e148bff1fc993afc30c58e38f647b0208c249dce474148c70a808c50` |
| 31 | `class` | [NonUnitalCommSemiring](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/nonunitalcommsemiring--1dad33931abb6fcae52c405d.md) | 251 | `declaration-track:1dad33931abb6fcae52c405d4011b1e48e2b1f6bb271401c84eb34aef9dd5d93` |
| 32 | `class` | [CommSemiring](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/commsemiring--83a6255d23906a0648ae205c.md) | 254 | `declaration-track:83a6255d23906a0648ae205c1e2b7399818d723e20ec98c003bf23c101a9b07f` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--765fae75e74f184279d6e1f6.md) | 258 | `declaration-track:765fae75e74f184279d6e1f6a12a878b8ebcae1e590bfb2bf8179db1d2e4b91e` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--0f4e59c169e6ec125d6d7f24.md) | 264 | `declaration-track:0f4e59c169e6ec125d6d7f247b7d76562dd516070e067a0d0b2a843e8ef4ed1e` |
| 35 | `theorem` | [add_mul_self_eq](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/add-mul-self-eq--2f4848254bd79e42537b2cf7.md) | 273 | `result-track:2f4848254bd79e42537b2cf71e639cdaf9e0d9e8463c5491f8611e4b7be22632` |
| 36 | `class` | [HasDistribNeg](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/hasdistribneg--efa136b147e39354c007f8ee.md) | 285 | `declaration-track:efa136b147e39354c007f8ee10c68a336b30b6cbcafed2f3a3167a5146559eb6` |
| 37 | `theorem` | [neg_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/neg-mul--11edf4da37d3ab3ff3fe11c7.md) | 297 | `result-track:11edf4da37d3ab3ff3fe11c78e046225db9149833b9dfe4fdce0ca7d0e9128a6` |
| 38 | `theorem` | [mul_neg](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-neg--6775fd4f600865ea3efed3cd.md) | 302 | `result-track:6775fd4f600865ea3efed3cd734a4f6a4faca25ff97c0c7583f1e9819f366071` |
| 39 | `theorem` | [neg_mul_neg](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/neg-mul-neg--1ffb5d245dd30a1aba6b76c4.md) | 306 | `result-track:1ffb5d245dd30a1aba6b76c4cedff539913b2b8dc51b65f2c255be9352890957` |
| 40 | `theorem` | [neg_mul_eq_neg_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/neg-mul-eq-neg-mul--5317928a17facfe11f0efb92.md) | 309 | `result-track:5317928a17facfe11f0efb92bcc08c7510edc44591872c2cec733ee5aa34a91f` |
| 41 | `theorem` | [neg_mul_eq_mul_neg](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/neg-mul-eq-mul-neg--c027fb3181267093877af431.md) | 313 | `result-track:c027fb3181267093877af431bbdb6a9a4a746c6bbace82195a1120997b48c88d` |
| 42 | `theorem` | [neg_mul_comm](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/neg-mul-comm--14a6d48624eedffb1d3ac159.md) | 317 | `result-track:14a6d48624eedffb1d3ac1596e7af826e44a07a69ece7136057a87143c49e7f4` |
| 43 | `theorem` | [neg_eq_neg_one_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/neg-eq-neg-one-mul--c21c1de15efce96c0785b006.md) | 326 | `result-track:c21c1de15efce96c0785b006deb3a0c7ed644c07e2d1a0cb3173d0ac0a2a0362` |
| 44 | `theorem` | [mul_neg_one](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-neg-one--333145c19d10d3a6998bb0da.md) | 331 | `result-track:333145c19d10d3a6998bb0da370650f2b3f0802101f0c7f360c3c6a0e16b7faa` |
| 45 | `theorem` | [neg_one_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/neg-one-mul--0c495b90e200955ea4b94d90.md) | 336 | `result-track:0c495b90e200955ea4b94d9079ed310248a6743be43e8b1759d4b4241e136e61` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--71fd00eb034918051312cedc.md) | 345 | `declaration-track:71fd00eb034918051312cedcba8ed215e95cd81088bce52d0eee4b1f2c93c5fe` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--4b25716f3b6f0e0a7eeacd76.md) | 362 | `declaration-track:4b25716f3b6f0e0a7eeacd76cb48adfc54bbb65f5fbcef64ac51faba21b5f41b` |
| 48 | `theorem` | [mul_sub_left_distrib](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-sub-left-distrib--f484ecef84c263f3d981dc94.md) | 369 | `result-track:f484ecef84c263f3d981dc9440d1be200451d0438e27903378f051b87c4545ac` |
| 49 | `theorem` | [mul_sub_right_distrib](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-sub-right-distrib--2504b1173aade045717309b6.md) | 376 | `result-track:2504b1173aade045717309b68619a907c71634c1ba9fb9c21d743bbfb5a066a0` |
| 50 | `theorem` | [mul_add_eq_mul_add_iff_sub_mul_add_eq](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-add-eq-mul-add-iff-sub-mul-add-eq--8460ac40c3e4a570e0012b23.md) | 387 | `result-track:8460ac40c3e4a570e0012b23924af462a4ad93e08aab50cd6d6f8f32bdaae4a1` |
| 51 | `theorem` | [sub_mul_add_eq_of_mul_add_eq_mul_add](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/sub-mul-add-eq-of-mul-add-eq-mul-add--3af0d54ec6523d8fb1ce396b.md) | 403 | `result-track:3af0d54ec6523d8fb1ce396bc56ad5e1549edccafe8a12e54ec700b2fd1542ca` |
| 52 | `theorem` | [sub_one_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/sub-one-mul--4e442c7ec75e0efc9da2a378.md) | 415 | `result-track:4e442c7ec75e0efc9da2a378a02befd33e30fc64d605c42f0b770674ff3b383b` |
| 53 | `theorem` | [mul_sub_one](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-sub-one--ef695e60fd079647dc5df39a.md) | 418 | `result-track:ef695e60fd079647dc5df39a08fbed79cab6818adc31b0a319523b4d9cad2da7` |
| 54 | `theorem` | [one_sub_mul](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/one-sub-mul--6ce2b9ea66f1ee2b647f4ba3.md) | 421 | `result-track:6ce2b9ea66f1ee2b647f4ba3c993c14943e66d8b28d86684fd6ccd020b6d28ae` |
| 55 | `theorem` | [mul_one_sub](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/mul-one-sub--1c881538348cdc3322e7b724.md) | 424 | `result-track:1c881538348cdc3322e7b724516aa10dfd666f1cec2dbf3c7bc059adbee75765` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--cdca7733ade85a7c5893d721.md) | 435 | `declaration-track:cdca7733ade85a7c5893d721ca5af81ff327ad5055c7b583d647e7fb770bec3a` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--a95237c1e2a508153ae141ff.md) | 443 | `declaration-track:a95237c1e2a508153ae141ff2c35682bcd78b8b3aae900d549a708cefbb41baf` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--9365e8230c39110c312db0e5.md) | 453 | `declaration-track:9365e8230c39110c312db0e55b22cf28f415982fba7976ed5cf3dcda73b6a2f3` |
| 59 | `class` | [NonUnitalCommRing](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/nonunitalcommring--c5313aebdac53d4f6434fac9.md) | 460 | `declaration-track:c5313aebdac53d4f6434fac9de0230cac88e178ba346db32dc0fabb830879f23` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--bca727065ea075827d62cb9b.md) | 464 | `declaration-track:bca727065ea075827d62cb9bb2e82c534825132568f0dc22ca386d74107990ef` |
| 61 | `class` | [CommRing](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/commring--b0d7a168ecca75e823884ae5.md) | 469 | `declaration-track:b0d7a168ecca75e823884ae5528d7c25366080608c0caf3d183c1aa2994fa959` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--73611f9617c11ffa32af127b.md) | 472 | `declaration-track:73611f9617c11ffa32af127bd300334502dcccf7afe35fb292d12b9595751dcd` |
| 63 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--e2c08f2f744ac1288f77ca2a.md) | 477 | `declaration-track:e2c08f2f744ac1288f77ca2a83d257a7c01b0f74f049f62aab9961d185bea3d6` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/instance--8a3df6f1b7d7f7cddaebe96a.md) | 482 | `declaration-track:8a3df6f1b7d7f7cddaebe96a1fd3567c74ad2f0f82781ae6f6fbd02b8b7d67f6` |
| 65 | `class` | [IsDomain](../../../../mathematics/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/declarations/isdomain--622e8772f35769cd0cae01a5.md) | 493 | `declaration-track:622e8772f35769cd0cae01a5c5bced14fb84dc3d05a87efdfaf63100cad29109` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
