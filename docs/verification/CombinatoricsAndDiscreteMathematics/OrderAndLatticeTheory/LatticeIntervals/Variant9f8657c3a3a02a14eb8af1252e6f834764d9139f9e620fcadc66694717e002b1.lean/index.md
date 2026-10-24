# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeIntervals.Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e74d23c79b72ac1f97d1b69e9056d16b450234c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e74d23c79b72ac1f97d1b69e9056d16b450234c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticeinf--fa377c30ba8faf5dd21f4fd3.md) | 43 | `declaration-track:fa377c30ba8faf5dd21f4fd3bd1840f7153313297b013442327dffa03e128743` |
| 2 | `abbrev` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/orderbot--2ebd6c9e4e6abe15521006f4.md) | 47 | `declaration-track:2ebd6c9e4e6abe15521006f46c55e5d9df4e3b49fe1d0d0595638cead13e4d67` |
| 3 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticeinf--f83033feb3070a2c98dd4831.md) | 54 | `declaration-track:f83033feb3070a2c98dd483171418f2d4383a89e1543f938fdd8ce3c21cf1ce0` |
| 4 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticesup--612f2f34d7f2d1d033cd6cbd.md) | 61 | `declaration-track:612f2f34d7f2d1d033cd6cbd72f11f6a142abf1b5683159fd1f0d408581788cc` |
| 5 | `abbrev` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/ordertop--74d34896bc23d4ae9a70d9e4.md) | 65 | `declaration-track:74d34896bc23d4ae9a70d9e40f2f178a468632db1c1d5b3cb3a1aa3bd05baa33` |
| 6 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticesup--7d9b76cfd50a43a8de81a24c.md) | 72 | `declaration-track:7d9b76cfd50a43a8de81a24c52a3643d97e6aa0de3f7fd8f5917c6192efe10d4` |
| 7 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticeinf--b9435375f576011bca24a90e.md) | 81 | `declaration-track:b9435375f576011bca24a90e2b60f512d9c34d55b92693c1ff1693888df712bc` |
| 8 | `lemma` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/coe-inf--0cee040ab649ca81f9d1fa24.md) | 85 | `result-track:0cee040ab649ca81f9d1fa24c202529f232a659eae4489d2545eddbb07abe150` |
| 9 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticesup--081dd47db9442b3203c66103.md) | 89 | `declaration-track:081dd47db9442b3203c66103747f947a5bb3e245ff04dfc12ac99228ed5fe615` |
| 10 | `lemma` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/coe-sup--1f0161bdcb8468badbd72390.md) | 93 | `result-track:1f0161bdcb8468badbd72390b38cac514b3ede5933a13f6f0f55890a73617107` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/instance--cb40fc278535772db50bd959.md) | 97 | `declaration-track:cb40fc278535772db50bd95963dd71e1c4957f46cb8f4a5cf5162330219939c3` |
| 12 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/ordertop--3fc195927b1db4bcb07803dd.md) | 100 | `declaration-track:3fc195927b1db4bcb07803ddc42ec0d3e1c673b283adb0754eafcb40f524c0e6` |
| 13 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/coe-top--ff2dfc747310a8b7dec062f1.md) | 106 | `result-track:ff2dfc747310a8b7dec062f1fa259087e192dbcda4a19e1d1f6bbd3608187c04` |
| 14 | `lemma` | [eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/eq-top-iff--d0bdea40a74739018e67b970.md) | 109 | `result-track:d0bdea40a74739018e67b970caf3cdcb9286f29e63674806e3817aa8a7a03ed8` |
| 15 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/orderbot--9fc3a65fd7d92f1d3e7ffcf1.md) | 113 | `declaration-track:9fc3a65fd7d92f1d3e7ffcf1356b83bb8d43e1cbf33a8a0fb1975f362bf4f522` |
| 16 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/coe-bot--6ecb4d851db0395480991f8d.md) | 119 | `result-track:6ecb4d851db0395480991f8d33b7d59f1c8bb4bb8f46a1ff39dbd9b40bda8f52` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/instance--a028285fe7707c7e02ea9551.md) | 122 | `declaration-track:a028285fe7707c7e02ea955149c7d5daefc0a59dad211e9ed1d5641e596a4557` |
| 18 | `lemma` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/disjoint-iff--0b6101867b3ecb89529b325f.md) | 125 | `result-track:0b6101867b3ecb89529b325f07b2faff88472327662c043ebe0128556ff08a46` |
| 19 | `lemma` | [codisjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/codisjoint-iff--86d0f1b9d8317fa3319297d9.md) | 129 | `result-track:86d0f1b9d8317fa3319297d93b8f1c5d3f178649ec34b723a400b2fc7bf75c46` |
| 20 | `lemma` | [isCompl_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/iscompl-iff--31af02c388f31ed8a1d358c1.md) | 133 | `result-track:31af02c388f31ed8a1d358c160d3d071e1f6b2cc8f4b74f4d356a863bbeab109` |
| 21 | `lemma` | [complementedLattice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/complementedlattice-iff--21e73168f32202b1dd634ba5.md) | 137 | `result-track:21e73168f32202b1dd634ba5c36863e48692f0a869fded67c5e698113aacf901` |
| 22 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticeinf--59826a435e7cfd65cccf4b06.md) | 151 | `declaration-track:59826a435e7cfd65cccf4b0606865f20e4cb452f28a564bff45f1525adfc9a01` |
| 23 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticesup--7e5ddca30be8fcc3f61cedfe.md) | 154 | `declaration-track:7e5ddca30be8fcc3f61cedfeb700029d8aa865f40f51975bba6bc3f85c4ac336` |
| 24 | `instance` | [lattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/lattice--8fc14cc9f7d1e8475f8e05d0.md) | 157 | `declaration-track:8fc14cc9f7d1e8475f8e05d0be56b61c8214b98ce500404a5c4fa8bbd411a7c7` |
| 25 | `instance` | [distribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/distriblattice--656275a1c19f941b36831f44.md) | 160 | `declaration-track:656275a1c19f941b36831f4484bf05a06b3c0b5d39ee7dd04da9fbcce2dfa0c3` |
| 26 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/orderbot--a3e929c84483ee992dee4dcb.md) | 163 | `declaration-track:a3e929c84483ee992dee4dcb0fd3c4ec3bb9205e958ec9b70021304a476e7d77` |
| 27 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/coe-bot--e9ff1df4203c9454f3b6289f.md) | 169 | `result-track:e9ff1df4203c9454f3b6289f4d21ab95607e09fe13e55ef07e565335be994446` |
| 28 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/ordertop--f5e86cf443731c30203cd760.md) | 172 | `declaration-track:f5e86cf443731c30203cd760b5ad145059b4636430fa61b90b2d81859e6ad5f4` |
| 29 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/coe-top--7140540e8b117f81e7c75624.md) | 178 | `result-track:7140540e8b117f81e7c75624775a86966cec012fdcdb41df69919ad6a9cc9d88` |
| 30 | `instance` | [boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/boundedorder--e53ec60a013ca88bace9711b.md) | 181 | `declaration-track:e53ec60a013ca88bace9711b23244269c35c0ae109c5a802f7b0fbb55b9fc716` |
| 31 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticeinf--23f7eec88693727028f511fc.md) | 190 | `declaration-track:23f7eec88693727028f511fc89cf64f17cde3e2bff6a83ff02465caf1b167072` |
| 32 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/semilatticesup--5a2dc81b46971f8f2cb26374.md) | 193 | `declaration-track:5a2dc81b46971f8f2cb2637472311daabbc1dcc0f304335ec6db4650b5d6fc65` |
| 33 | `instance` | [lattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/lattice--b76b99f9d5f82585e59dc0a4.md) | 196 | `declaration-track:b76b99f9d5f82585e59dc0a4064eb35e6db4bcb547f6a051f7db70a8df33c5db` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/instance--d3bb58a30d09798e125c2de6.md) | 202 | `declaration-track:d3bb58a30d09798e125c2de664935fa124b65d889d3a295fb47edaa017bca525` |
| 35 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/coe-bot--cf448a85f2c5007aad527848.md) | 206 | `result-track:cf448a85f2c5007aad527848e0e2b6378979bb24620ffe2f8ee24f85e9bdf7dc` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/instance--cf539f085ef37aa20bd81da4.md) | 209 | `declaration-track:cf539f085ef37aa20bd81da457c45fe88ea41cd60b27b0ec3104fc4f8f6556fe` |
| 37 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/coe-top--300114a6ca8924c59c985772.md) | 213 | `result-track:300114a6ca8924c59c985772959949e9c62bed398c2aca5b85f6b98c0ed667ae` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variant9f8657c3a3a02a14eb8af1252e6f834764d9139f9e620fcadc66694717e002b1.lean/declarations/instance--61d2610709abbb0ba0c256b3.md) | 216 | `declaration-track:61d2610709abbb0ba0c256b3656a2705afd1dd5c5a9fa393237e7eb2acdc97fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
