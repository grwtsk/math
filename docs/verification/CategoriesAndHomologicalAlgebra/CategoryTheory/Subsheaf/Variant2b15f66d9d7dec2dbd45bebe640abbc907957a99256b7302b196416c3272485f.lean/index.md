# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subsheaf.Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d146705ced1de5c2b2c79a1ddefb47e812995954",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d146705ced1de5c2b2c79a1ddefb47e812995954`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean.json)

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
| 1 | `theorem` | [Subfunctor.isSeparated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-isseparated--d8a14f6286eb1df4ca763083.md) | 49 | `result-track:d8a14f6286eb1df4ca763083e52cb3ba2877a9d221d57ab37f87f63b31976e96` |
| 2 | `def` | [Subfunctor.sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-sheafify--a6e76fafe13b6a4c0eee0a1a.md) | 56 | `declaration-track:a6e76fafe13b6a4c0eee0a1a59506efe733d25f844c22eb3657a935a243911b4` |
| 3 | `theorem` | [Subfunctor.le_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-le-sheafify--e8acb45557412177dbb397a2.md) | 65 | `result-track:e8acb45557412177dbb397a2e2bb0bb00f1df0aeecde3e188bb986036a170800` |
| 4 | `theorem` | [Subfunctor.eq_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-eq-sheafify--c78d172f3d203f2f13a49a91.md) | 75 | `result-track:c78d172f3d203f2f13a49a916b74893c452272347235acbcb1a8f8a4a691c90d` |
| 5 | `theorem` | [Subfunctor.sheafify_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-sheafify-issheaf--51398e8f3b6678dbe129a017.md) | 87 | `result-track:51398e8f3b6678dbe129a017221d8ee1fffd5530c408601d4854e7cee06a3e7f` |
| 6 | `theorem` | [Subfunctor.eq_sheafify_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-eq-sheafify-iff--ab0c7696eda07980bd6c1928.md) | 119 | `result-track:ab0c7696eda07980bd6c19288895d26159cc571c5e58200421d9715ceee5afaf` |
| 7 | `theorem` | [Subfunctor.isSheaf_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-issheaf-iff--069593b2fe2ce9daa81cd1ca.md) | 123 | `result-track:069593b2fe2ce9daa81cd1caba91b07bb5e8fc54564a89e2989eb55715c3f627` |
| 8 | `theorem` | [Subfunctor.sheafify_sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-sheafify-sheafify--6bd6cf67d4b23d33b26abf8f.md) | 130 | `result-track:6bd6cf67d4b23d33b26abf8f318da410b8e6af2332fd57fb8ab884ddcafa3cb0` |
| 9 | `def` | [Subfunctor.sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-sheafifylift--ae3ea53d6e6f42c844c2685c.md) | 136 | `declaration-track:ae3ea53d6e6f42c844c2685cea70b22d8e4f520096484b7e03f61e4ebce34fc3` |
| 10 | `theorem` | [Subfunctor.to_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-to-sheafifylift--b52e1805aa856dd9bcd8aff8.md) | 156 | `result-track:b52e1805aa856dd9bcd8aff8aea9104855b4e79f968242f9fcd94298462b15ac` |
| 11 | `theorem` | [Subfunctor.to_sheafify_lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-to-sheafify-lift-unique--caf3e5e665a5b1ff69af8ea9.md) | 166 | `result-track:caf3e5e665a5b1ff69af8ea9ab581b95c31e88ba367a7a1f3a4d2b9359137344` |
| 12 | `theorem` | [Subfunctor.sheafify_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-sheafify-le--6c8766dd460b2287e2e4f872.md) | 177 | `result-track:6c8766dd460b2287e2e4f872577e8088992cf28aff67fab653854335cad4915f` |
| 13 | `def` | [Subfunctor.toRangeSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/subfunctor-torangesheafify--b7463903227ec941e19ebe4c.md) | 195 | `declaration-track:b7463903227ec941e19ebe4c41400291a241b495d544f23c8f464b4b3573ec97` |
| 14 | `def` | [Sheaf.image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/sheaf-image--25303d2af19c7a037de6d610.md) | 201 | `declaration-track:25303d2af19c7a037de6d610b8f31089e33f2f9f639c79d06099ee19841cc1e0` |
| 15 | `def` | [Sheaf.toImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/sheaf-toimage--8001d443399b787d8b449210.md) | 210 | `declaration-track:8001d443399b787d8b4492109701a2b98b3e6d7b7cba75f8bb00f570c84fd353` |
| 16 | `def` | [Sheaf.imageι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/sheaf-image--234e7d7af45e1637b341ba39.md) | 215 | `declaration-track:234e7d7af45e1637b341ba3948f6b2081f0761008f0c8d9244a172031f645f7b` |
| 17 | `theorem` | [Sheaf.toImage_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/sheaf-toimage--ba01689dd2349b947e17055a.md) | 221 | `result-track:ba01689dd2349b947e17055a2f3921fa660619ead84ec6fd723729a27139e657` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/instance--304f5d26545426877b938381.md) | 227 | `declaration-track:304f5d26545426877b938381361c1217c4d2e917b640005edfeee6f328b5da5a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/instance--f44d5de51b894e7b7935d605.md) | 234 | `declaration-track:f44d5de51b894e7b7935d6050f09be253f3e2248eec90afc19ac7bd92150c8d1` |
| 20 | `def` | [imageMonoFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/imagemonofactorization--5c03c9d52a26ef87d412ca5f.md) | 249 | `declaration-track:5c03c9d52a26ef87d412ca5fddb5a4333ed971ef5f6109aa41370ea38d0e0f45` |
| 21 | `def` | [imageFactorization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/imagefactorization--531f2d648d7959829a986657.md) | 257 | `declaration-track:531f2d648d7959829a986657cf06f5a0f5ab2421c0e810b7a4a069adeb93d1bd` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant2b15f66d9d7dec2dbd45bebe640abbc907957a99256b7302b196416c3272485f.lean/declarations/instance--28ece4233d3f9bea7eba78f8.md) | 280 | `declaration-track:28ece4233d3f9bea7eba78f8147324680ce3fa5c1301d6d831f0c34dd2d86b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
