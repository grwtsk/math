# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cone.Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d58503898a0005754549ae145c150f1f304245b6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d58503898a0005754549ae145c150f1f304245b6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.WithTerminal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commaFromOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/commafromover--112c8b4741dc9a78c4b3596e.md) | 43 | `declaration-track:112c8b4741dc9a78c4b3596eb432bfd6dd158aca2a1c82e6c87e5c731935a0e6` |
| 2 | `def` | [liftFromOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/liftfromover--64dedebc4f11a33e54c1d041.md) | 57 | `declaration-track:64dedebc4f11a33e54c1d041e2ca93f567b8cb501177c71b4e867fb71d1a6950` |
| 3 | `def` | [liftFromOverComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/liftfromovercomp--2f4cb35fd1b1d579ca3e8447.md) | 61 | `declaration-track:2f4cb35fd1b1d579ca3e84479bf2ffea88090b075ae37bd54f6dd05bbeee4a2d` |
| 4 | `def` | [coneLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/conelift--39931ce3cd12475a3c955266.md) | 69 | `declaration-track:39931ce3cd12475a3c9552662da2fd36937f2d704b64dc20b893d30d266cfee0` |
| 5 | `def` | [coneBack](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/coneback--44be331db668c5674ae99d3e.md) | 91 | `declaration-track:44be331db668c5674ae99d3e5e5fae91121ff75c1f4a28729361d5b3bd8ec587` |
| 6 | `def` | [coneEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/coneequiv--cd25f06b8773d1db5f994bf6.md) | 113 | `declaration-track:cd25f06b8773d1db5f994bf6750e3debfbb40558ff2531a0ff93a6267479b200` |
| 7 | `lemma` | [coneEquiv_functor_obj_π_app_star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/coneequiv-functor-obj-app-star--8cd202536fbbc0c006b224af.md) | 120 | `result-track:8cd202536fbbc0c006b224afbe9a25a6d19e7969ad28fb2422004d2b3e97c0e1` |
| 8 | `lemma` | [coneEquiv_functor_obj_π_app_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/coneequiv-functor-obj-app-of--748601e69cb462b92c0bdc33.md) | 123 | `result-track:748601e69cb462b92c0bdc33a9f149516a4732e751b6db53287768393e666cc6` |
| 9 | `def` | [isLimitEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/islimitequiv--56a4b3dd3555ad55d5e856de.md) | 129 | `declaration-track:56a4b3dd3555ad55d5e856de3d55e39a2a838e455d45bb4df4d0bd86ad269308` |
| 10 | `def` | [commaFromUnder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/commafromunder--5c09ff880bd9332840f91555.md) | 143 | `declaration-track:5c09ff880bd9332840f91555d77a923bc2181ce063a60621a7fa3046c35a56ad` |
| 11 | `def` | [liftFromUnder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/liftfromunder--701bc77c1619ac07e2c6eb68.md) | 157 | `declaration-track:701bc77c1619ac07e2c6eb68c287679e1c515bb0dd91a9610d9386263e8a9cef` |
| 12 | `def` | [liftFromUnderComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/liftfromundercomp--3d30a551ed4f5223a042365b.md) | 161 | `declaration-track:3d30a551ed4f5223a042365ba5271f6fb00085b05d2b24347c3cdb6c878d937e` |
| 13 | `def` | [coconeLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/coconelift--bf17c63cb2912932b3a8febc.md) | 169 | `declaration-track:bf17c63cb2912932b3a8febc72eeab5f6fa2a30371bdb223c3e6fa7002d2c350` |
| 14 | `def` | [coconeBack](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/coconeback--4b407a670aa4620e1262ce4c.md) | 191 | `declaration-track:4b407a670aa4620e1262ce4c20d3e538d6cc45e471091d3a206594e324831523` |
| 15 | `def` | [coconeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/coconeequiv--a91b0140cf7c2bd858f77b50.md) | 213 | `declaration-track:a91b0140cf7c2bd858f77b50163bfa3a22c70ba1a0bb1b7a301e640f2cb84361` |
| 16 | `lemma` | [coconeEquiv_functor_obj_ι_app_star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/coconeequiv-functor-obj-app-star--d28bf7ef4ad13ed98c20ef86.md) | 220 | `result-track:d28bf7ef4ad13ed98c20ef86ad6169c5f27b5f991913638386302b406dcf9744` |
| 17 | `lemma` | [coconeEquiv_functor_obj_ι_app_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/coconeequiv-functor-obj-app-of--3d37fc18082b1490dab580e4.md) | 223 | `result-track:3d37fc18082b1490dab580e4afbf1ae2d622effcb49290f33a6360b564e00e5a` |
| 18 | `def` | [isColimitEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant1d9d452032adcd1b111c4c4bfdd473be2ddfa9ddef7238178816384db3b6ddf3.lean/declarations/iscolimitequiv--d96922c3d6c7fa910960583f.md) | 229 | `declaration-track:d96922c3d6c7fa910960583f7a9ae2521f248ea9bf799f22350a18e3e11a7253` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
