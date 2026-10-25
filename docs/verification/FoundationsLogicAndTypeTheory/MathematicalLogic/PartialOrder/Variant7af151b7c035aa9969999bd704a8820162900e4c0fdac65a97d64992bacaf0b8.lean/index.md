# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PartialOrder.Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "364afe73f20b40324b61cca24689125fc04ed3e9",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `364afe73f20b40324b61cca24689125fc04ed3e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Preorder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/preorder--e7b65fdb5bb793cc86a915bc.md) | 45 | `declaration-track:e7b65fdb5bb793cc86a915bcc005ad22343a3baae914f40e9366e264bb6f5d18` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/instance--0063978bdf6b39eb7c2c66df.md) | 53 | `declaration-track:0063978bdf6b39eb7c2c66df862b5afac0596e57b03c2523ade21f405bea6907` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/instance--e2847c66f373b4bfb501c92a.md) | 56 | `declaration-track:e2847c66f373b4bfb501c92a20e9616101bb7a064bd878956634f4623cc71234` |
| 4 | `lemma` | [le_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-refl--c76e5f3b6d5d9ad218423b92.md) | 63 | `result-track:c76e5f3b6d5d9ad218423b92c965230f899f6c21b824127762fcb4567cfcb989` |
| 5 | `lemma` | [le_rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-rfl--6a486c5f6a27d3557b132c80.md) | 66 | `result-track:6a486c5f6a27d3557b132c8005a1c1e34fa990e48887d8d56603ff96a8f3fdbf` |
| 6 | `lemma` | [le_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-trans--00c916c2f48a1d2ca804146c.md) | 69 | `result-track:00c916c2f48a1d2ca804146cb3a5e399131c2b71cb9725450ae1a98ece36d551` |
| 7 | `lemma` | [ge_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/ge-trans--902494dce2602b37254c11b1.md) | 72 | `result-track:902494dce2602b37254c11b1033a39698a3739b5f5f5c0cda199b4dd0b724067` |
| 8 | `lemma` | [lt_iff_le_not_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-iff-le-not-ge--448c91cefe0ad3f6a744bd89.md) | 75 | `result-track:448c91cefe0ad3f6a744bd89571afef7cb6dc166212debb257f4c9f9e7a555e9` |
| 9 | `lemma` | [lt_of_le_not_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-of-le-not-ge--22ca5ce41882aab87cfdc14e.md) | 78 | `result-track:22ca5ce41882aab87cfdc14e4b55f008c69f781495566f9e81d84d85406f7c9c` |
| 10 | `lemma` | [le_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-of-eq--f25147c9db7eb6974e056a9a.md) | 80 | `result-track:f25147c9db7eb6974e056a9a7771bd75c0fbbab6c73a1b479ade0e6608be341a` |
| 11 | `lemma` | [le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-of-lt--e83c2a3fba6a5f4278fa2da9.md) | 81 | `result-track:e83c2a3fba6a5f4278fa2da99183462a112ba545008ed03da77adfa7d5108fb1` |
| 12 | `lemma` | [not_le_of_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/not-le-of-gt--c60da6461488ba115c2c2b8b.md) | 82 | `result-track:c60da6461488ba115c2c2b8b6c9b92b91cb62e7e85b482a8f21ef0289de636bf` |
| 13 | `lemma` | [not_lt_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/not-lt-of-ge--4cc815715cc639bd5f3c3579.md) | 83 | `result-track:4cc815715cc639bd5f3c3579becf40b7dce84942d749d76b84e841fe5dec1f70` |
| 14 | `lemma` | [lt_irrefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-irrefl--0089e106948a25fe707641ec.md) | 88 | `result-track:0089e106948a25fe707641eca668a6fd399359c1ad2f6a23976b10de65fe6132` |
| 15 | `lemma` | [lt_of_lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-of-lt-of-le--076c41b4e85664c3bfc1c1aa.md) | 91 | `result-track:076c41b4e85664c3bfc1c1aae9c1d7c6037c3e40877f73dcf618e47a23cfb630` |
| 16 | `lemma` | [lt_of_le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-of-le-of-lt--78cadec3a4ab7372445e454c.md) | 95 | `result-track:78cadec3a4ab7372445e454cd6f77926c92aa140b260d7b49c056d0f7068ee1e` |
| 17 | `lemma` | [lt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-trans--2633a130793a8cded80a6a43.md) | 99 | `result-track:2633a130793a8cded80a6a4334082c11b5ee6b635fc3c67e19fad153413a46f0` |
| 18 | `lemma` | [ne_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/ne-of-lt--cc005b9f76c360f3101ca1cc.md) | 102 | `result-track:cc005b9f76c360f3101ca1ccae1a8786934b6caed8b7c414b8e20a3b7be1a29d` |
| 19 | `lemma` | [lt_asymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-asymm--3be69698a80d2e83a491a8eb.md) | 104 | `result-track:3be69698a80d2e83a491a8ebb33c6971e8e412137b664f7545aebfbf3962b40a` |
| 20 | `lemma` | [le_of_lt_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-of-lt-or-eq--0f7ff7f2d28c9c9af3f78c0b.md) | 109 | `result-track:0f7ff7f2d28c9c9af3f78c0bc34b4d7b634b42adf027773498c403c1dcf978e9` |
| 21 | `lemma` | [le_of_eq_or_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-of-eq-or-lt--9e69e034ece60e392c566109.md) | 111 | `result-track:9e69e034ece60e392c56610969d299685012256b232deceb6bfb66081164cca6` |
| 22 | `lemma` | [lt_iff_gt_iff_le_iff_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-iff-gt-iff-le-iff-ge--a9180810194896735dfbb5f9.md) | 114 | `result-track:a9180810194896735dfbb5f93ab11dbcfe0c7c2d5c41f377bb05865ef6b683f6` |
| 23 | `lemma` | [lt_iff_le_iff_gt_iff_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-iff-le-iff-gt-iff-ge--1ae5f219f4840d4567a6b1a3.md) | 118 | `result-track:1ae5f219f4840d4567a6b1a3cad06609ec23be9d07f30dd0f2330a4a88ed0477` |
| 24 | `lemma` | [lt_iff_ge_iff_gt_iff_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-iff-ge-iff-gt-iff-le--10587bab685481bf967617e5.md) | 122 | `result-track:10587bab685481bf967617e5367c17ffaa5dd2132efef1eb87d002dba2b1ac7c` |
| 25 | `instance` | [instTransLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/insttransle--3b4b502ca1fc3242dcae36f6.md) | 125 | `declaration-track:3b4b502ca1fc3242dcae36f61bee6645000893c52a1b80e33304b6dd42d60bfc` |
| 26 | `instance` | [instTransLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/insttranslt--a3258a2c47cf1bc222245eb4.md) | 126 | `declaration-track:a3258a2c47cf1bc222245eb4be84ee5f943dedb4e06eeb0f2f8e2577ac2d9450` |
| 27 | `instance` | [instTransLTLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/insttransltle--e295bc8ee6a587df8ced934d.md) | 127 | `declaration-track:e295bc8ee6a587df8ced934d00f2fcc66da85c21824e09e5b8184cc35a052d47` |
| 28 | `instance` | [instTransLELT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/insttranslelt--235a30fcec15aefc7f9ea1e7.md) | 128 | `declaration-track:235a30fcec15aefc7f9ea1e7849f23c31ff6521ab852ad07ad91e5d31505dc59` |
| 29 | `instance` | [instTransGE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/insttransge--4ddbeacdf02365025016b39a.md) | 132 | `declaration-track:4ddbeacdf02365025016b39a79fae5783929a9cfcce897533f92277af7ba3952` |
| 30 | `instance` | [instTransGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/insttransgt--4e869ac92609f5b686d53e75.md) | 134 | `declaration-track:4e869ac92609f5b686d53e755e7867d023f296c2aec8d4e0a3e21b37fe718edd` |
| 31 | `instance` | [instTransGTGE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/insttransgtge--637709fd25b3dd6d218900ee.md) | 136 | `declaration-track:637709fd25b3dd6d218900eedf8ed25dde4dd11ab68d079d034e14ad48b109e5` |
| 32 | `instance` | [instTransGEGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/insttransgegt--a08a1710e5f785955611c3e8.md) | 138 | `declaration-track:a08a1710e5f785955611c3e8a388b59abba8be7f0efdbe571c99850190953f34` |
| 33 | `def` | [decidableLTOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/decidableltofdecidablele--75f8463cbd12c4f17dbc5de5.md) | 142 | `declaration-track:75f8463cbd12c4f17dbc5de557fdd4a25de23415e9316d9095aaaa67d88a3c81` |
| 34 | `def` | [WCovBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/wcovby--f31e48e43878a775dde63a2d.md) | 149 | `declaration-track:f31e48e43878a775dde63a2d4627d23d85941ae279b398aacc755b0087242bad` |
| 35 | `def` | [CovBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/covby--4807a6aaa97a6089e7e13e11.md) | 160 | `declaration-track:4807a6aaa97a6089e7e13e11ead0a240cd4ebc62a9362ca670cef7c464c58632` |
| 36 | `class` | [PartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/partialorder--7aa8ddf7fbe0cf0b675e0eff.md) | 177 | `declaration-track:7aa8ddf7fbe0cf0b675e0eff8600c6eca2e3a074886fa51673f2e35fb7ae759c` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/instance--d42e0e659dcdc50cfb6ff275.md) | 182 | `declaration-track:d42e0e659dcdc50cfb6ff2752af8b8f2bb8b6eafdb5b8861b223b48c3bff2335` |
| 38 | `lemma` | [le_antisymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-antisymm--b736c39219b6aae893b8e19f.md) | 187 | `result-track:b736c39219b6aae893b8e19f4d6011b8d7c98692558a1f6f64fb4f2ee6a3fe1a` |
| 39 | `lemma` | [ge_antisymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/ge-antisymm--39b261f8d1e957e9c6ecd49f.md) | 190 | `result-track:39b261f8d1e957e9c6ecd49fd26861363d9c779b29fd08e751e6ff7eb5402b6b` |
| 40 | `lemma` | [le_antisymm_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-antisymm-iff--4b12237a9d9bd296e96916c2.md) | 196 | `result-track:4b12237a9d9bd296e96916c2696c55227a8893170c7a74938fe4cf9e45b331b6` |
| 41 | `lemma` | [lt_of_le_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-of-le-of-ne--e7aa551a53b446e0de19578d.md) | 200 | `result-track:e7aa551a53b446e0de19578dd1d44c500977f843e7e8d8ed96af39a0b9579e0a` |
| 42 | `lemma` | [lt_of_ne_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-of-ne-of-le--11191c8aab9397b4b1c2fdbb.md) | 204 | `result-track:11191c8aab9397b4b1c2fdbbf08e18ce4ee595e66af9399c3c84e2ce78aad31a` |
| 43 | `def` | [decidableEqOfDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/decidableeqofdecidablele--506f6eadfacf5735e3d20b85.md) | 207 | `declaration-track:506f6eadfacf5735e3d20b850e9a806740dfa705c197b4cdb268955c55fd8aa2` |
| 44 | `lemma` | [Decidable.lt_or_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/decidable-lt-or-eq-of-le--e5457727e7e3374320d964af.md) | 215 | `result-track:e5457727e7e3374320d964af1d5346e86cbc8120e8445d20f855027126ac25e0` |
| 45 | `lemma` | [Decidable.le_iff_lt_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/decidable-le-iff-lt-or-eq--50ef21f0586a2260ceea23c3.md) | 219 | `result-track:50ef21f0586a2260ceea23c36771f6d9a31bad029138f076b14f5717860dc22e` |
| 46 | `lemma` | [lt_or_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/lt-or-eq-of-le--048d808a6369f737de11d66a.md) | 223 | `result-track:048d808a6369f737de11d66ad4872b5b183f6c1870e8de165817773248c1b66a` |
| 47 | `lemma` | [le_iff_lt_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialOrder/Variant7af151b7c035aa9969999bd704a8820162900e4c0fdac65a97d64992bacaf0b8.lean/declarations/le-iff-lt-or-eq--7da65366b8bd962645522425.md) | 225 | `result-track:7da65366b8bd962645522425fe53832c7921245dc41c99a317bf5779938b845d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
