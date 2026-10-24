# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivMon.Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e24e5978ca41e30053c92b9bb1e9ba88b539192",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e24e5978ca41e30053c92b9bb1e9ba88b539192`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean/declarations/tomon--e9352cbac6024a82b3c1b631.md) | 40 | `declaration-track:e9352cbac6024a82b3c1b631d369d058220702dd03cbca64c7d1633ef41c31a2` |
| 2 | `def` | [monadToMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean/declarations/monadtomon--2e4db63bcf9ecbbc4e4f0668.md) | 49 | `declaration-track:2e4db63bcf9ecbbc4e4f066846bddf7e8098edb18151cc71fdb54f29e9c047e4` |
| 3 | `def` | [ofMon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean/declarations/ofmon--378b17b2a18db1d51ce0d498.md) | 55 | `declaration-track:378b17b2a18db1d51ce0d49814de36e8c863c6454afea51eab203e45ea665199` |
| 4 | `lemma` | [ofMon_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean/declarations/ofmon-obj--3a0204b7feae98f75e86fb86.md) | 67 | `result-track:3a0204b7feae98f75e86fb86c7d3d135658f781d0df1ea37746a17a1c0012bfe` |
| 5 | `def` | [monToMonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean/declarations/montomonad--0c094ada51ddc3d93ad94041.md) | 73 | `declaration-track:0c094ada51ddc3d93ad940414300ee514b12ffd1c5337563e3e5b9ff4c4dbeb2` |
| 6 | `def` | [monadMonEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean/declarations/monadmonequiv--3f3a6457d6c5d0ae999020dc.md) | 84 | `declaration-track:3f3a6457d6c5d0ae999020dc25853949a109f01a3096b7e56237f6e6e8768b05` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivMon/Variant7ddb6503282d7cf51c0b4e64139cee28c7f6fba16bb5f4c442b059f3cd0ea4cc.lean/declarations/example--91543fb3b38865c2349f2192.md) | 95 | `declaration-track:91543fb3b38865c2349f2192f5181216de5c9c7d5a21c955009adf2b699d0185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
