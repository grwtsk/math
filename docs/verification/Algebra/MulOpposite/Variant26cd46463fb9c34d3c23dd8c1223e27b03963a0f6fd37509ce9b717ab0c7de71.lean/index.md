# Verification target: GRWTSK.Algebra.MulOpposite.Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f51fd743c3738faecc687aace2fe261f608044a7",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/index.md) · [Full source](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f51fd743c3738faecc687aace2fe261f608044a7`.

Source path: `GRWTSK/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Subsemiring.MulOpposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op--6f784e20140d906e6aceb95e.md) | 23 | `declaration-track:6f784e20140d906e6aceb95eb942d77f75175832581c87ea7d4b8981c43931f6` |
| 2 | `theorem` | [mem_op](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/mem-op--b694d9fbb25f4e284dce1757.md) | 30 | `result-track:b694d9fbb25f4e284dce1757acfa8d0ff301db19163f83cc9e5a9e815212f106` |
| 3 | `def` | [unop](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop--20278568b31b407bfa918574.md) | 34 | `declaration-track:20278568b31b407bfa9185742e21d5a4368d39c9f2685c86330fe08b5139f82f` |
| 4 | `theorem` | [mem_unop](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/mem-unop--6d75bc92210db10d304a0c24.md) | 41 | `result-track:6d75bc92210db10d304a0c242229389ddc7190c2a08d34955cb8572447551aed` |
| 5 | `theorem` | [unop_op](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-op--681b316f3f1314d29212d6b4.md) | 44 | `result-track:681b316f3f1314d29212d6b47d7d4bd729731d73b227efec47d7d6770edff694` |
| 6 | `theorem` | [op_unop](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-unop--6c8b55941e5baef4246015f4.md) | 47 | `result-track:6c8b55941e5baef4246015f4a8a1e0a2be1f3977222b4f33dd671697ee20fe71` |
| 7 | `theorem` | [op_le_iff](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-le-iff--36da497d9b671f715804326d.md) | 51 | `result-track:36da497d9b671f715804326d3ef44223b78f7125ee15cd0e0d0681e3dc77b041` |
| 8 | `theorem` | [le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/le-op-iff--0f336ddbaf62b4bbf1d92ad3.md) | 54 | `result-track:0f336ddbaf62b4bbf1d92ad3880d05de8437ee146aec534ab27a9021c0069f45` |
| 9 | `theorem` | [op_le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-le-op-iff--88b3636d27b6dbcf61d81456.md) | 58 | `result-track:88b3636d27b6dbcf61d81456f2c55ea8f4b0233e7961950c43b9b21fbc8b4965` |
| 10 | `theorem` | [unop_le_unop_iff](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-le-unop-iff--cef7f770f4e09004da1702a8.md) | 62 | `result-track:cef7f770f4e09004da1702a8b2ff2e88698dd24ffadc80b1214358aeb8d9a2f4` |
| 11 | `def` | [opEquiv](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/opequiv--3e74ab6b8fe38711a19e1dd1.md) | 67 | `declaration-track:3e74ab6b8fe38711a19e1dd1bd4029d2fd8fb802c2e87da34caefc0769db89ed` |
| 12 | `theorem` | [op_injective](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-injective--9a3cbb1be9d5aa22edf081f8.md) | 74 | `result-track:9a3cbb1be9d5aa22edf081f81996cdadf4cf1e5af6fbb49d0c935259ef8bc674` |
| 13 | `theorem` | [unop_injective](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-injective--c118506334efc79612c82843.md) | 75 | `result-track:c118506334efc79612c82843ecc9c44060a4b89ebfe0665f9c014fe1487c7167` |
| 14 | `theorem` | [op_inj](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-inj--c63ae2e78652ee78511e82aa.md) | 76 | `result-track:c63ae2e78652ee78511e82aaabc8f1aa7a7f080b86efcba7073aca62c6b412c2` |
| 15 | `theorem` | [unop_inj](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-inj--1819b8cfbe68cce4f9a4a039.md) | 77 | `result-track:1819b8cfbe68cce4f9a4a0390e827f11b3ba50e88895c4f498fc79495c21ee00` |
| 16 | `theorem` | [op_bot](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-bot--6969477e1e0d90aeba9f4a85.md) | 80 | `result-track:6969477e1e0d90aeba9f4a85395169351b15e0f7afddfd0632a37e775eacb3b4` |
| 17 | `theorem` | [op_eq_bot](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-eq-bot--c8c02f3a95a5a583090bae32.md) | 83 | `result-track:c8c02f3a95a5a583090bae321d82d4772be35b190b4a03cdf738b3d950ac93ca` |
| 18 | `theorem` | [unop_bot](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-bot--57af04dd15965abc0fa3d5d0.md) | 86 | `result-track:57af04dd15965abc0fa3d5d08ac127b562d54b75cdfff12e6669977435b90b85` |
| 19 | `theorem` | [unop_eq_bot](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-eq-bot--15e5a1def87211771625c50b.md) | 89 | `result-track:15e5a1def87211771625c50b937599562571f2b7cee045ed6229d196f5c877f2` |
| 20 | `theorem` | [op_top](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-top--258f5c38efe80c403b0b57c1.md) | 92 | `result-track:258f5c38efe80c403b0b57c18f8bb2ebe4a9a9b7df2a874f7ed4c8f8a0274c39` |
| 21 | `theorem` | [op_eq_top](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-eq-top--9aa270d5269534830312734e.md) | 95 | `result-track:9aa270d5269534830312734e5cd0367decb43659339527a84f7dfaacec31ae9d` |
| 22 | `theorem` | [unop_top](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-top--a1653e2fb35dbc745e1be08c.md) | 98 | `result-track:a1653e2fb35dbc745e1be08c68fda4bf70f962765e2031d46344c0e52b9cfb7a` |
| 23 | `theorem` | [unop_eq_top](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-eq-top--f77f8013dc36b7423018b3bd.md) | 101 | `result-track:f77f8013dc36b7423018b3bd5dbe1485739b3c2faa712aba18dc4c13d81e1d24` |
| 24 | `theorem` | [op_sup](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-sup--529644fa187d3d9185f3b99a.md) | 103 | `result-track:529644fa187d3d9185f3b99a9f946f508a99e8d0796b8e8d8459bcb58e5b7387` |
| 25 | `theorem` | [unop_sup](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-sup--e1a89f9c3a7cfcc9e9b01767.md) | 106 | `result-track:e1a89f9c3a7cfcc9e9b01767c8dea9abcd846d458ce2f354da1a3e6e0d73b5bc` |
| 26 | `theorem` | [op_inf](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-inf--fe512e1f6a5c2cc89317a18e.md) | 109 | `result-track:fe512e1f6a5c2cc89317a18e53f1487385596d1774a1e62b6fd59a22e748a86c` |
| 27 | `theorem` | [unop_inf](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-inf--a8e7af247096fa4b1e709b61.md) | 111 | `result-track:a8e7af247096fa4b1e709b612ec26308b24a0b54394ba97ff481c5e7a6131851` |
| 28 | `theorem` | [op_sSup](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-ssup--c4f866b3e7cf9dd63f4cc9e9.md) | 113 | `result-track:c4f866b3e7cf9dd63f4cc9e944848fc43b2ce2e880def26440c1c4e1d7fb1c45` |
| 29 | `theorem` | [unop_sSup](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-ssup--8a60dc2db9281b34f372196c.md) | 116 | `result-track:8a60dc2db9281b34f372196cc9e6cd4471cb5e03fc54cb24c12191a88e2a80fa` |
| 30 | `theorem` | [op_sInf](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-sinf--f7b03cf2dddd53aac3558208.md) | 119 | `result-track:f7b03cf2dddd53aac35582084f397c126632b5ef340936170ad693b161fc811c` |
| 31 | `theorem` | [unop_sInf](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-sinf--346810a1137c58b0465896d8.md) | 122 | `result-track:346810a1137c58b0465896d89c94acb947dd88031117573a0700315182ec7ac4` |
| 32 | `theorem` | [op_iSup](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-isup--d2c2db9cde97b9217f80af3c.md) | 125 | `result-track:d2c2db9cde97b9217f80af3c92956f320454107a47aa5e51f6da04b0b7a291cf` |
| 33 | `theorem` | [unop_iSup](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-isup--c000d238076a6905f68bce2a.md) | 127 | `result-track:c000d238076a6905f68bce2a190a9503468360b3306218fc37e64fb8ea0bbc63` |
| 34 | `theorem` | [op_iInf](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-iinf--a37392735c2df348eae3b85a.md) | 130 | `result-track:a37392735c2df348eae3b85a4e8fb0a48e1bc8e73ba53518de87014d320af740` |
| 35 | `theorem` | [unop_iInf](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-iinf--86d0c8c16e5604228190a15b.md) | 132 | `result-track:86d0c8c16e5604228190a15bc7394318972cf14e4a491105cdb91c6440e9e747` |
| 36 | `theorem` | [op_closure](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/op-closure--863136324deff6adc5a5c2af.md) | 135 | `result-track:863136324deff6adc5a5c2af540a4bbb26650c933aa65a024408eb17f22d3122` |
| 37 | `theorem` | [unop_closure](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/unop-closure--0e81c0f4c8f2cc3e8aebb612.md) | 140 | `result-track:0e81c0f4c8f2cc3e8aebb6128330e5c0a46e5d7509c13d861a2e98aace229123` |
| 38 | `def` | [addEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/addequivop--708f3c08ac3f6031bbd91563.md) | 146 | `declaration-track:708f3c08ac3f6031bbd9156307b482a4e5be17d80b8e100a5d2220c670cfe55b` |
| 39 | `def` | [ringEquivOpMop](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/ringequivopmop--faf2123d61c5c9ac7c6f7121.md) | 150 | `declaration-track:faf2123d61c5c9ac7c6f712139c365f21259b209ca516e426880b12311f1ef96` |
| 40 | `def` | [mopRingEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean/declarations/mopringequivop--2e5d44ebe2c093c10836c249.md) | 154 | `declaration-track:2e5d44ebe2c093c10836c249d7f979ee47d6cbc836376dd1b61e30253c7df21b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
