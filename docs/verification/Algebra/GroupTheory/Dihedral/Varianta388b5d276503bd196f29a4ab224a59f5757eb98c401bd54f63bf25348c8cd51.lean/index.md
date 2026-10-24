# Verification target: GRWTSK.Algebra.GroupTheory.Dihedral.Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f132e224ed1957eadfce84e1567123d7f859633",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f132e224ed1957eadfce84e1567123d7f859633`.

Source path: `GRWTSK/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Exponent` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.CardCommute` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DihedralGroup](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/dihedralgroup--5e9ab1f8c553096538f0f6ef.md) | 36 | `declaration-track:5e9ab1f8c553096538f0f6eff1b1a29ee8321c8c7a6093cf6bae11893972ebaa` |
| 2 | `def` | [mul](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/mul--5de3e8d2e19529a31e278212.md) | 47 | `declaration-track:5de3e8d2e19529a31e2782121304c2549f41ff00ec22df2a36b8ba9ce6343de7` |
| 3 | `def` | [one](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/one--6f8bca106e762fcd8e8b55ac.md) | 55 | `declaration-track:6f8bca106e762fcd8e8b55ac155ae8a2659e8bd401d9976a243283f630102b8a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/instance--2a629c7d5aae776c1b7a7172.md) | 58 | `declaration-track:2a629c7d5aae776c1b7a71722e331fd44451fed8401bf73d711952f2708e1a6d` |
| 5 | `def` | [inv](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/inv--d4ef1a8341e10221d1125b42.md) | 63 | `declaration-track:d4ef1a8341e10221d1125b420caa94f6c70ec31bc527022ca3c11590ee025b85` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/instance--da044c63bb0bf1b0cc0b4b7d.md) | 69 | `declaration-track:da044c63bb0bf1b0cc0b4b7d23c7e58b2ef29f8ffc16d25785be230db391a1ee` |
| 7 | `theorem` | [r_mul_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/r-mul-r--b2e0003f59d34f3c3e625a18.md) | 88 | `result-track:b2e0003f59d34f3c3e625a1814776e0e986cbaaf8b1735a57ea4e55a44776db2` |
| 8 | `theorem` | [r_mul_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/r-mul-sr--8af6e4afa0f143073e9381f3.md) | 92 | `result-track:8af6e4afa0f143073e9381f3aed6a0548e0e99dcb2a7cc9a11812fb7783d55b2` |
| 9 | `theorem` | [sr_mul_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/sr-mul-r--6651a5bb1fc0c9e58358167d.md) | 96 | `result-track:6651a5bb1fc0c9e58358167d6773ee1a9d7192af5f2e9ceb3bcca2bf9dc57b53` |
| 10 | `theorem` | [sr_mul_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/sr-mul-sr--17ac445e84136133f4f93182.md) | 100 | `result-track:17ac445e84136133f4f931820cb2afa237de6aa05c468ae10e16fae478eb8a9c` |
| 11 | `theorem` | [inv_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/inv-r--824a8ab10e73df8776b7653a.md) | 104 | `result-track:824a8ab10e73df8776b7653a3260ed77f903de4955ca50fec6ca373063cc9aab` |
| 12 | `theorem` | [inv_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/inv-sr--6a36b03dfcaeec618687c209.md) | 108 | `result-track:6a36b03dfcaeec618687c2099cbabf9e33cf60f6074351aac95f69cc7ea004b7` |
| 13 | `theorem` | [r_zero](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/r-zero--01c48fb6aa3fc0130ec414d7.md) | 112 | `result-track:01c48fb6aa3fc0130ec414d724fcd3c51949f8891b974b7270e90aefd64ff422` |
| 14 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/one-def--1df8d2f7a8a56b9328d7de65.md) | 115 | `result-track:1df8d2f7a8a56b9328d7de65dcc3664cd8bf7380cb0c99e21a9958dc09ce720d` |
| 15 | `theorem` | [r_pow](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/r-pow--5137a6f322b7f0f8dad6135e.md) | 119 | `result-track:5137a6f322b7f0f8dad6135e7e0b3be05422dbf8ab02e5735969402f682a705c` |
| 16 | `theorem` | [r_zpow](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/r-zpow--efd33ea38db450a57e56ee50.md) | 126 | `result-track:efd33ea38db450a57e56ee50f2f16c6ed068ec6631dfea1fced61d957ba15cf9` |
| 17 | `def` | [fintypeHelper](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/fintypehelper--0cb0bec71741e148db8ec9ce.md) | 129 | `declaration-track:0cb0bec71741e148db8ec9ce51c313f79db87e3fe9061e96905a456902396a63` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/instance--a8a8b8565453b94896e4ff23.md) | 141 | `declaration-track:a8a8b8565453b94896e4ff23f23727b1d8ca818e558b10ec246b49278f67f5b6` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/instance--ff29a06a0586a50152fb87d9.md) | 144 | `declaration-track:ff29a06a0586a50152fb87d9ccce8478e0b3fe62608712157646ca281477ddbf` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/instance--77fbb1962c48e0050dac6591.md) | 147 | `declaration-track:77fbb1962c48e0050dac65914e75eb78ef7c87e197de48a06f2d74953bc62633` |
| 21 | `theorem` | [card](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/card--90030005fe76bef2c82a95db.md) | 152 | `result-track:90030005fe76bef2c82a95db1b312409ec67a1bf3f13e35e1d91561cee899e26` |
| 22 | `theorem` | [nat_card](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/nat-card--288ae92c057cf71e5d94bbba.md) | 155 | `result-track:288ae92c057cf71e5d94bbba06884060c9d86973c1b0f429e9883d8e3ce608da` |
| 23 | `theorem` | [r_one_pow](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/r-one-pow--a1a00f0e55a43892aae52435.md) | 160 | `result-track:a1a00f0e55a43892aae52435e57bd608bf3ed8ffc76e544782134e7edb877778` |
| 24 | `theorem` | [r_one_zpow](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/r-one-zpow--64b0503a2c05baef08f40cf1.md) | 163 | `result-track:64b0503a2c05baef08f40cf145ec1e8415024e8e311aa06b9afac91c0f0884c8` |
| 25 | `theorem` | [r_one_pow_n](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/r-one-pow-n--33e1b693866c5f50ddc4e64c.md) | 166 | `result-track:33e1b693866c5f50ddc4e64c650f7df2d12a32cd1d8a2e2ab296360944019d31` |
| 26 | `theorem` | [sr_mul_self](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/sr-mul-self--181c193a937f33800b8f1d67.md) | 169 | `result-track:181c193a937f33800b8f1d671ad7d3d761f984b542fef52092e8ce9d5fcfcd34` |
| 27 | `theorem` | [orderOf_sr](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/orderof-sr--4f14ae14ad372383b50cca8f.md) | 175 | `result-track:4f14ae14ad372383b50cca8fe7932c9539278a2db93c060964920587aeaff0d3` |
| 28 | `theorem` | [orderOf_r_one](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/orderof-r-one--601748d9fa1ded5024221647.md) | 183 | `result-track:601748d9fa1ded5024221647c4ad2996550bf8d306209f2913f0bd6f9ffa277f` |
| 29 | `theorem` | [orderOf_r](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/orderof-r--f2fe86e6ef5049e151c2a186.md) | 201 | `result-track:f2fe86e6ef5049e151c2a1869ba6e2556227a0da6d1bf7ba527ecf80ae1d5b95` |
| 30 | `theorem` | [exponent](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/exponent--c7e210496ffd750df555020f.md) | 205 | `result-track:c7e210496ffd750df555020f7d99833ce9b72281b309bfbc140d29a327926bf8` |
| 31 | `lemma` | [not_commutative](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/not-commutative--bb546edcff4df5c1b42581db.md) | 222 | `result-track:bb546edcff4df5c1b42581db5f0324c01988d280fb7ecb9697a43ac42c9bc5d4` |
| 32 | `lemma` | [commutative_iff](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/commutative-iff--51cbcdef4ced0086c7f0fcba.md) | 232 | `result-track:51cbcdef4ced0086c7f0fcbae77cdf05e65593b868f1b5da8d35b4c5958dd5d3` |
| 33 | `lemma` | [not_isCyclic](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/not-iscyclic--ddaa7b8fa7b1ec4c81ecdf80.md) | 236 | `result-track:ddaa7b8fa7b1ec4c81ecdf80a527208790f5790f67c7f56fcf4b2eb422195c15` |
| 34 | `lemma` | [isCyclic_iff](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/iscyclic-iff--6b1db5ceb1ed8e0d48ac961c.md) | 241 | `result-track:6b1db5ceb1ed8e0d48ac961c4d645029dfb4ad1a5714d4e88e1a7998f0c644fd` |
| 35 | `def` | [oddCommuteEquiv](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/oddcommuteequiv--a7e6211f9dd67aa946ce8c18.md) | 248 | `declaration-track:a7e6211f9dd67aa946ce8c18d4c1396cac047f6b3f8be1e348606cd78c7e9aa9` |
| 36 | `lemma` | [card_commute_odd](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/card-commute-odd--036f6047c6029dbb247b9632.md) | 290 | `result-track:036f6047c6029dbb247b9632555035cca1aa4fbd1f66440cade2d8ca02f305f3` |
| 37 | `lemma` | [card_conjClasses_odd](../../../../../mathematics/Algebra/GroupTheory/Dihedral/Varianta388b5d276503bd196f29a4ab224a59f5757eb98c401bd54f63bf25348c8cd51.lean/declarations/card-conjclasses-odd--2466b4aa7ea7ee54098dc17f.md) | 296 | `result-track:2466b4aa7ea7ee54098dc17f53e97e90d41bc02a7a4d1a1dd86a4088bce65955` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
