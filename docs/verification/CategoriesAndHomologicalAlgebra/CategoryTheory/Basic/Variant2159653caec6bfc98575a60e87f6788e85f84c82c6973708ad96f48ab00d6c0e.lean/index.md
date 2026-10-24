# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6cbca8d68ed4bccf2492d86e016b77f170adc4d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6cbca8d68ed4bccf2492d86e016b77f170adc4d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsIdempotentComplete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/isidempotentcomplete--0250ab0c85d8b6a3a00b87c9.md) | 58 | `declaration-track:0250ab0c85d8b6a3a00b87c9daeabbc0057b0b9e76d43152d2c43511e598a3fe` |
| 2 | `theorem` | [isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/isidempotentcomplete-iff-hasequalizer-of-id-and-idempotent--01aa3abb559db1e82f8b5b64.md) | 68 | `result-track:01aa3abb559db1e82f8b5b64ca63dfe48b41ca6428331c31d01c6c48a1ea0f7d` |
| 3 | `theorem` | [idem_of_id_sub_idem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/idem-of-id-sub-idem--58b109570226a24d82e0ab2f.md) | 102 | `result-track:58b109570226a24d82e0ab2fc3282bccc7cad1c9f97b6b9de961798a48499d44` |
| 4 | `theorem` | [isIdempotentComplete_iff_idempotents_have_kernels](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/isidempotentcomplete-iff-idempotents-have-kernels--800e843bab1e5937356d949f.md) | 107 | `result-track:800e843bab1e5937356d949f227f9deee0da89e2e297bcc3bd56671a8dd2fdef` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/instance--d2a8593de7a86018d643ee4a.md) | 120 | `declaration-track:d2a8593de7a86018d643ee4ace4b94792d15836df758f9e224b8f55360fbad6e` |
| 6 | `theorem` | [split_imp_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/split-imp-of-iso--ed9066f63ea36cd95733f42a.md) | 128 | `result-track:ed9066f63ea36cd95733f42a683ee7f37d6254ddea3e78b09b7ed254854a193d` |
| 7 | `theorem` | [split_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/split-iff-of-iso--ad13bc84b954fbb45523c6b4.md) | 140 | `result-track:ad13bc84b954fbb45523c6b430e7d93188028c47d8234e03b8decd8ba467b9fe` |
| 8 | `theorem` | [Equivalence.isIdempotentComplete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/equivalence-isidempotentcomplete--1494a751dac8a9b3f81a1ba5.md) | 153 | `result-track:1494a751dac8a9b3f81a1ba55c82612c314ba2a3456f8c452de430aa38618d45` |
| 9 | `theorem` | [isIdempotentComplete_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/isidempotentcomplete-iff-of-equivalence--5c344f1d5d69309b4759095d.md) | 172 | `result-track:5c344f1d5d69309b4759095da99a5b69936f317007363fae1b498829629d4412` |
| 10 | `theorem` | [isIdempotentComplete_of_isIdempotentComplete_opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/isidempotentcomplete-of-isidempotentcomplete-opposite--471a8ca67eca92e8c58d19b8.md) | 178 | `result-track:471a8ca67eca92e8c58d19b83cc60152c597f7dbe021a6bc77196c2448c78894` |
| 11 | `theorem` | [isIdempotentComplete_iff_opposite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/isidempotentcomplete-iff-opposite--3fed9e05715aa398fe9b3b27.md) | 191 | `result-track:3fed9e05715aa398fe9b3b27df0faf316668bc0dec83622abcbabcd76a757f3e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2159653caec6bfc98575a60e87f6788e85f84c82c6973708ad96f48ab00d6c0e.lean/declarations/instance--bcb0fd5746bd27d5107ea65f.md) | 199 | `declaration-track:bcb0fd5746bd27d5107ea65f85d662ce417bb348265f3bbc1f44e4b957197ad1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
