# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed20367611106a8aa2fd46bdaac51858d2c122e7",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed20367611106a8aa2fd46bdaac51858d2c122e7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean.json)

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
| 1 | `def` | [ThreeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree--59368e1afae645b53e7e8f50.md) | 80 | `declaration-track:59368e1afae645b53e7e8f50a5b85ce6383308a428327a57b6da1e0d2016736a` |
| 2 | `instance` | [ThreeGPFree.instDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-instdecidable--a1f14a7f09042b7578f4b209.md) | 84 | `declaration-track:a1f14a7f09042b7578f4b2092d4d328cbefa235c5e639aeb5879a4ecda01f45f` |
| 3 | `theorem` | [ThreeGPFree.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-mono--5f59407f315bc66bb3ada1ce.md) | 91 | `result-track:5f59407f315bc66bb3ada1ce9ea901f1a0012097e8f43e0630aa38e4a06566c3` |
| 4 | `theorem` | [threeGPFree_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-empty--4a5dcd9799cc84e8ae3f136e.md) | 95 | `result-track:4a5dcd9799cc84e8ae3f136e8bd7b447c3bc16e7e5578f91f78ebc7cbabfaa8c` |
| 5 | `theorem` | [Set.Subsingleton.threeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/set-subsingleton-threegpfree--40206fffa713610877ab34ce.md) | 98 | `result-track:40206fffa713610877ab34ceb1d494ac0c38c107c679de9f1ebfbf06f03da928` |
| 6 | `theorem` | [threeGPFree_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-singleton--d34f60d3da8b675bab58856e.md) | 102 | `result-track:d34f60d3da8b675bab58856e09dc773a393ecb42be77bbe717341b4509c7dfaf` |
| 7 | `theorem` | [ThreeGPFree.prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-prod--bc1fec6562c4d48369601d2c.md) | 106 | `result-track:bc1fec6562c4d48369601d2c191ddf1489b7362a7d688c285b511dbeed52f1bd` |
| 8 | `theorem` | [threeGPFree_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-pi--e620dfcb8606c700d8797716.md) | 111 | `result-track:e620dfcb8606c700d879771645c56952352434e00e982c9654c34fc224717ffc` |
| 9 | `lemma` | [ThreeGPFree.of_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-of-image--3d749bfdb46d97499436d704.md) | 124 | `result-track:3d749bfdb46d97499436d70463f7f4aa732289cc68455a077bc1e0433d62cd15` |
| 10 | `lemma` | [threeGPFree_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-image--91d2494de90d568162887f56.md) | 133 | `result-track:91d2494de90d568162887f566796e981601d3b302e0c21dcd0136d758f97683e` |
| 11 | `lemma` | [IsMulFreimanHom.threeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/ismulfreimanhom-threegpfree--60682a200ff88b580f2bf64f.md) | 146 | `result-track:60682a200ff88b580f2bf64f70f9e878bbbd3ca0b02c962223855b1f729594da` |
| 12 | `lemma` | [IsMulFreimanIso.threeGPFree_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/ismulfreimaniso-threegpfree-congr--136bcb9311581eb625b99ea0.md) | 153 | `result-track:136bcb9311581eb625b99ea047895f0a632a80e43a3e03c0201b256412b033ca` |
| 13 | `theorem` | [ThreeGPFree.image'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-image--bfe7187f39416276d2520789.md) | 160 | `result-track:bfe7187f39416276d2520789c7034093ee4c21dfc602556dee37758b98386ba2` |
| 14 | `lemma` | [ThreeGPFree.eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-eq-right--5cafb8cd24651a3ad05342ef.md) | 171 | `result-track:5cafb8cd24651a3ad05342ef908d9da7d01c94251ad081cb2c58ddc132d0b547` |
| 15 | `lemma` | [threeGPFree_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-insert--31b36a522ef2df3677409c4c.md) | 177 | `result-track:31b36a522ef2df3677409c4cc77e1e2c45907d4d4bc8758ba97e6e860e79c006` |
| 16 | `theorem` | [ThreeGPFree.smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-smul-set--e8f0af0e0ec4b070e005e2b6.md) | 198 | `result-track:e8f0af0e0ec4b070e005e2b6633997ba430552bdd9da54b3e56f1ed938b9494c` |
| 17 | `lemma` | [threeGPFree_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-smul-set--4c3f666fcbf9c7a7506a75da.md) | 202 | `result-track:4c3f666fcbf9c7a7506a75daef2afcbf435d7a458072bf8344fb36b15bf081c1` |
| 18 | `theorem` | [threeGPFree_insert_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-insert-of-lt--dcecf1ba9979b584156b472b.md) | 215 | `result-track:dcecf1ba9979b584156b472b093a2c5cec3a0c4a3939b184c3aac6a58e77207a` |
| 19 | `lemma` | [ThreeGPFree.smul_set₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-smul-set--c69180aec9103bc1f05aa71d.md) | 228 | `result-track:c69180aec9103bc1f05aa71d0724f64f961a587df3331064334939973d266bca` |
| 20 | `theorem` | [threeGPFree_smul_set₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-smul-set--2061fb9d4d3ded0566eb1250.md) | 232 | `result-track:2061fb9d4d3ded0566eb1250c72c7c9407d3a67213505bf544dd7aea29f35e75` |
| 21 | `theorem` | [threeAPFree_iff_eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threeapfree-iff-eq-right--5eb429105b40da6783103338.md) | 243 | `result-track:5eb429105b40da67831033380ea3d495d6ef5b1776c7059391508ce411bc4b85` |
| 22 | `def` | [mulRothNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/mulrothnumber--5efd34dc3de153ef8d13dec8.md) | 270 | `declaration-track:5efd34dc3de153ef8d13dec8053fdd0a2b4204b137f62118605bbca32f1d8ed4` |
| 23 | `theorem` | [mulRothNumber_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/mulrothnumber-le--aa751f2f617543f6e993ca8b.md) | 278 | `result-track:aa751f2f617543f6e993ca8b7b7332cf56a36406c3fb1915391e7e64f137313b` |
| 24 | `theorem` | [mulRothNumber_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/mulrothnumber-spec--7bdbb626587004796dc69509.md) | 281 | `result-track:7bdbb626587004796dc6950926e693ba72f17be2e7bb561e5e3cafd56aa08783` |
| 25 | `theorem` | [ThreeGPFree.le_mulRothNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-le-mulrothnumber--792a84645ef732f9bfef1dec.md) | 289 | `result-track:792a84645ef732f9bfef1dec01e5948e96c54b1446d2d223f3353b77b837b9d3` |
| 26 | `theorem` | [ThreeGPFree.mulRothNumber_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threegpfree-mulrothnumber-eq--96c4c17118d146afcdff1633.md) | 294 | `result-track:96c4c17118d146afcdff16332cc38b226d9575069c0cc844e95b628ee7cdd5f5` |
| 27 | `theorem` | [mulRothNumber_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/mulrothnumber-empty--e95fbf3508aa4ed316b7c943.md) | 299 | `result-track:e95fbf3508aa4ed316b7c943e95ec9f0b8b80837060ec07f8328611101c59402` |
| 28 | `theorem` | [mulRothNumber_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/mulrothnumber-singleton--a52a13891a16abb41f8243fe.md) | 303 | `result-track:a52a13891a16abb41f8243fecc0f96603abf605e150f6864f6bdc43733a580d9` |
| 29 | `theorem` | [mulRothNumber_union_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/mulrothnumber-union-le--77fd194a73fe5c84386390e2.md) | 309 | `result-track:77fd194a73fe5c84386390e24b066699304a4719c85ef1c31e9083f77726eb6e` |
| 30 | `theorem` | [le_mulRothNumber_product](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/le-mulrothnumber-product--acb7b87878deb54c40f97108.md) | 321 | `result-track:acb7b87878deb54c40f97108ab4e5a4f9dc83680f35d9075b909acecd013457f` |
| 31 | `theorem` | [mulRothNumber_lt_of_forall_not_threeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/mulrothnumber-lt-of-forall-not-threegpfree--b299aed9679737ac305ca198.md) | 331 | `result-track:b299aed9679737ac305ca1989864026f8c9cedb64dcd0675f8ec756e7b59544d` |
| 32 | `lemma` | [IsMulFreimanHom.mulRothNumber_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/ismulfreimanhom-mulrothnumber-mono--61b8ed382c77e3016076e0d7.md) | 347 | `result-track:61b8ed382c77e3016076e0d71a79b32064672eb37ba641535338bb240ebf0b31` |
| 33 | `lemma` | [IsMulFreimanIso.mulRothNumber_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/ismulfreimaniso-mulrothnumber-congr--72223e2f23b154ded2dbb701.md) | 360 | `result-track:72223e2f23b154ded2dbb701c41c1f4179655c549f50fe2578abbbfef3a1321b` |
| 34 | `theorem` | [mulRothNumber_map_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/mulrothnumber-map-mul-left--74545008ccafec9ade01a4ac.md) | 380 | `result-track:74545008ccafec9ade01a4acc4a9629f0831855c6c5c7267a57610fb7bb23ac9` |
| 35 | `theorem` | [mulRothNumber_map_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/mulrothnumber-map-mul-right--7190d257286aa2a18427cc9e.md) | 395 | `result-track:7190d257286aa2a18427cc9e866fbd2d04b7deabf4f16b6b964905d7f12f38d2` |
| 36 | `def` | [rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/rothnumbernat--c5006e16a314b2c98260ffea.md) | 414 | `declaration-track:c5006e16a314b2c98260ffea8eff6550dd910068cb9b1091d46263a9e12794aa` |
| 37 | `theorem` | [rothNumberNat_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/rothnumbernat-def--221fe2e219e9da31c6b76a2f.md) | 417 | `result-track:221fe2e219e9da31c6b76a2f0c06de275978d95f867a6b3fe64632f3414fb51a` |
| 38 | `theorem` | [rothNumberNat_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/rothnumbernat-le--8b7d4f3fb2f800b1f60fff41.md) | 420 | `result-track:8b7d4f3fb2f800b1f60fff414796b58f8c68145a0db524e4bd26a2d2d2dddbbe` |
| 39 | `theorem` | [rothNumberNat_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/rothnumbernat-spec--3925c21870127cb3a6b9fbac.md) | 423 | `result-track:3925c21870127cb3a6b9fbac1ce26b8169d922f89ef6dbe65fcb2e87eb6aa8bf` |
| 40 | `theorem` | [ThreeAPFree.le_rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/threeapfree-le-rothnumbernat--9de37d1c68e4b9c5d42b4820.md) | 429 | `result-track:9de37d1c68e4b9c5d42b4820602ec100bf2bd4adcc2b970c1707c0fe44350b55` |
| 41 | `theorem` | [rothNumberNat_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/rothnumbernat-add-le--31fb1d03accf6ff36a179ba4.md) | 436 | `result-track:31fb1d03accf6ff36a179ba47648fb1e40c70b6b4e883304bcd605876ec608ee` |
| 42 | `theorem` | [rothNumberNat_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/rothnumbernat-zero--c52c4cfa6a5ca43758b2ef90.md) | 443 | `result-track:c52c4cfa6a5ca43758b2ef9020ae84591db58ea1b1ee11f769e5ddf3dd24db9c` |
| 43 | `theorem` | [addRothNumber_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/addrothnumber-ico--019d32801ee935c6b6af6173.md) | 446 | `result-track:019d32801ee935c6b6af61730a516576fdf42c96ba4e9a76e10514917222442a` |
| 44 | `lemma` | [Fin.addRothNumber_eq_rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/fin-addrothnumber-eq-rothnumbernat--47b46fc047803b358ef686de.md) | 454 | `result-track:47b46fc047803b358ef686de226a0bf9e9651694eb17f052a284d270928de0ef` |
| 45 | `lemma` | [Fin.addRothNumber_le_rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/declarations/fin-addrothnumber-le-rothnumbernat--88bf427d4a3d38624461eea0.md) | 458 | `result-track:88bf427d4a3d38624461eea05b42b24502bfd4c50d8575e5add087926d45e50d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
