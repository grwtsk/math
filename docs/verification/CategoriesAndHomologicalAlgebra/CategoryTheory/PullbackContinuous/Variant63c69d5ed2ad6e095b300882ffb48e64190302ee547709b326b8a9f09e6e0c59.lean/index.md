# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PullbackContinuous.Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ffa7105821a631753be0181a5194c65432c4d65",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ffa7105821a631753be0181a5194c65432c4d65`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Pullback` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafification` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf.PushforwardContinuous` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/declarations/pullback--98e7e3a0259fb9d076066b5e.md) | 45 | `declaration-track:98e7e3a0259fb9d076066b5e6317da564eb98254a43dccea7417fd6bfbf6eb98` |
| 2 | `def` | [pullbackPushforwardAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/declarations/pullbackpushforwardadjunction--a9c0e689cc357b7306b6f121.md) | 52 | `declaration-track:a9c0e689cc357b7306b6f121bd6f68b7204ec96e01fd2051a10267aaee9fbba6` |
| 3 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/declarations/adjunction--f03de0dd75c16e8e485da713.md) | 66 | `declaration-track:f03de0dd75c16e8e485da7133e156b8a4c55170274959012b6f21d24527748d6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/declarations/instance--e6094b5dfdebbd6c360e52bc.md) | 92 | `declaration-track:e6094b5dfdebbd6c360e52bc258e497393a6f1910ca44b74d598f5c5f97d9eb5` |
| 5 | `def` | [pullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/declarations/pullbackiso--5e9ef58ec96385162e70cf1f.md) | 98 | `declaration-track:5e9ef58ec96385162e70cf1f2b44b4d9693e6dced794a10ddc07f3969abfcc53` |
| 6 | `def` | [sheafificationCompPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/declarations/sheafificationcomppullback--d2f231467fab42a6c9d5d3a7.md) | 110 | `declaration-track:d2f231467fab42a6c9d5d3a7d96bef16b4914042479098a842155cbcc282b110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
