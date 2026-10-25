# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dd8c20217ebda9d33ebc4f4dd5b1a308198c12d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dd8c20217ebda9d33ebc4f4dd5b1a308198c12d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/countable--de0ff4e0d05ae282282b42de.md) | 33 | `declaration-track:de0ff4e0d05ae282282b42de23fae480003baaed5723e4c8addaf434e3dedf7e` |
| 2 | `lemma` | [Countable.exists_injective_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/countable-exists-injective-nat--c44324256961a7696439c6fe.md) | 39 | `result-track:c44324256961a7696439c6fe575ed9965cc3bd2ee25ea89a8fe8e73f4c54fca5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--60f75f97ef70da63c68e3afa.md) | 43 | `declaration-track:60f75f97ef70da63c68e3afa0aa27f84a77893caa1e50287924f79ff4a483add` |
| 4 | `theorem` | [Function.Injective.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/function-injective-countable--22e77fcedb7ceb502a78f7b9.md) | 48 | `result-track:22e77fcedb7ceb502a78f7b94a38b94591b202ea7d0411a27f1b728fe82b6d1b` |
| 5 | `theorem` | [Function.Surjective.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/function-surjective-countable--0df8fd27cdf9ddf2a6ffae78.md) | 54 | `result-track:0df8fd27cdf9ddf2a6ffae78b08c345ce8a2b3b78888d13cd246369b90f0c83f` |
| 6 | `theorem` | [exists_surjective_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/exists-surjective-nat--d9c0ed7400499e4ff568e66b.md) | 59 | `result-track:d9c0ed7400499e4ff568e66b7e00d38242415d82976f62bd8c910fe511975226` |
| 7 | `theorem` | [countable_iff_exists_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/countable-iff-exists-surjective--3ec9f329f91bc130a7bd4e1f.md) | 64 | `result-track:3ec9f329f91bc130a7bd4e1fe6266155c0fdead7e7b4629424583ae0d44ad796` |
| 8 | `theorem` | [Countable.of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/countable-of-equiv--9afdd48913a5babc35556f70.md) | 68 | `result-track:9afdd48913a5babc35556f70ecde38da715958830805522ca3d65fb41f954946` |
| 9 | `theorem` | [Equiv.countable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/equiv-countable-iff--8f93434814d75deec038f7c1.md) | 72 | `result-track:8f93434814d75deec038f7c1a2030530d7412bddad42d0bb4554594bb69c74f7` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--cd1a4c08a9cb790bf5ae0bd4.md) | 76 | `declaration-track:cd1a4c08a9cb790bf5ae0bd427c73fd9142ceb0f35e16c79b785e1660ae5eaac` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--370c604f107317b61b36532b.md) | 84 | `declaration-track:370c604f107317b61b36532b587c73199cb3db20c47d352f17cd9ff5b142c5a4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--d9d1593cfe6723caa2a1a218.md) | 87 | `declaration-track:d9d1593cfe6723caa2a1a21818c627fe345698b10236aa2e320d7789d46d7edd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--f6d2d442b4fe97f0251dff48.md) | 90 | `declaration-track:f6d2d442b4fe97f0251dff48aaf9cb61ed6e5acbca9e50b3587ed3976a35bd92` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--48f7cb6737ff54f2847d23ac.md) | 94 | `declaration-track:48f7cb6737ff54f2847d23acf16275079c0933da8ed5af3452c0d58a16517ebf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--2ce8804b292b2d915c2265ef.md) | 97 | `declaration-track:2ce8804b292b2d915c2265efd2e5be26b118eb71b54532f22ab3755465121458` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--272fcd198d6759e4da6404d4.md) | 101 | `declaration-track:272fcd198d6759e4da6404d4a7cd0bf38f2aa1e2104de400340fa5562de8ba56` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--65d775e4eb46c58e29535ee3.md) | 104 | `declaration-track:65d775e4eb46c58e29535ee37ac6a7c0d964ec85c692849d0fde7e2eb1d5059e` |
| 18 | `instance` | [Bool.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/bool-countable--040e280a4dc193b59bad7ced.md) | 107 | `declaration-track:040e280a4dc193b59bad7cedf6d7c837f7d0ac77ca8ca76142925a7f0b1d54c4` |
| 19 | `instance` | [Prop.countable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/prop-countable--2f416086fd5622af7ab3d172.md) | 110 | `declaration-track:2f416086fd5622af7ab3d172e6eb0baa24eedc588a72c44e77f09eb876d1fd1e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--69aad0114268091764dc126a.md) | 113 | `declaration-track:69aad0114268091764dc126aec371d7afaa6be744d2643d4d165e0da149c11a4` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant83823e404ded70aeb0d6772a2887ffaaa073400660cf770d30a712baf89bc286.lean/declarations/instance--07ad28bc238ebc17fed70e74.md) | 117 | `declaration-track:07ad28bc238ebc17fed70e7456d0d8d2c6daac8feec7e6323cb04bd4f75297ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
