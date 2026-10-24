# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalComplexAbelian.Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2edc9b29cd6df77fb657b305353bb5283352325",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2edc9b29cd6df77fb657b305353bb5283352325`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplexLimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean/declarations/instance--62f8ea581a658613d7fb49f6.md) | 26 | `declaration-track:62f8ea581a658613d7fb49f601ff17ea649f13a8ee9c73bc05025c89e398167e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean/declarations/instance--cd4b261e469c5f14d8972e5d.md) | 31 | `declaration-track:cd4b261e469c5f14d8972e5dd799124c3e41b579c0cfe1c4ba340a0c279799a1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean/declarations/instance--21d1542931cc907e8b01b6b2.md) | 36 | `declaration-track:21d1542931cc907e8b01b6b2761e7bfc9f6b5fd8f3211caa67f3cd0fc1b2f35a` |
| 4 | `lemma` | [exact_of_degreewise_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean/declarations/exact-of-degreewise-exact--7b0e9bacfa9f51cfc577f072.md) | 40 | `result-track:7b0e9bacfa9f51cfc577f072e5defdda0b26a73988f56e11e4a3858baeac7fae` |
| 5 | `lemma` | [shortExact_of_degreewise_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean/declarations/shortexact-of-degreewise-shortexact--247ac51740322cdb37471a8d.md) | 47 | `result-track:247ac51740322cdb37471a8db8fe0a472e4e1bf434eb515d5a450c5615c57430` |
| 6 | `lemma` | [exact_iff_degreewise_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean/declarations/exact-iff-degreewise-exact--050f6621ee7d374ca66449a6.md) | 54 | `result-track:050f6621ee7d374ca66449a6fb55c55c8ac81a3ba5ec912fb028fcbf16c60ee3` |
| 7 | `lemma` | [shortExact_iff_degreewise_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexAbelian/Variant96b9b14493f25c673cfa61c4725f5338f5decd16b5498f4390d4d55f85a3c059.lean/declarations/shortexact-iff-degreewise-shortexact--b6c1fffab1f1314deabf3084.md) | 61 | `result-track:b6c1fffab1f1314deabf3084ff53202a3ffeb4f454bd35f97f1401b602d61c64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
