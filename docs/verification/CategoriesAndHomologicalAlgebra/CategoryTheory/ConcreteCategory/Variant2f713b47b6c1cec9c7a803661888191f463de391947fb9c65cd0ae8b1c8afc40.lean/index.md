# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21d8038fe67cffcd4bf87bcb16dfef1ec0219f1a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21d8038fe67cffcd4bf87bcb16dfef1ec0219f1a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/productequiv--7ea39ccb9ef7750edc0c3f4c.md) | 58 | `declaration-track:7ea39ccb9ef7750edc0c3f4c045c4005bd99c933f4fab203d2665d6b670c6c4d` |
| 2 | `lemma` | [productEquiv_apply_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/productequiv-apply-apply--e13c59dab126a5b2d2a1a491.md) | 62 | `result-track:e13c59dab126a5b2d2a1a491a8ed3a024bcd98f7fe690a89efc77b779bd446fe` |
| 3 | `lemma` | [productEquiv_symm_apply_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/productequiv-symm-apply--aba9423df3dd0c4dc25be563.md) | 67 | `result-track:aba9423df3dd0c4dc25be56397195b95bf5b8f75d48479e4d4afd430cfa15c68` |
| 4 | `lemma` | [Pi.map_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/pi-map-ext--951dab8e2c1c1704c821e736.md) | 83 | `result-track:951dab8e2c1c1704c821e736af6a551874bdd9b23b68f0786b1cb69671638bb9` |
| 5 | `def` | [uniqueOfTerminalOfPreserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/uniqueofterminalofpreserves--e483067d412a10d75c407ffb.md) | 102 | `declaration-track:e483067d412a10d75c407ffb2e96e341cd1e8aea9d674fd0bf0e45ff998ae71a` |
| 6 | `def` | [terminalOfUniqueOfReflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/terminalofuniqueofreflects--32bdae735e6135044c60b548.md) | 107 | `declaration-track:32bdae735e6135044c60b5484cffaa2d1b7ca8d79473441503de3799c9112e5a` |
| 7 | `def` | [terminalIffUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/terminaliffunique--1f514924786fa18e48ed38c4.md) | 113 | `declaration-track:1f514924786fa18e48ed38c40f8df73c5e7c3b0e1a6f8376c69eeacb537f7975` |
| 8 | `def` | [terminalEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/terminalequiv--87eb7d583eb5f1e0bc88f877.md) | 122 | `declaration-track:87eb7d583eb5f1e0bc88f877e0ba67819e496dff525cf0e7a5b9b297aa52713b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/instance--7ed272efc6c19e234dbfcef0.md) | 125 | `declaration-track:7ed272efc6c19e234dbfcef08a9cc53edcad2e2da381fbd0521abcc12cb34314` |
| 10 | `lemma` | [empty_of_initial_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/empty-of-initial-of-preserves--698f15b6ce472737494b53e3.md) | 137 | `result-track:698f15b6ce472737494b53e3dfafca05a4c2ea9bc919775371642b2928874424` |
| 11 | `lemma` | [initial_of_empty_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/initial-of-empty-of-reflects--3f2f359694207ac164f249d4.md) | 143 | `result-track:3f2f359694207ac164f249d4dc2db07f848804eb69b8385857424941eff3bf6f` |
| 12 | `lemma` | [initial_iff_empty_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/initial-iff-empty-of-preserves-of-reflects--d387484c7d4bbdc85d9d5b32.md) | 150 | `result-track:d387484c7d4bbdc85d9d5b32fb5b766fef4426364d874a731a47c013bb418f05` |
| 13 | `def` | [prodEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/prodequiv--ba8de6fecc3237408230ba96.md) | 166 | `declaration-track:ba8de6fecc3237408230ba9659ea5aa902d20de559911e84ca4a41ab897dbd06` |
| 14 | `lemma` | [prodEquiv_apply_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/prodequiv-apply-fst--cda26ab8052bc0e211877428.md) | 170 | `result-track:cda26ab8052bc0e211877428551992ee6b28450af9b24f66810bcae2ab34a441` |
| 15 | `lemma` | [prodEquiv_apply_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/prodequiv-apply-snd--e260338393493a763da41b6b.md) | 175 | `result-track:e260338393493a763da41b6bd7e5db556989f6b6239c00a4b2af4a82a18994ee` |
| 16 | `lemma` | [prodEquiv_symm_apply_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/prodequiv-symm-apply-fst--ea94ce8732aa741d78cd0550.md) | 180 | `result-track:ea94ce8732aa741d78cd0550ccde780e7546bf56a0643ae0e248efb87f90ae2e` |
| 17 | `lemma` | [prodEquiv_symm_apply_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/prodequiv-symm-apply-snd--76bf62d951403c32d1ba4312.md) | 186 | `result-track:76bf62d951403c32d1ba43121e7b0e06420e872b74a06950a5f31e26f648c743` |
| 18 | `def` | [pullbackEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/pullbackequiv--56391ed535185d29df50b990.md) | 203 | `declaration-track:56391ed535185d29df50b990428eac9f6a28c80b334566a678f52183a6725f90` |
| 19 | `def` | [pullbackMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/pullbackmk--6c7b0d3e580c2cfde63dc3a5.md) | 209 | `declaration-track:6c7b0d3e580c2cfde63dc3a5ceb557d57d4a0d18480d24a0eb640fa9df7fb920` |
| 20 | `lemma` | [pullbackMk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/pullbackmk-surjective--663b768ea03055d5d1806172.md) | 213 | `result-track:663b768ea03055d5d1806172ffb2bd717dccbba3acf9cbffcd936cd33b7d0da4` |
| 21 | `lemma` | [pullbackMk_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/pullbackmk-fst--b2360a6c6dae7ce184589601.md) | 219 | `result-track:b2360a6c6dae7ce18458960160d533144538ada248d7234fc5572e350c9c3288` |
| 22 | `lemma` | [pullbackMk_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/pullbackmk-snd--0a20e0ffcb384c1c84256da8.md) | 226 | `result-track:0a20e0ffcb384c1c84256da8bba6798e1c799aa0d59291e971c3b501e471b449` |
| 23 | `theorem` | [widePullback_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/widepullback-ext--931579817e31121dd432c2c6.md) | 243 | `result-track:931579817e31121dd432c2c642ea45732fd5c9afb528472203ff53edb93bc548` |
| 24 | `theorem` | [widePullback_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/widepullback-ext--77bc0500d0e26bd82c66e17e.md) | 252 | `result-track:77bc0500d0e26bd82c66e17ea9912732f01961bea494015771a0310c4abe19f8` |
| 25 | `theorem` | [multiequalizer_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/multiequalizer-ext--0cf1dda2734993379036815e.md) | 267 | `result-track:0cf1dda2734993379036815eec18cf7ebc8167083f9bac9d1e067dbcd07a8d06` |
| 26 | `def` | [multiequalizerEquivAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/multiequalizerequivaux--82b5519dcfa14014c2448dff.md) | 279 | `declaration-track:82b5519dcfa14014c2448dffd0ccadd883267338ec810d5976ac7dbcbff48f40` |
| 27 | `def` | [multiequalizerEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/multiequalizerequiv--915e305fb23a03c6ca3f1535.md) | 312 | `declaration-track:915e305fb23a03c6ca3f153561501a1ee9d77cb2a82d242ccbc57bda21b43187` |
| 28 | `theorem` | [multiequalizerEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/multiequalizerequiv-apply--cb27632df5dfc6f741382322.md) | 323 | `result-track:cb27632df5dfc6f741382322ac3d645567df98386b9be5709439733e32053837` |
| 29 | `theorem` | [widePushout_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/widepushout-exists-rep--b27ab5bdb9fbfe2f723112d7.md) | 341 | `result-track:b27ab5bdb9fbfe2f723112d7c3600c381f4cc9c5ddec9e748a3cd982c5e4ac2b` |
| 30 | `theorem` | [widePushout_exists_rep'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/widepushout-exists-rep--f7020ff0a0db47936274dc23.md) | 353 | `result-track:f7020ff0a0db47936274dc23bfce9daa1c71016729569570c5f293bbd3dedd96` |
| 31 | `theorem` | [cokernel_funext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant2f713b47b6c1cec9c7a803661888191f463de391947fb9c65cd0ae8b1c8afc40.lean/declarations/cokernel-funext--7b5dba3d55eea7c76aa815c1.md) | 366 | `result-track:7b5dba3d55eea7c76aa815c1846575619aa0906651282b98704e1df7255b0794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
