# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b2ffc1e8537e381df2eb35cd5af9f3ee9500e39",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b2ffc1e8537e381df2eb35cd5af9f3ee9500e39`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean.json)

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
| 1 | `class` | [Bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/bifunctor--a7fe817e1f002b2ee8581133.md) | 37 | `declaration-track:a7fe817e1f002b2ee858113350e6aa76072870a6bbb4c828b94189cfa054b738` |
| 2 | `class` | [LawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/lawfulbifunctor--c003714a943a555140b5c3bf.md) | 43 | `declaration-track:c003714a943a555140b5c3bf65d905f49ba236f45c5ee5da388c08d03d34e385` |
| 3 | `abbrev` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/fst--42df82f3c26445f5692ae9cd.md) | 62 | `declaration-track:42df82f3c26445f5692ae9cde661f2cedc2b18a801dd833d0d760d9ab928516a` |
| 4 | `abbrev` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/snd--6ad18dc479ee0c2ae37f4209.md) | 66 | `declaration-track:6ad18dc479ee0c2ae37f4209c25cd307bef7455846f45205089321ffe65fddd4` |
| 5 | `theorem` | [id_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/id-fst--17cf14e524a1c8834915f05e.md) | 72 | `result-track:17cf14e524a1c8834915f05e4d41ef3290a9de21e7ecbe3d81d9253b9f5796c8` |
| 6 | `theorem` | [id_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/id-snd--007e4b401858fcad755f1848.md) | 76 | `result-track:007e4b401858fcad755f18488352b62e320df1458a8c8f7d87cd209ce9140335` |
| 7 | `theorem` | [comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/comp-fst--829757bf093230720a782aba.md) | 80 | `result-track:829757bf093230720a782aba4e47963aa34a9da5aa35d4f3257d885363f357f7` |
| 8 | `theorem` | [fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/fst-snd--22859edccb66deae9903eb3d.md) | 84 | `result-track:22859edccb66deae9903eb3db72f0372bd00c5c100e931050f8b9b1eeb7e5257` |
| 9 | `theorem` | [snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/snd-fst--3689353235d4d255124d10cc.md) | 88 | `result-track:3689353235d4d255124d10cc3cb6378e4f7643d90581fd0f12d262179609f60e` |
| 10 | `theorem` | [comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/comp-snd--b1e9c3cca476c7ed6cc09180.md) | 92 | `result-track:b1e9c3cca476c7ed6cc0918070d48476919d2a87f6d17d271d5c5db74c28dafc` |
| 11 | `instance` | [Prod.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/prod-bifunctor--ad6c660e3ff122e4b24bddbf.md) | 103 | `declaration-track:ad6c660e3ff122e4b24bddbf553bb856653a6ccd86428ec09894e70a210fb01f` |
| 12 | `instance` | [Prod.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/prod-lawfulbifunctor--7ee16884ce85c65f5814a165.md) | 105 | `declaration-track:7ee16884ce85c65f5814a165873f5475940ead3f685432288bb28e3483f1f4ae` |
| 13 | `instance` | [Bifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/bifunctor-const--14654c811f2aadec10ea1e1e.md) | 109 | `declaration-track:14654c811f2aadec10ea1e1e0c819097455693449ebb984267a80977d835aaa5` |
| 14 | `instance` | [LawfulBifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/lawfulbifunctor-const--e0a88cc4587e64c05612d991.md) | 111 | `declaration-track:e0a88cc4587e64c05612d991c12f386ba66ca3a0ebad6dea2dfe5f1ba8099cbe` |
| 15 | `instance` | [Bifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/bifunctor-flip--14854f85e16596e624eead93.md) | 115 | `declaration-track:14854f85e16596e624eead93c8f660c5c443648d524dd172220dfe5556eb7b5a` |
| 16 | `instance` | [LawfulBifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/lawfulbifunctor-flip--b42750962485fe672c485845.md) | 119 | `declaration-track:b42750962485fe672c48584546f554a5b9de4e9b91514948316effd0f94b9013` |
| 17 | `instance` | [Sum.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/sum-bifunctor--4bcc7816e217d840810417ca.md) | 123 | `declaration-track:4bcc7816e217d840810417cad71e79559b2718e87d7d2fd38af96ebe1086b5dc` |
| 18 | `instance` | [Sum.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/sum-lawfulbifunctor--02bd506c5358d992bfca68a4.md) | 125 | `declaration-track:02bd506c5358d992bfca68a4bc7e8741ebbd59932affbe10494bcacb6248363b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/instance--8f192bcfe008f6b8e730a7da.md) | 131 | `declaration-track:8f192bcfe008f6b8e730a7da1304d9138e0c209db3cca81fc1295ae7b79fa623` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/instance--b4334f3056ae783fd96f233d.md) | 133 | `declaration-track:b4334f3056ae783fd96f233dd8528f79bd4a8e2c0c786c40e4277a2508362842` |
| 21 | `instance` | [Function.bicompl.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/function-bicompl-bifunctor--8b1b54076c9585582abd4f26.md) | 143 | `declaration-track:8b1b54076c9585582abd4f2652de16d148a906bb1c70ed6616247ada2734e1a3` |
| 22 | `instance` | [Function.bicompl.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/function-bicompl-lawfulbifunctor--e40e0e543f2c29df668ffbbc.md) | 147 | `declaration-track:e40e0e543f2c29df668ffbbcfe2da70c5ceacf0e8c4ad38dd309831a2303923b` |
| 23 | `instance` | [Function.bicompr.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/function-bicompr-bifunctor--704a32308954dc7cdb95a7be.md) | 157 | `declaration-track:704a32308954dc7cdb95a7beedd4b8c7b505ebcffeb040c2f3e8d48075cf8ebf` |
| 24 | `instance` | [Function.bicompr.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f1eb728fb1d5e7f3a2fd0884fd2431bc97cd43436227eaff1a24cd803bcc145.lean/declarations/function-bicompr-lawfulbifunctor--cc137d6c397fb0de4e0b5306.md) | 161 | `declaration-track:cc137d6c397fb0de4e0b530637fccc14eb44e1cb3f7ff318b50d1d5048465c1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
