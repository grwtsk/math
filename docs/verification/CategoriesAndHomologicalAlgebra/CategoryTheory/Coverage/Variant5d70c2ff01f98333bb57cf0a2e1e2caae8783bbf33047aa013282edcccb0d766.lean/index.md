# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coverage.Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93b544a90e4c8fc6af8f7b29045f9b8484689c1d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93b544a90e4c8fc6af8f7b29045f9b8484689c1d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.SheafOfTypes` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FactorsThruAlong](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/factorsthrualong--d93c038ee90dfc6f689307a8.md) | 73 | `declaration-track:d93c038ee90dfc6f689307a83efca0ec7784e3c4eb43afbcc0d1c2812bbc1254` |
| 2 | `def` | [FactorsThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/factorsthru--e34e1ec36e0d84bf1dd40b24.md) | 85 | `declaration-track:e34e1ec36e0d84bf1dd40b24eb8e9ff26c4ef2838db07eb8234792a420c4398d` |
| 3 | `lemma` | [factorsThruAlong_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/factorsthrualong-id--9e037c132d4aa46e8d5ae209.md) | 90 | `result-track:9e037c132d4aa46e8d5ae209bf83c9531bcbb476ec393845a5ee601b252e2821` |
| 4 | `lemma` | [factorsThru_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/factorsthru-of-le--0d205afe1f19e0d88a1b66d5.md) | 94 | `result-track:0d205afe1f19e0d88a1b66d56a8cb0cb54489ffc9e622bed7082900c3d612559` |
| 5 | `lemma` | [le_of_factorsThru_sieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/le-of-factorsthru-sieve--d72ed2d72dc0b3cb2570dc43.md) | 98 | `result-track:d72ed2d72dc0b3cb2570dc43f0fc40b82369eee98776b1f453ebf418383d8928` |
| 6 | `lemma` | [factorsThru_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/factorsthru-top--899df4138f63eec1bda75246.md) | 104 | `result-track:899df4138f63eec1bda752460a63a8835e32a1adb06ed134f9e36b3ca0b3402f` |
| 7 | `lemma` | [isSheafFor_of_factorsThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/issheaffor-of-factorsthru--515b511e50fdda7125b27973.md) | 107 | `result-track:515b511e50fdda7125b2797304318150b75f8de9b6f676960a64cd1e035c2e25` |
| 8 | `structure` | [Coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/coverage--f03c205e4649e00a686b04c9.md) | 153 | `declaration-track:f03c205e4649e00a686b04c9fa7282001c88a3b32fcfbb61fc1043a59fb0be4c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/instance--f8ca6822bf664ad9acb1f979.md) | 163 | `declaration-track:f8ca6822bf664ad9acb1f9791b65b61feeda1d11ba5571c924276ded53fcd1a1` |
| 10 | `def` | [ofGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/ofgrothendieck--d16770c452670680ad76282e.md) | 173 | `declaration-track:d16770c452670680ad76282e5c3fa449ccf669d95ecfa6508c4825101407cd50` |
| 11 | `lemma` | [ofGrothendieck_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/ofgrothendieck-iff--99344d66af89e3942a6ac9d7.md) | 182 | `result-track:99344d66af89e3942a6ac9d7519765fd9ade6bc82954a174b11aec6e184d8cd2` |
| 12 | `inductive` | [saturate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/saturate--da339e0ed46e935d5adce4d4.md) | 189 | `declaration-track:da339e0ed46e935d5adce4d4c56fa2e634470d242ffe6e16b9423c8faf49c989` |
| 13 | `lemma` | [eq_top_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/eq-top-pullback--ff2a24e33615d3b84f1e3034.md) | 197 | `result-track:ff2a24e33615d3b84f1e30341b70f04130ae80f2dda1dda003b27fa3ae4fffcc` |
| 14 | `lemma` | [saturate_of_superset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/saturate-of-superset--fb8537d4beb8b4f9bb9fca1e.md) | 205 | `result-track:fb8537d4beb8b4f9bb9fca1e19758a96090cbdf61366d1c42a55635989a000bf` |
| 15 | `def` | [toGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/togrothendieck--116643514ba9282beb3c2d70.md) | 226 | `declaration-track:116643514ba9282beb3c2d70aa02c26f3cfdd69916f4f77424993bdfe62b1478` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/instance--4d1f66a3ec07b46aae21b009.md) | 249 | `declaration-track:4d1f66a3ec07b46aae21b00960b6f4900a44e52b650afbaf950579e1a1b6b2c3` |
| 17 | `def` | [gi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/gi--04224b9a1b79663e2e9531c5.md) | 261 | `declaration-track:04224b9a1b79663e2e9531c510876ba5c28c22b59adaf6b92745c6ebcf022c13` |
| 18 | `theorem` | [toGrothendieck_eq_sInf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/togrothendieck-eq-sinf--7a06a70f6bf1a901a0980cae.md) | 283 | `result-track:7a06a70f6bf1a901a0980caed83fc72fd78bf0f405e1ed91ffdc1e50c3fc0c18` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/instance--dc34c2d364e2f25c26d7caa5.md) | 296 | `declaration-track:dc34c2d364e2f25c26d7caa5bab304df21e2e5137ef0255f918a453a4e5d31cc` |
| 20 | `lemma` | [sup_covering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/sup-covering--6011607ac87dd00b60bc6063.md) | 311 | `result-track:6011607ac87dd00b60bc6063826d9f4f0a3cc31f35b2f63269cabdc8e7ce3b12` |
| 21 | `theorem` | [isSheaf_coverage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant5d70c2ff01f98333bb57cf0a2e1e2caae8783bbf33047aa013282edcccb0d766.lean/declarations/issheaf-coverage--2f744b1672f6235057b31f4c.md) | 326 | `result-track:2f744b1672f6235057b31f4c32afb69002a7e4dafaa6d2b39b480728a92868da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
