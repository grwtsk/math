# Verification target: GRWTSK.Algebra.IsSplittingField.Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05bb5454a9cbe94284457671f0754000cb7ca6bc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05bb5454a9cbe94284457671f0754000cb7ca6bc`.

Source path: `GRWTSK/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Field` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSplittingField](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/issplittingfield--1cdc2e80265897a73d02d6b6.md) | 47 | `declaration-track:1cdc2e80265897a73d02d6b607ee365bcac6881f423a06fbd1afb2665e64d408` |
| 2 | `theorem` | [splits](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/splits--98cb91601eea2083292316a1.md) | 58 | `result-track:98cb91601eea2083292316a17880359e78f12c62528744b8e80978b708c75fc1` |
| 3 | `theorem` | [adjoin_rootSet](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/adjoin-rootset--c2e12bff0e698127222290ba.md) | 64 | `result-track:c2e12bff0e698127222290baa6c06d17de409c3f4e2d8ce43e886d3ef6984d35` |
| 4 | `instance` | [map](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/map--2b6a8c6196452e8d8e021e28.md) | 73 | `declaration-track:2b6a8c6196452e8d8e021e289659aa82b49f059b9e1fe1729cf04d648c6f4013` |
| 5 | `theorem` | [splits_iff](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/splits-iff--37469bbd5fc4e8cf4cdfa3ba.md) | 81 | `result-track:37469bbd5fc4e8cf4cdfa3ba83c3cf272a4722a976381c890e79716685693843` |
| 6 | `theorem` | [mul](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/mul--7eb35565bff128bf8629520f.md) | 97 | `result-track:7eb35565bff128bf8629520f484975a83dd7bc90cdd3f3fd64c59f65b47f1b56` |
| 7 | `def` | [lift](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/lift--320ca796997969073ee5ab96.md) | 115 | `declaration-track:320ca796997969073ee5ab96a1e950415e53550fd49739f60b1a92b847610cf6` |
| 8 | `theorem` | [finiteDimensional](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/finitedimensional--a2452f7a9560e46aed9a3388.md) | 131 | `result-track:a2452f7a9560e46aed9a338835294430bb9d62105eac107a85a4ab49b3cbac0d` |
| 9 | `theorem` | [of_algEquiv](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/of-algequiv--333c60393abb078c4d61c186.md) | 140 | `result-track:333c60393abb078c4d61c186fbe52919070c6d1204acd1bbf6b5d78a701f6cea` |
| 10 | `theorem` | [splits_of_splits](../../../../mathematics/Algebra/IsSplittingField/Variant77d5b3626c1a119ecb438dd827fee1c59ab9502a07155e150b1abfc61a189414.lean/declarations/splits-of-splits--5e0e128aa04d183c8a24a6d0.md) | 159 | `result-track:5e0e128aa04d183c8a24a6d02a3005f896afdb3754df8fc3d160d8912ba5e6fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
