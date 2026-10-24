# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22a2110714dd450694fe4682f09d19dcd9db68ed",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22a2110714dd450694fe4682f09d19dcd9db68ed`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.FilteredColimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.ULift` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/semiringobj--86617373ff51249e30e0b807.md) | 48 | `declaration-track:86617373ff51249e30e0b8077d03269dc9c5f2664ea6c1c381006adc75d7a5be` |
| 2 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/r--e1345f376a0d9294047e5d08.md) | 57 | `declaration-track:e1345f376a0d9294047e5d082cef926fd8fb5c1418a44036f47ec17f41b53176` |
| 3 | `instance` | [colimitSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitsemiring--077b3c7782c804731eacccde.md) | 60 | `declaration-track:077b3c7782c804731eacccde4919e6ad65bf4a0f2f98ead5bdd91f757c03565e` |
| 4 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimit--7755aa8291e86e378f3785c6.md) | 108 | `declaration-track:7755aa8291e86e378f3785c6a0955133b500e2d6215c08ad7fe291807129e9c0` |
| 5 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcocone--b6f04a9c28ec37ebaefae72d.md) | 112 | `declaration-track:b6f04a9c28ec37ebaefae72d390e536c63fbcd930a470cac8b07fe3b07cb0fa2` |
| 6 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcoconeiscolimit--9c51a6fda901731570e59196.md) | 124 | `declaration-track:9c51a6fda901731570e591960b139095ea3db0fbeb90deb0ae4f40d3964d5c0f` |
| 7 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/forget-mon-preservesfilteredcolimits--091dd0293106bddbc0993956.md) | 142 | `declaration-track:091dd0293106bddbc0993956b6c48450cc700c78c91e6538abd73bc47288c73e` |
| 8 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/forget-preservesfilteredcolimits--6cd38c6c2967865dcfadbdf0.md) | 150 | `declaration-track:6cd38c6c2967865dcfadbdf06e2446ed03587f81c7cf378f0638c064da8068a0` |
| 9 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/r--87d3b7fa1df934c636904001.md) | 168 | `declaration-track:87d3b7fa1df934c636904001453c371be8bcfbf866cfee1d28a0310adfc21608` |
| 10 | `instance` | [colimitCommSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcommsemiring--1a2bfd3efdcf43fef91aac6b.md) | 171 | `declaration-track:1a2bfd3efdcf43fef91aac6bd867e2b78355389452e37820ff66c33d6fea85dd` |
| 11 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimit--4d10f640f301946eab19f1db.md) | 177 | `declaration-track:4d10f640f301946eab19f1db88bbd73f36b0b9fc299e388ac7b6a485fc278572` |
| 12 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcocone--b23689c8e77fbcadccba758c.md) | 181 | `declaration-track:b23689c8e77fbcadccba758c31057498b9fd32da4bf8a7414decfc5274f796a4` |
| 13 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcoconeiscolimit--202658b7293c343c8ef22120.md) | 191 | `declaration-track:202658b7293c343c8ef22120e83112d4ee3ac0d9cfce278f0a7c94dec5bf6faf` |
| 14 | `instance` | [forget₂SemiRing_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/forget-semiring-preservesfilteredcolimits--0f0cc54c1c3ee453cc9bf8a8.md) | 206 | `declaration-track:0f0cc54c1c3ee453cc9bf8a8f1c8de29ecd8a55aab8e20cc34b56addf4627164` |
| 15 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/forget-preservesfilteredcolimits--e42e45e8b65fc013995f64c0.md) | 215 | `declaration-track:e42e45e8b65fc013995f64c003cdc36085aa2a807ca63c7246218889973af634` |
| 16 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/r--52730e1c9b5dea1ff0253332.md) | 235 | `declaration-track:52730e1c9b5dea1ff0253332f6e826fb64940bd2a8a0a21cf07c3ae105ff1960` |
| 17 | `instance` | [colimitRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitring--40f5db086d21b313bb453c72.md) | 238 | `declaration-track:40f5db086d21b313bb453c72adb80702f21cdae9a4730a5575f4689b7d039547` |
| 18 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimit--b0d1975a7bda0c0e479cb64d.md) | 244 | `declaration-track:b0d1975a7bda0c0e479cb64d67d658733c1890f81420b5679f5744c8880c5cf8` |
| 19 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcocone--c1647d53c4c0c214c3fab021.md) | 248 | `declaration-track:c1647d53c4c0c214c3fab0213cb0a67344da98c5f40966838021052abeb1d925` |
| 20 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcoconeiscolimit--b9754dd0f0959863a2f4f361.md) | 257 | `declaration-track:b9754dd0f0959863a2f4f3619bbbaad88d82ad053f52b2ff8191fe01c63198e2` |
| 21 | `instance` | [forget₂SemiRing_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/forget-semiring-preservesfilteredcolimits--01c8b7128dde6ddfb6c5f210.md) | 272 | `declaration-track:01c8b7128dde6ddfb6c5f210aa5f1a885ee8eec5150b7061b1c84489ae05b2b3` |
| 22 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/forget-preservesfilteredcolimits--6f2b1854ec532dbe9c6cbf5e.md) | 281 | `declaration-track:6f2b1854ec532dbe9c6cbf5e0fddf8376089ab87a3e97f128a2639a51bbb1da4` |
| 23 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/r--7ccab3467ec39b62549ef79b.md) | 299 | `declaration-track:7ccab3467ec39b62549ef79ba49b945c9ca6588eaa04424de2e104b6e589a4f1` |
| 24 | `instance` | [colimitCommRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcommring--e3e19cff151344bc36fd4f27.md) | 302 | `declaration-track:e3e19cff151344bc36fd4f272c20623c8ac2f7ab68f568f7f2bb075c42dc8df5` |
| 25 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimit--ce7abd02af8066625547e5c6.md) | 308 | `declaration-track:ce7abd02af8066625547e5c60b79c1fa34bab9df140168e3f1e20ca95304b9ec` |
| 26 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcocone--bd170c90a8b55969f13a44bc.md) | 312 | `declaration-track:bd170c90a8b55969f13a44bca94607fdfd60080bef23580dff6457550414926c` |
| 27 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/colimitcoconeiscolimit--46cb1ffb6e627c39ab63bd80.md) | 321 | `declaration-track:46cb1ffb6e627c39ab63bd8060c16e74620594b73e155779790a77ae2e3cbe94` |
| 28 | `instance` | [forget₂Ring_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/forget-ring-preservesfilteredcolimits--f7f447a1576f5960ca3a4d4d.md) | 336 | `declaration-track:f7f447a1576f5960ca3a4d4d300222343d3e5eca493c6f134649691dd233c8b3` |
| 29 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/forget-preservesfilteredcolimits--0980d52a52652538d720879f.md) | 344 | `declaration-track:0980d52a52652538d720879fd5f502cf7fd153be795fd12cb0c2c0398c561356` |
| 30 | `lemma` | [nontrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/nontrivial--e59e8890a22cfadb3e469e2c.md) | 348 | `result-track:e59e8890a22cfadb3e469e2c4ab302e4f781a1acf7029335a0e8cf437bb131e9` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean/declarations/instance--2ba3ff0ccaf256a7f9298b55.md) | 361 | `declaration-track:2ba3ff0ccaf256a7f9298b554e500ec38e99abee7c5761569e5a7cb118128fc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
