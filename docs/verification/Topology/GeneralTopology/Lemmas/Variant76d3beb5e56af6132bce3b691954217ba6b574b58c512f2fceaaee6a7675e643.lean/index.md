# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d72c81ef81f964456d81cafb4ee8380437a75c9e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d72c81ef81f964456d81cafb4ee8380437a75c9e`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.AddChar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Int` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Dilation` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Filter.Tendsto.zero_mul_isBoundedUnder_le](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/filter-tendsto-zero-mul-isboundedunder-le--499a815095cdc9a3e6a0e0bb.md) | 39 | `result-track:499a815095cdc9a3e6a0e0bb1dcdbb7271f21f0273709518ebc9c64b0da3977a` |
| 2 | `theorem` | [Filter.isBoundedUnder_le_mul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/filter-isboundedunder-le-mul-tendsto-zero--49db05ed944aaca4d24a394f.md) | 44 | `result-track:49db05ed944aaca4d24a394fe68b78ec677001ecb80001e701cffdb1823e103e` |
| 3 | `instance` | [Pi.nonUnitalSeminormedRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/pi-nonunitalseminormedring--bfbd93f7bd4cd403c1b3e00e.md) | 53 | `declaration-track:bfbd93f7bd4cd403c1b3e00e29c1159066ae4d4ec9162b26978573fac6d9b6bf` |
| 4 | `instance` | [Pi.seminormedRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/pi-seminormedring--90f09c7ba737649d2ad3a48d.md) | 70 | `declaration-track:90f09c7ba737649d2ad3a48d4a8928ea793546ba4859623a7a570c31b37763de` |
| 5 | `instance` | [Pi.nonUnitalNormedRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/pi-nonunitalnormedring--93f8676bb00aefea98b0110e.md) | 82 | `declaration-track:93f8676bb00aefea98b0110e0b06676b91bd9c97bb9bb78e48fb371ba3e7cb64` |
| 6 | `instance` | [Pi.normedRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/pi-normedring--0258c9b052838420b0c6cf31.md) | 93 | `declaration-track:0258c9b052838420b0c6cf316a53e27ed5538de9199f3308aea09b5131bfd8d0` |
| 7 | `instance` | [Pi.nonUnitalSeminormedCommRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/pi-nonunitalseminormedcommring--b4bdc1122c3c2723ba91f661.md) | 105 | `declaration-track:b4bdc1122c3c2723ba91f661eab4e6420274fddf92d54ab316637735862086ac` |
| 8 | `instance` | [Pi.nonUnitalNormedCommRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/pi-nonunitalnormedcommring--1dab88625eaecebbfca58be3.md) | 117 | `declaration-track:1dab88625eaecebbfca58be306b5f31f2c98aba5e835dbb7aa7728ba8f05b0e3` |
| 9 | `instance` | [Pi.seminormedCommRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/pi-seminormedcommring--32a29a61cfc290d8a0e907c4.md) | 129 | `declaration-track:32a29a61cfc290d8a0e907c4d2f9fde64a876ce2babc6e4ffcbf759da9b1bf54` |
| 10 | `instance` | [Pi.normedCommutativeRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/pi-normedcommutativering--b506a427e47566b1cbd448c6.md) | 141 | `declaration-track:b506a427e47566b1cbd448c67cfb54ab13bacafb9a002d98440e931916e95147` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/instance--9b5353ad508ef394b21bafda.md) | 148 | `declaration-track:9b5353ad508ef394b21bafdafbf476672f5236c600de19a9411ec41915b18b78` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/instance--03a4a9604b5e89e09dd3b2a0.md) | 173 | `declaration-track:03a4a9604b5e89e09dd3b2a0f546e8663af27ef597226735b44bdc55c98be18d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/instance--f86d74a1cfcdbcc181939742.md) | 178 | `declaration-track:f86d74a1cfcdbcc181939742d744d50cd6c1b4e0aa71279a27853bf278fc4a04` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/instance--af478e551cbde626fee8d148.md) | 183 | `declaration-track:af478e551cbde626fee8d148fe3f794f9f58f35764c117be0d9ec93c0dd858f4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/instance--fcb5b502e13b8f9459b9673f.md) | 188 | `declaration-track:fcb5b502e13b8f9459b9673f52cb585a379eadbe8538eeb86e3c278e290175ab` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/instance--7f37d5742e2ad7a2d12a8461.md) | 193 | `declaration-track:7f37d5742e2ad7a2d12a84616fa4f80c74ae2c2e00b848547aa2fa31ba2176d0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/instance--4fa343db0f3c80025298f742.md) | 198 | `declaration-track:4fa343db0f3c80025298f742fe1617e4c0909947a8156deabc37b5680104f046` |
| 18 | `lemma` | [lipschitzWith_sub](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/lipschitzwith-sub--76a3525a3bbde4926a1cc0ff.md) | 206 | `result-track:76a3525a3bbde4926a1cc0ff1d8041995c3a503ccf7a0c3c1ad124a7c8c50473` |
| 19 | `instance` | [Int.instNormedCommRing](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/int-instnormedcommring--e64d8fe44b54ce5044236ff5.md) | 216 | `declaration-track:e64d8fe44b54ce5044236ff5e87de5dc7cad628efbee237b66858b243ab9b282` |
| 20 | `instance` | [Int.instNormOneClass](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/int-instnormoneclass--512d468673add108e9fd11f1.md) | 221 | `declaration-track:512d468673add108e9fd11f163991db5b2bdb4512c8dc30ff1bafee4bdd37e4f` |
| 21 | `instance` | [Int.instNormMulClass](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/int-instnormmulclass--b70463f04afa6bbb940dd1c6.md) | 224 | `declaration-track:b70463f04afa6bbb940dd1c625a9d2dc78d5619c3d325581078242c0d322b4de` |
| 22 | `lemma` | [antilipschitzWith_mul_left](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/antilipschitzwith-mul-left--04fff9d1e975174ea7f33cec.md) | 230 | `result-track:04fff9d1e975174ea7f33cec808820894b662effb876db1c8ba9d09c03f2c4dc` |
| 23 | `lemma` | [antilipschitzWith_mul_right](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/antilipschitzwith-mul-right--1852dcc53345659176675177.md) | 233 | `result-track:1852dcc53345659176675177bee4fd521dff8511d3948754b29cebbfad82298b` |
| 24 | `def` | [Dilation.mulLeft](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/dilation-mulleft--1641248a1c27f9b7553e9b66.md) | 239 | `declaration-track:1641248a1c27f9b7553e9b661a5df5470347343a9f9fdab013654b795f5428b5` |
| 25 | `def` | [Dilation.mulRight](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/dilation-mulright--bacb11a6d36796e48aa009ec.md) | 247 | `declaration-track:bacb11a6d36796e48aa009ecba3750a370657216195aa099795be99ba8c9815e` |
| 26 | `lemma` | [comap_mul_left_cobounded](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/comap-mul-left-cobounded--93b015c3e230f1ac52b489e7.md) | 255 | `result-track:93b015c3e230f1ac52b489e7f3ef4b6b3a70d60b8b36dfa020e7650d5ffc8320` |
| 27 | `lemma` | [comap_mul_right_cobounded](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/comap-mul-right-cobounded--27f5bf3ead0d5ce9c7d21c76.md) | 260 | `result-track:27f5bf3ead0d5ce9c7d21c76a346a3ffa6b908f44c0a87e9d20ede3baf02ef4b` |
| 28 | `lemma` | [IsOfFinOrder.norm_eq_one](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/isoffinorder-norm-eq-one--e84eac325afd5a717aadae31.md) | 271 | `result-track:e84eac325afd5a717aadae3193e03af750e8bb6c3638587d146f84e95b93cb98` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/example--de162aa98385729d33c32baf.md) | 274 | `declaration-track:de162aa98385729d33c32baf242ed583707fc7d954f7ab2b96f350da61cda5cc` |
| 30 | `lemma` | [AddChar.norm_apply](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant76d3beb5e56af6132bce3b691954217ba6b574b58c512f2fceaaee6a7675e643.lean/declarations/addchar-norm-apply--17cfaef6a9d8013c84283e6a.md) | 277 | `result-track:17cfaef6a9d8013c84283e6aba274bc99143a20f327bfcfcf7aa1cdaa9b7c8e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
