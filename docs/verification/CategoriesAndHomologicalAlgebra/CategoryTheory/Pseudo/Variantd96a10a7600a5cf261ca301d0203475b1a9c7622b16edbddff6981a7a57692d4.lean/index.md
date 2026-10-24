# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudo.Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f188e0ebe21c5ac1155f7381fbae1af05a59886b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f188e0ebe21c5ac1155f7381fbae1af05a59886b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Pseudofunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.NaturalTransformation.Oplax` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StrongTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/strongtrans--97cc678f04033b481f0dae09.md) | 61 | `declaration-track:97cc678f04033b481f0dae09b2ac9e5b57c2fc6248ee4631a5b1ba9ae26a2509` |
| 2 | `def` | [toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/tooplax--4fdefd886e46a4f14126fdbe.md) | 91 | `declaration-track:4fdefd886e46a4f14126fdbee3fa28353ac7a99c577c240a5ffc79167e560db4` |
| 3 | `instance` | [hasCoeToOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/hascoetooplax--803ff5c1da84742ec91a5022.md) | 95 | `declaration-track:803ff5c1da84742ec91a5022301f1517cfe9e5173a9fcb7c43f5e2a6b9a05fec` |
| 4 | `def` | [mkOfOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/mkofoplax--10d8c30a8926b51fde409838.md) | 101 | `declaration-track:10d8c30a8926b51fde409838b9defddb532ed06ca0073916ab228e12057a8b4a` |
| 5 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/id--b2115408b2833f8496c17e34.md) | 111 | `declaration-track:b2115408b2833f8496c17e347a6f217a3b55eb0f256911f89efd6456e6005723` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/instance--3b70a712953612e626a94426.md) | 115 | `declaration-track:3b70a712953612e626a94426099ea2b9646b54ef2532916977c18f190e7eb3ff` |
| 7 | `def` | [vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/vcomp--48ab382c5206d69644f90865.md) | 121 | `declaration-track:48ab382c5206d69644f90865be24a30fdf8a5bd1ac8c156dc0c7d251165673ad` |
| 8 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/categorystruct--9cc02f028fe4e813139dc59e.md) | 128 | `declaration-track:9cc02f028fe4e813139dc59e44664037e58557ef3ff82d1f2f9e0fa2445e568f` |
| 9 | `lemma` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/comp-app--06adbb288375aaee328f7f34.md) | 136 | `result-track:06adbb288375aaee328f7f340b1e6580c75ef62147f226e6ff1a3869b0cd588a` |
| 10 | `lemma` | [id.toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/id-tooplax--fa5f9885704916173728c6ce.md) | 142 | `result-track:fa5f9885704916173728c6cee30e62551092d21420781a09ded93f0cef94475c` |
| 11 | `theorem` | [whiskerLeft_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/whiskerleft-naturality-naturality--62e79cc7f6c2e7c0a9431365.md) | 151 | `result-track:62e79cc7f6c2e7c0a94313652c5e0cc70b6f3e6292a7726d2ae3b00822fd0038` |
| 12 | `theorem` | [whiskerRight_naturality_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/whiskerright-naturality-naturality--29dbc939ec2e4dd7925534d8.md) | 157 | `result-track:29dbc939ec2e4dd7925534d88ce9ddd934a374999c6aaa22115e1930d90dde55` |
| 13 | `theorem` | [whiskerLeft_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/whiskerleft-naturality-comp--89ecfcbbdbfc9735dfc37227.md) | 163 | `result-track:89ecfcbbdbfc9735dfc372277a897cd3bc249b9acb718c928e50cefad772fe8a` |
| 14 | `theorem` | [whiskerRight_naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/whiskerright-naturality-comp--83b69aeef5b31ad0b0ba7652.md) | 172 | `result-track:83b69aeef5b31ad0b0ba7652383091b8bfe37f7da9f8815b45f56d755a906397` |
| 15 | `theorem` | [whiskerLeft_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/whiskerleft-naturality-id--71c3f23a045dd289e0844a59.md) | 184 | `result-track:71c3f23a045dd289e0844a598ff9a83a5bf93313e84d01139b26d634dca48594` |
| 16 | `theorem` | [whiskerRight_naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudo/Variantd96a10a7600a5cf261ca301d0203475b1a9c7622b16edbddff6981a7a57692d4.lean/declarations/whiskerright-naturality-id--a9b34c52f866a4d8ccbe2954.md) | 190 | `result-track:a9b34c52f866a4d8ccbe295459fe6922880b625e0ca073f2ae69da4013b96cba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
