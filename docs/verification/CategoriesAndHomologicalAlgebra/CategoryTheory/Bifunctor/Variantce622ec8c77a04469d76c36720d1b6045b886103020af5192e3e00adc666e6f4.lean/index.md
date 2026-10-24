# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fc5ed763bf1cc425d794116c1e9dc8b781fb432",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fc5ed763bf1cc425d794116c1e9dc8b781fb432`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean.json)

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
| 1 | `class` | [Bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/bifunctor--d1b5b9ffbd6ded12fb8f0406.md) | 45 | `declaration-track:d1b5b9ffbd6ded12fb8f04065cece376c2cc93533df879ffc670eeaabc980e75` |
| 2 | `class` | [LawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/lawfulbifunctor--e7f02d08f7a1d3170f7684f9.md) | 51 | `declaration-track:e7f02d08f7a1d3170f7684f9d86635b6768818fdeeea22c3df13edc5224ac13c` |
| 3 | `abbrev` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/fst--2d8fb756d3cc654c23ec6cd0.md) | 70 | `declaration-track:2d8fb756d3cc654c23ec6cd0e9e1b2473d8d40e99d09b13e07c7525f995b033b` |
| 4 | `abbrev` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/snd--a5bd75cc9fa9187f0189c0c0.md) | 74 | `declaration-track:a5bd75cc9fa9187f0189c0c073a1437a7379335c912cd5553b114a0020651e82` |
| 5 | `theorem` | [id_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/id-fst--232af3c40be69610d90ae474.md) | 80 | `result-track:232af3c40be69610d90ae4748e0e3257acb14bfc640eddd47bd59a54b487d211` |
| 6 | `theorem` | [id_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/id-snd--f013339ab9a8e838b58ffc97.md) | 84 | `result-track:f013339ab9a8e838b58ffc97d7ef4208326eb64195e224422f1495ff81ba9c9a` |
| 7 | `theorem` | [comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/comp-fst--c348baea86c455f8e9881c8c.md) | 88 | `result-track:c348baea86c455f8e9881c8ca0472389b9b4643ee7bd61ad5993da48118b1cc4` |
| 8 | `theorem` | [fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/fst-snd--b98e7fd52579e2e28f9fa8a2.md) | 92 | `result-track:b98e7fd52579e2e28f9fa8a272b79fa4da24af1f2237f34cd9c8d1cb1b52e7bb` |
| 9 | `theorem` | [snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/snd-fst--00077839247fbfad0e702f4e.md) | 96 | `result-track:00077839247fbfad0e702f4ef00b8e367f23965540ddeb49269a5ff3a4e9e7a7` |
| 10 | `theorem` | [comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/comp-snd--bfc32cd4b43deb4a5d300f9c.md) | 100 | `result-track:bfc32cd4b43deb4a5d300f9c737b5211d8de26cee4326d79a44e52754b3685bc` |
| 11 | `instance` | [Prod.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/prod-bifunctor--fae8b009daa8902ff56fd783.md) | 111 | `declaration-track:fae8b009daa8902ff56fd783b103c626d150bdac5b67a6bf849c62985295cb49` |
| 12 | `instance` | [Prod.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/prod-lawfulbifunctor--9df1af704befc4432b87e6f6.md) | 113 | `declaration-track:9df1af704befc4432b87e6f64ac6a59e05de27cade55a59a497b8f255ceaf4f2` |
| 13 | `instance` | [Bifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/bifunctor-const--539ec6b14a635614af4c1aa7.md) | 117 | `declaration-track:539ec6b14a635614af4c1aa73a810ad8a5ed56f6ab523a3e0712c27fbdfff18f` |
| 14 | `instance` | [LawfulBifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/lawfulbifunctor-const--0604a2330b677d83206a4582.md) | 119 | `declaration-track:0604a2330b677d83206a4582f243d069c707a51c783891366c68e55f80271298` |
| 15 | `instance` | [Bifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/bifunctor-flip--77d756a03bfe16fc60337f30.md) | 123 | `declaration-track:77d756a03bfe16fc60337f3004ad63058d7d42a712a35851a2ea013b0cf37c20` |
| 16 | `instance` | [LawfulBifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/lawfulbifunctor-flip--1c9365c34970e2847b7f3a65.md) | 127 | `declaration-track:1c9365c34970e2847b7f3a6523691064c1410c8e63e5b2387e20cbf52bb3b79b` |
| 17 | `instance` | [Sum.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/sum-bifunctor--bb1d6ae62a5c8174896ab6d2.md) | 131 | `declaration-track:bb1d6ae62a5c8174896ab6d243a678b37ad913ece2148e7be86c3f36a07169b5` |
| 18 | `instance` | [Sum.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/sum-lawfulbifunctor--d32b81873e72e1fe4af8342e.md) | 133 | `declaration-track:d32b81873e72e1fe4af8342e09a9ead517f95a15e4f1dc475176f5d46964ffee` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/instance--501f35b3e3d80f7ec4aeb29e.md) | 139 | `declaration-track:501f35b3e3d80f7ec4aeb29e58ff9181559ef5c65f3f416df723f7be61db6215` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/instance--87afb8620b76a5ce67ef8689.md) | 141 | `declaration-track:87afb8620b76a5ce67ef86899396b6df4fd120b6aedebdfc48ad387a1fca0399` |
| 21 | `instance` | [Function.bicompl.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/function-bicompl-bifunctor--ddfe6d2cb4760c2097c1affc.md) | 151 | `declaration-track:ddfe6d2cb4760c2097c1affc03bc3ea440015b0e99b311c7494c7bfdc6a2b9eb` |
| 22 | `instance` | [Function.bicompl.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/function-bicompl-lawfulbifunctor--399a6d551098c3eddbe06a51.md) | 155 | `declaration-track:399a6d551098c3eddbe06a5112703913254dd897e410da936e3de54e7e1839ef` |
| 23 | `instance` | [Function.bicompr.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/function-bicompr-bifunctor--d0f2fc9d725e0d4cad5cce9c.md) | 165 | `declaration-track:d0f2fc9d725e0d4cad5cce9ca42bfcf7ce5444f94679fba078f6dbeff8a9a703` |
| 24 | `instance` | [Function.bicompr.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce622ec8c77a04469d76c36720d1b6045b886103020af5192e3e00adc666e6f4.lean/declarations/function-bicompr-lawfulbifunctor--e7369fd44b7469da638f81b0.md) | 169 | `declaration-track:e7369fd44b7469da638f81b06af662e5f443cf59bc3b870273c2fd3341cd796f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
