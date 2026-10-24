# Verification target: GRWTSK.Topology.AlgebraicTopology.Resolution.Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5023b82ad3f05a9aa72cbda7e98d8480f2852cdf",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5023b82ad3f05a9aa72cbda7e98d8480f2852cdf`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective.Resolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [descFZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/descfzero--6320460709dfd039571d3944.md) | 58 | `declaration-track:6320460709dfd039571d3944cedc07d224b53ba68ea2f8286b9edef1908e5c92` |
| 2 | `lemma` | [exact₀](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/exact--75e6e26b600366f18461ba89.md) | 68 | `result-track:75e6e26b600366f18461ba898702c7c98d4ebf53edaf0e79e5407a4fb3d98fba` |
| 3 | `def` | [descFOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/descfone--9ffe6bdb9c0d6c98939fa4fe.md) | 73 | `declaration-track:9ffe6bdb9c0d6c98939fa4fe2d3ce44e0408cf8ec0967e0a8893e626de62c632` |
| 4 | `theorem` | [descFOne_zero_comm](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/descfone-zero-comm--db4eb52ba7bea798981c5436.md) | 79 | `result-track:db4eb52ba7bea798981c5436a54c7cfcd04da66aa27ab962f27276e939ff6c52` |
| 5 | `def` | [descFSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/descfsucc--6942faeb7fa48df179426998.md) | 85 | `declaration-track:6942faeb7fa48df17942699860d06f38c993eb3ec17434589526242592c36d8c` |
| 6 | `def` | [desc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/desc--088b84d8d505ac5b98b4ea88.md) | 95 | `declaration-track:088b84d8d505ac5b98b4ea88222648e895dd904f89a92a9060aabdf9b1bb607c` |
| 7 | `theorem` | [desc_commutes](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/desc-commutes--20a8cce7b193cb3880b88f45.md) | 102 | `result-track:20a8cce7b193cb3880b88f45cc460b92dcb46335554605755eeda64789bd793f` |
| 8 | `lemma` | [desc_commutes_zero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/desc-commutes-zero--d0520c5c3fd5a33b0e753753.md) | 108 | `result-track:d0520c5c3fd5a33b0e753753178ba91dde6320f83e4cd5d1545f1f17c7a06aea` |
| 9 | `def` | [descHomotopyZeroZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/deschomotopyzerozero--1744ee16994979b2cdd62c47.md) | 115 | `declaration-track:1744ee16994979b2cdd62c474d174aad0b9086d2093dc789bbcd36780f23edb9` |
| 10 | `lemma` | [comp_descHomotopyZeroZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/comp-deschomotopyzerozero--f24e40136061e238786fe566.md) | 120 | `result-track:f24e40136061e238786fe5668837c9cc79d13594c03ea82e1c3aa8869f7ee9c9` |
| 11 | `def` | [descHomotopyZeroOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/deschomotopyzeroone--54328aebd7a074b9c90745ad.md) | 126 | `declaration-track:54328aebd7a074b9c90745ad4549b577c1fa592c9ed4061ed86f9dbe687bed0e` |
| 12 | `lemma` | [comp_descHomotopyZeroOne](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/comp-deschomotopyzeroone--d75cd38e88e406544382a949.md) | 134 | `result-track:d75cd38e88e406544382a94937c2b672804309219f3380e118a876bb843236f5` |
| 13 | `def` | [descHomotopyZeroSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/deschomotopyzerosucc--842e93c611ebced1d20ab752.md) | 141 | `declaration-track:842e93c611ebced1d20ab7528d8b2a50b04fc0bd5c82b4f9ad58e3bd1d1ca1dd` |
| 14 | `lemma` | [comp_descHomotopyZeroSucc](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/comp-deschomotopyzerosucc--891c2fbc593ef71a794d18a7.md) | 153 | `result-track:891c2fbc593ef71a794d18a78f2f21af0ed964b5a7678233ae03c70e2af9c1c6` |
| 15 | `def` | [descHomotopyZero](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/deschomotopyzero--b4032a3ad5c48cb50e00e0e0.md) | 162 | `declaration-track:b4032a3ad5c48cb50e00e0e0c56a687eb977883860243588ba0d753c01af68d9` |
| 16 | `def` | [descHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/deschomotopy--903b40b747eae57034c91e58.md) | 169 | `declaration-track:903b40b747eae57034c91e5895d740c588512a460223d3eaba5cf20de2bfb382` |
| 17 | `def` | [descIdHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/descidhomotopy--fb4a4c84925981cc72d4ab2b.md) | 175 | `declaration-track:fb4a4c84925981cc72d4ab2be7d9ce2d695a2a4b57ee152258d0171045f85692` |
| 18 | `def` | [descCompHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/desccomphomotopy--3ab9443eb727065617fdfeb7.md) | 180 | `declaration-track:3ab9443eb727065617fdfeb715e4989ec6deb0eb919854758f0735ae28185bad` |
| 19 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/homotopyequiv--38f4add6bc161f1d9c8dd384.md) | 187 | `declaration-track:38f4add6bc161f1d9c8dd3843aacc0acb0db6ed8814294e9575ff4176a017e42` |
| 20 | `theorem` | [homotopyEquiv_hom_ι](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/homotopyequiv-hom--335f31221c373115a8b9b47c.md) | 197 | `result-track:335f31221c373115a8b9b47cb682b22cb55d5ea8d29592b51e20871dd7775cb0` |
| 21 | `theorem` | [homotopyEquiv_inv_ι](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/homotopyequiv-inv--ff69a41878311ac210744ca0.md) | 201 | `result-track:ff69a41878311ac210744ca00d7fddb1dce749df912ef381fc4a6c152ffb372a` |
| 22 | `abbrev` | [injectiveResolution](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/injectiveresolution--f884037a363729debb697432.md) | 213 | `declaration-track:f884037a363729debb697432286491b82030d6704c58acb9a6c4be32347d9ff1` |
| 23 | `def` | [injectiveResolutions](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/injectiveresolutions--458b2f54e1a92cc878c7d027.md) | 223 | `declaration-track:458b2f54e1a92cc878c7d0277ade86199c4db2e6ef7d254eeaf36ef7da44c2f4` |
| 24 | `def` | [InjectiveResolution.iso](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/injectiveresolution-iso--86875c2faf836a18c46987cf.md) | 238 | `declaration-track:86875c2faf836a18c46987cfabae181033490b0d44742c511fb992bb83b4cef1` |
| 25 | `lemma` | [InjectiveResolution.iso_hom_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/injectiveresolution-iso-hom-naturality--575d243686f6ac0e276ee389.md) | 244 | `result-track:575d243686f6ac0e276ee389035b286890a0cffc172e7adf414ef1e547bdda44` |
| 26 | `lemma` | [InjectiveResolution.iso_inv_naturality](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/injectiveresolution-iso-inv-naturality--288caa4fce89fbc36752b91d.md) | 254 | `result-track:288caa4fce89fbc36752b91d9ab80dce2816ac468bd695e8ffadaef51d830020` |
| 27 | `theorem` | [exact_f_d](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/exact-f-d--f5933a82e4d0dfdd2a3949eb.md) | 268 | `result-track:f5933a82e4d0dfdd2a3949eb67871d21fa2a839b84ca2f3c9f3f48498b607c38` |
| 28 | `def` | [ofCocomplex](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/ofcocomplex--630a1150ea6e82812d701563.md) | 301 | `declaration-track:630a1150ea6e82812d701563eeacb418de387397d27720853e45ad1c54e617a5` |
| 29 | `lemma` | [ofCocomplex_d_0_1](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/ofcocomplex-d-0-1--ee335338918f4b67f5066ca4.md) | 305 | `result-track:ee335338918f4b67f5066ca4afd05e1a396b670450547391cccb65ec6c63bc40` |
| 30 | `lemma` | [ofCocomplex_exactAt_succ](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/ofcocomplex-exactat-succ--f2ae65233288144a806d3eba.md) | 309 | `result-track:f2ae65233288144a806d3eba8e50ee612b21f7f8dae4bdf263430a26071d2877` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/instance--21e20f21b1c13bd0b1193d3e.md) | 321 | `declaration-track:21e20f21b1c13bd0b1193d3e02cf795e3328d9fadd2f09fbdf9072a4c3448bc2` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/instance--b2c4eba1a75ba1c1efe819af.md) | 343 | `declaration-track:b2c4eba1a75ba1c1efe819af0739266cee06226000d217710840ced0b9b4760d` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/declarations/instance--fe0cd24bfc8fb788e66bfa0f.md) | 345 | `declaration-track:fe0cd24bfc8fb788e66bfa0fc5be1d683fe762152e94cf4b148d0b687b40dae6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
