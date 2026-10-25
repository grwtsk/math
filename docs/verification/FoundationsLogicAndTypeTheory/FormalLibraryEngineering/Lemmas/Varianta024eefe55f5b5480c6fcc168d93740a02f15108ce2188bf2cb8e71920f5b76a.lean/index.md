# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f451436172fe9ce37a779f4d5a597bde3439e477",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f451436172fe9ce37a779f4d5a597bde3439e477`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Bool.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Logic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Coe` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cond_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/cond-true--b140bd442463a5a8c6601286.md) | 48 | `result-track:b140bd442463a5a8c6601286e52d8adb9bfee19875b50d0a592ea76257f1abdc` |
| 2 | `lemma` | [cond_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/cond-false--0d549a3512734234c42c656d.md) | 51 | `result-track:0d549a3512734234c42c656d393f52bead075496813574b676c3c10e0bf5f6b1` |
| 3 | `theorem` | [cond_self.](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/cond-self--0b24c8363df450be0f5c753a.md) | 55 | `result-track:0b24c8363df450be0f5c753a80ffbb7adf9f6684cd1b4ff3f6e0d2313229d475` |
| 4 | `theorem` | [xor_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/xor-self--e442d6761b53883b98bf2862.md) | 59 | `result-track:e442d6761b53883b98bf2862fcc47e4f7df62d7d409e5b290e29a3f7935d5a36` |
| 5 | `theorem` | [xor_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/xor-true--66abc638a72a31782d43c342.md) | 63 | `result-track:66abc638a72a31782d43c342edc3bdfa7667959602759cefa6e4705e775f457b` |
| 6 | `theorem` | [xor_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/xor-false--8f21e79aa84f8730fa2cd7ad.md) | 66 | `result-track:8f21e79aa84f8730fa2cd7ad74089abec1a5027c5d594b9b233c3e5490d7f07d` |
| 7 | `theorem` | [true_xor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/true-xor--7207f9ec840b4cf3095a7a53.md) | 70 | `result-track:7207f9ec840b4cf3095a7a5385e84866a6b1bce8b4b380671557eb129218cddd` |
| 8 | `theorem` | [false_xor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/false-xor--289f4922b2e9e8747a750b92.md) | 73 | `result-track:289f4922b2e9e8747a750b92dc3ebc97cc666cc22b1317e790e2f6d0bf17a8fa` |
| 9 | `theorem` | [true_eq_false_eq_False](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/true-eq-false-eq-false--c0ffd280effc2a36e24657a6.md) | 76 | `result-track:c0ffd280effc2a36e24657a66a86a26c84ddac622e54bca365d25d2a37088aba` |
| 10 | `theorem` | [false_eq_true_eq_False](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/false-eq-true-eq-false--52a2242a2ec97c6e4cd346f9.md) | 79 | `result-track:52a2242a2ec97c6e4cd346f9479e70c7116171052246b89e55a9ff8de56a3d4d` |
| 11 | `theorem` | [eq_false_eq_not_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/eq-false-eq-not-eq-true--ce7611a16ccc7635b030476f.md) | 82 | `result-track:ce7611a16ccc7635b030476f7bf456dbc1f0addaefe06fea28bab7c690da038a` |
| 12 | `theorem` | [eq_true_eq_not_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/eq-true-eq-not-eq-false--d3f815bcec6a99880fa2bf19.md) | 85 | `result-track:d3f815bcec6a99880fa2bf1976aa9837082907d8e2648210d57a785b190a6648` |
| 13 | `theorem` | [eq_false_of_not_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/eq-false-of-not-eq-true--a07d4c30dfc848862378b63e.md) | 88 | `result-track:a07d4c30dfc848862378b63ea436f7471b52229c5abc97ee93ebd42a6df5019c` |
| 14 | `theorem` | [eq_true_of_not_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/eq-true-of-not-eq-false--883faecdac65372bfc30b3ab.md) | 92 | `result-track:883faecdac65372bfc30b3ab2fecaea801bdf77e4955d42c15d5b573e23fd809` |
| 15 | `theorem` | [and_eq_true_eq_eq_true_and_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/and-eq-true-eq-eq-true-and-eq-true--3ec592d5e705cfed97fc9dd7.md) | 96 | `result-track:3ec592d5e705cfed97fc9dd700aadac0ce60dd947cd46ebc1e0783b724b60ebc` |
| 16 | `theorem` | [or_eq_true_eq_eq_true_or_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/or-eq-true-eq-eq-true-or-eq-true--baa35f782e901a2777680754.md) | 100 | `result-track:baa35f782e901a27776807545c78434ea6e6e8a5b348b8ee1d68a83486e45239` |
| 17 | `theorem` | [not_eq_true_eq_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/not-eq-true-eq-eq-false--86083dc1698733433b84142b.md) | 104 | `result-track:86083dc1698733433b84142bcf9c03771013cc6ef9fb3e62da7492a4185f7ac7` |
| 18 | `theorem` | [and_eq_false_eq_eq_false_or_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/and-eq-false-eq-eq-false-or-eq-false--f409c848ee8b9424448cfab1.md) | 108 | `result-track:f409c848ee8b9424448cfab17b9f78a50e482fecbfb623db9d98575e0c912a99` |
| 19 | `theorem` | [or_eq_false_eq_eq_false_and_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/or-eq-false-eq-eq-false-and-eq-false--3d76fc10e28cb6e5d86c88a5.md) | 114 | `result-track:3d76fc10e28cb6e5d86c88a5dab54df9b9bdbe2a5a4c1e511ce3279117e87556` |
| 20 | `theorem` | [not_eq_false_eq_eq_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/not-eq-false-eq-eq-true--2b0d39f1e473a4d19cf296c5.md) | 119 | `result-track:2b0d39f1e473a4d19cf296c56d8de9049a1f953580be2dd2b7a1671cec0b3f5f` |
| 21 | `theorem` | [coe_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/coe-false--47930ac6f25f466a96a1ad97.md) | 122 | `result-track:47930ac6f25f466a96a1ad97a9f4ed63c7fd7878ab0bd096a57ab1917b41ad22` |
| 22 | `theorem` | [coe_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/coe-true--45cb19b8fb1e4c0f2404657c.md) | 125 | `result-track:45cb19b8fb1e4c0f2404657c462da8f1e6b48b4ca45b49b5c1521655cd351be6` |
| 23 | `theorem` | [coe_sort_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/coe-sort-false--a5982da256fa885b6c61ca27.md) | 128 | `result-track:a5982da256fa885b6c61ca27526b34d59c5ae2dc8f092818ba620848bd222711` |
| 24 | `theorem` | [coe_sort_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/coe-sort-true--386726cfe32789049e816dba.md) | 131 | `result-track:386726cfe32789049e816dbab8d97f43fa096a865386050516506e16f8e54dc1` |
| 25 | `theorem` | [decide_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/decide-iff--ac428d61a274fe63f6ebc091.md) | 134 | `result-track:ac428d61a274fe63f6ebc091099b07fe494e4614c01d27cca36b47870d43088b` |
| 26 | `theorem` | [decide_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/decide-true--83f5be85fc806eab7676823f.md) | 137 | `result-track:83f5be85fc806eab7676823f35befe6fa8c9ba2fb2dd3238ecb876123e1d44f9` |
| 27 | `theorem` | [of_decide_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/of-decide-true--8740446c9bfc1a72afb31577.md) | 142 | `result-track:8740446c9bfc1a72afb315774e2758f73035a465de1eabf64e130b344c5bc9a4` |
| 28 | `theorem` | [bool_iff_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/bool-iff-false--1c6604e03d88e0cb3c656f3b.md) | 146 | `result-track:1c6604e03d88e0cb3c656f3b4ca8d45b28fca6c48c792b3a724409c7c956a412` |
| 29 | `theorem` | [bool_eq_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/bool-eq-false--4ec42fee446811b58d1962f7.md) | 149 | `result-track:4ec42fee446811b58d1962f7fef8d0122f0eda8621e921af2a27f87cd701dd92` |
| 30 | `theorem` | [decide_false_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/decide-false-iff--3b9c6600f587509700d3f8fb.md) | 153 | `result-track:3b9c6600f587509700d3f8fbf5def628f1592ce0f1b1f2079ae8856deffd8293` |
| 31 | `theorem` | [decide_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/decide-false--a0350d8cc18a9664a5cab390.md) | 157 | `result-track:a0350d8cc18a9664a5cab39058ca3a95a14d15d27dd660c01f57d05e6e69f265` |
| 32 | `theorem` | [of_decide_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/of-decide-false--8e10b62f8d2a07a86be5063d.md) | 161 | `result-track:8e10b62f8d2a07a86be5063d9abefbba55ae4b961a7aef377014a424ae988920` |
| 33 | `theorem` | [decide_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/decide-congr--ce378b473a854342e8eb7594.md) | 165 | `result-track:ce378b473a854342e8eb7594859b071c36ab4b1ea941b064894eaea1ac9c6861` |
| 34 | `theorem` | [or_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/or-coe-iff--5ac55a19d28221b2902eb8d1.md) | 172 | `result-track:5ac55a19d28221b2902eb8d15028056111fe3079bbab782c8ad04ab534cafb61` |
| 35 | `theorem` | [and_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/and-coe-iff--cf78b288521518550664a5d0.md) | 175 | `result-track:cf78b288521518550664a5d0b2795c996bf70f0305c842e002b9031cd88d7c2d` |
| 36 | `theorem` | [xor_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/xor-coe-iff--fd457118444b82e2a87c94dd.md) | 179 | `result-track:fd457118444b82e2a87c94dd67bef073734fea976393230e96b7b8e5461fd4f4` |
| 37 | `theorem` | [ite_eq_true_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/ite-eq-true-distrib--2b3f5dad88fcd08408ad01f4.md) | 184 | `result-track:2b3f5dad88fcd08408ad01f435ca92b3e2e48a4c05da8e693ff93b0e44f3dca8` |
| 38 | `theorem` | [ite_eq_false_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta024eefe55f5b5480c6fcc168d93740a02f15108ce2188bf2cb8e71920f5b76a.lean/declarations/ite-eq-false-distrib--9320d9fb48edaf145f281377.md) | 189 | `result-track:9320d9fb48edaf145f281377dad85758aa34c8dae9747edd5be51a3dd36d4b03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
