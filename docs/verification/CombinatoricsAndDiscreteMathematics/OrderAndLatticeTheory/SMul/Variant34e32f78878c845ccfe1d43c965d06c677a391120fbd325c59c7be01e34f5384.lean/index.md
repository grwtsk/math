# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SMul.Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3322a28b530957a8a43e9cbacdd29d6d7baf4606",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3322a28b530957a8a43e9cbacdd29d6d7baf4606`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.SMul` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/orderedsmul--6029f92e23c370f5a0293f65.md) | 48 | `declaration-track:6029f92e23c370f5a0293f65d183ccbd01b14c03ab92040c648eaf3605452c6e` |
| 2 | `instance` | [instSMulWithZeroOrderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/instsmulwithzeroorderdual--6c2cc1c573174470fa0ab26d.md) | 60 | `declaration-track:6c2cc1c573174470fa0ab26d38cc709b67d5dc4716a36adbfebfd9c023f3ed29` |
| 3 | `instance` | [instMulActionOrderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/instmulactionorderdual--27695ca870e5b221adefddaf.md) | 66 | `declaration-track:27695ca870e5b221adefddafe48d71f04c19a63968191678b10e36e2e62a4cd7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/instance--bf0a9b03e6a697d1cc2e3049.md) | 71 | `declaration-track:bf0a9b03e6a697d1cc2e3049b7d59e24b9e6780ac638de0b6a2176f59f5dc16f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/instance--c20dd757aa84074a14a1fd42.md) | 74 | `declaration-track:c20dd757aa84074a14a1fd42a1ad228f05fb6108d7b9594debf326c29293166d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/instance--42d15db2c290435d7882b7c5.md) | 78 | `declaration-track:42d15db2c290435d7882b7c5fe963b21bbc7c502dbdf7de5bdf9808803ecdc96` |
| 7 | `theorem` | [smul_lt_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-lt-smul-of-pos--7cd8252d3898ac2614a24b9b.md) | 90 | `result-track:7cd8252d3898ac2614a24b9b619bfdb6b12e5f910ca217c562ab69fc24a89acc` |
| 8 | `theorem` | [smul_le_smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-le-smul-of-nonneg--171d89b0953e7e9c1f24925a.md) | 94 | `result-track:171d89b0953e7e9c1f24925a15b2c7490d436526fe9e598884fc446e26f47d3c` |
| 9 | `theorem` | [smul_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-nonneg--461a708b2f62914f4a5cdba1.md) | 102 | `result-track:461a708b2f62914f4a5cdba1ec447e69e5d42f8df2512b4c3ce95b30ee9b8273` |
| 10 | `theorem` | [smul_nonpos_of_nonneg_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-nonpos-of-nonneg-of-nonpos--32b7c3278b83a6e91ca3fb5f.md) | 108 | `result-track:32b7c3278b83a6e91ca3fb5f08f8226242a0bc065230de53c3dfbd9bf2c4312f` |
| 11 | `theorem` | [eq_of_smul_eq_smul_of_pos_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/eq-of-smul-eq-smul-of-pos-of-le--dfc65198a8cee091d4c87d56.md) | 112 | `result-track:dfc65198a8cee091d4c87d56474ee70fd4d1af9ce26840e8144c22a1e1c9133d` |
| 12 | `theorem` | [lt_of_smul_lt_smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/lt-of-smul-lt-smul-of-nonneg--5b3cf918175167ceb6f76f0b.md) | 116 | `result-track:5b3cf918175167ceb6f76f0b14a3495554819a36abe560313511db89261b1c0c` |
| 13 | `theorem` | [smul_lt_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-lt-smul-iff-of-pos--cd4b269277569e06bc2c777b.md) | 122 | `result-track:cd4b269277569e06bc2c777b5a7c6d6c12270273e96fcaabd9b7b6a7f5dda4c1` |
| 14 | `theorem` | [smul_pos_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-pos-iff-of-pos--bf552252390a67be0cba0827.md) | 126 | `result-track:bf552252390a67be0cba0827062f256d7a75ebf9dd692cf04333fe02bba68939` |
| 15 | `theorem` | [monotone_smul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/monotone-smul-left--5671933114278d8ced6e51fc.md) | 135 | `result-track:5671933114278d8ced6e51fcf93b09751aaa3653fa49a3047caab792f18b7e01` |
| 16 | `theorem` | [strictMono_smul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/strictmono-smul-left--5b13f540abb46fb859270af2.md) | 139 | `result-track:5b13f540abb46fb859270af268b193de21d4509d4a4b536921fafcdea18cd33d` |
| 17 | `theorem` | [smul_lowerBounds_subset_lowerBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-lowerbounds-subset-lowerbounds-smul--4ad22239730ddbd8c8404ea9.md) | 143 | `result-track:4ad22239730ddbd8c8404ea9d9fed832efa5f92b7d557a71b52eda79a2050d65` |
| 18 | `theorem` | [smul_upperBounds_subset_upperBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-upperbounds-subset-upperbounds-smul--8130563d1e2de7e8ee0136b5.md) | 148 | `result-track:8130563d1e2de7e8ee0136b52f33c3700f61cc06861026706af31531734b6f9b` |
| 19 | `theorem` | [BddBelow.smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/bddbelow-smul-of-nonneg--35e0a4250f502c0b3e44d601.md) | 153 | `result-track:35e0a4250f502c0b3e44d6012afbbb4c4dc1de73cf8d41b59c2598c2cc608981` |
| 20 | `theorem` | [BddAbove.smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/bddabove-smul-of-nonneg--941f488de03840d07d1d3b61.md) | 157 | `result-track:941f488de03840d07d1d3b6132ac6171c9e24f645a25eba1d7dc9dec66087f60` |
| 21 | `theorem` | [OrderedSMul.mk''](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/orderedsmul-mk--265a85d1a88750c62ed943cd.md) | 165 | `result-track:265a85d1a88750c62ed943cd8db99e1e0aac2ddc9310dce9e9fd610efa95a722` |
| 22 | `instance` | [Nat.orderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/nat-orderedsmul--68918309cc21ea16750d3b0a.md) | 171 | `declaration-track:68918309cc21ea16750d3b0a8a08d88b786dd35429ed5e1ff0c8e5fad799caee` |
| 23 | `instance` | [Int.orderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/int-orderedsmul--99627a5aa886f2784a84c003.md) | 181 | `declaration-track:99627a5aa886f2784a84c00383404aaef954dea00423b604d598edb42eddab03` |
| 24 | `instance` | [LinearOrderedSemiring.toOrderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/linearorderedsemiring-toorderedsmul--ebe91ddae30f15f2eb751d9b.md) | 190 | `declaration-track:ebe91ddae30f15f2eb751d9b58572f0a33c5f6c4313638d80b6aa2dceaf95d1c` |
| 25 | `theorem` | [OrderedSMul.mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/orderedsmul-mk--98048037af644daa42bb7965.md) | 202 | `result-track:98048037af644daa42bb796567e194bd26b862d7a23b9e827948a22a81d56520` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/instance--02f4ed63b166327968b27e0f.md) | 216 | `declaration-track:02f4ed63b166327968b27e0f987a154742cedb4709bcfb26b35929fef22fc0f9` |
| 27 | `instance` | [Pi.orderedSMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/pi-orderedsmul--7a9b39a20cdda4707ed5f915.md) | 220 | `declaration-track:7a9b39a20cdda4707ed5f915988895e2e012573a7ef76eea0d9cefe7d2746b0a` |
| 28 | `instance` | [Pi.orderedSMul'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/pi-orderedsmul--9ef119d91d235f36729a8000.md) | 227 | `declaration-track:9ef119d91d235f36729a8000529fc944491f1aafc8ae75363717f2832aa81f59` |
| 29 | `instance` | [Pi.orderedSMul''](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/pi-orderedsmul--c2e4c5a4b9b5ea47108da0a6.md) | 232 | `declaration-track:c2e4c5a4b9b5ea47108da0a64eacc5a82d798252456deb24c05ac91146bba255` |
| 30 | `theorem` | [smul_le_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-le-smul-iff-of-pos--8fcda298218c729fed31d193.md) | 238 | `result-track:8fcda298218c729fed31d19374e0b194271a9844bb8e157b5c685a26e7b97dd1` |
| 31 | `theorem` | [inv_smul_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/inv-smul-le-iff--2c59cd3cc567801646048d33.md) | 245 | `result-track:2c59cd3cc567801646048d33b0b7b0aa338c366f86d469d28ac0e684883cd9d5` |
| 32 | `theorem` | [inv_smul_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/inv-smul-lt-iff--0464d58b8403f149af66bd8d.md) | 249 | `result-track:0464d58b8403f149af66bd8d0e021912f333a9f211f8989345716208eedaa899` |
| 33 | `theorem` | [le_inv_smul_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/le-inv-smul-iff--f65beac0b7f4605a00872927.md) | 253 | `result-track:f65beac0b7f4605a008729276cf30e4b464d4b543693dfaed14be8305785f169` |
| 34 | `theorem` | [lt_inv_smul_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/lt-inv-smul-iff--8f1bed136cb6428ca1b3cc46.md) | 257 | `result-track:8f1bed136cb6428ca1b3cc4633cd41587ad9bd301bc1091dc45def6161ade0bd` |
| 35 | `def` | [OrderIso.smulLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/orderiso-smulleft--e6cfa1d63c23aa243e49e6df.md) | 265 | `declaration-track:e6cfa1d63c23aa243e49e6dfb6b28846739c8f8c3fe4f3c903ef53b075862498` |
| 36 | `theorem` | [lowerBounds_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/lowerbounds-smul-of-pos--71687c56f669ed50e4f6ff65.md) | 278 | `result-track:71687c56f669ed50e4f6ff650ad95f88b3acec8d79daac2b4f85bd9e00be82ff` |
| 37 | `theorem` | [upperBounds_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/upperbounds-smul-of-pos--213c946345bc1dbc9437565a.md) | 283 | `result-track:213c946345bc1dbc9437565af5a2b68af65cb9a1885974ea7b6126d8b5e81b13` |
| 38 | `theorem` | [bddBelow_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/bddbelow-smul-iff-of-pos--a845db968c1b6c1d72e455c5.md) | 288 | `result-track:a845db968c1b6c1d72e455c5ad8571a445404bbf9e5ec104f1902041e3b3255f` |
| 39 | `theorem` | [bddAbove_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/bddabove-smul-iff-of-pos--5acafc12e5fda28e0a52bb3a.md) | 293 | `result-track:5acafc12e5fda28e0a52bb3a58efb4eb0cc3ef01680d43f34f34351d2d3ba627` |
| 40 | `theorem` | [smul_nonneg_of_pos_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-nonneg-of-pos-of-nonneg--e14cb7f028968ac69faeb921.md) | 306 | `result-track:e14cb7f028968ac69faeb921245a041c0602e62259e6ee287fbaa47ae94c769a` |
| 41 | `theorem` | [smul_nonneg_of_nonneg_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-nonneg-of-nonneg-of-pos--31b9cf2ae69af652f4263525.md) | 309 | `result-track:31b9cf2ae69af652f426352502dc06820525880f587ea5053ac97e9aedd95cc3` |
| 42 | `theorem` | [smul_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-ne-zero-of-pos-of-ne-zero--989009f36929cd83ebe84643.md) | 318 | `result-track:989009f36929cd83ebe846439af279f04cba2dc9ce4d57b2d0e882b3ea569437` |
| 43 | `theorem` | [smul_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMul/Variant34e32f78878c845ccfe1d43c965d06c677a391120fbd325c59c7be01e34f5384.lean/declarations/smul-ne-zero-of-ne-zero-of-pos--454f77ccb578bd19c0033b6d.md) | 321 | `result-track:454f77ccb578bd19c0033b6de836b118e5eee1f2de1ca2a0d2aca27c70fe2a41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
