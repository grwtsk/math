# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteLength.Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "328ec798e02d575791b0b94e87c569fec3da9810",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `328ec798e02d575791b0b94e87c569fec3da9810`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean.json)

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
| 1 | `inductive` | [IsFiniteLength](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/isfinitelength--1614a53aee1bd9100baaa5e0.md) | 38 | `declaration-track:1614a53aee1bd9100baaa5e0f3cd15a05d20880cac491b49a02f3e7d4502a531` |
| 2 | `theorem` | [LinearEquiv.isFiniteLength](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/linearequiv-isfinitelength--04738bbb9d1624869cefbba7.md) | 47 | `result-track:04738bbb9d1624869cefbba7bafece356a7a7af40fa32456c5907e07233ee428` |
| 3 | `theorem` | [exists_compositionSeries_of_isNoetherian_isArtinian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/exists-compositionseries-of-isnoetherian-isartinian--119dba72afe56d2efd758a9b.md) | 58 | `result-track:119dba72afe56d2efd758a9b29d0fc216608d872e961adb0b03865251fc7af07` |
| 4 | `theorem` | [isFiniteLength_of_exists_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/isfinitelength-of-exists-compositionseries--50716f126717003c37505828.md) | 63 | `result-track:50716f126717003c37505828dd38204532472f3df6a87beeb064ece62c23da05` |
| 5 | `theorem` | [isFiniteLength_iff_isNoetherian_isArtinian](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/isfinitelength-iff-isnoetherian-isartinian--4484c0e6f08822d4ca9f815d.md) | 81 | `result-track:4484c0e6f08822d4ca9f815d991eb66fbf12dab20670b54046124543a0a59c3b` |
| 6 | `theorem` | [isFiniteLength_iff_exists_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/isfinitelength-iff-exists-compositionseries--e9388f9aa3b7fc7e68880f3b.md) | 90 | `result-track:e9388f9aa3b7fc7e68880f3bc5a95c3a3e5a1959ea7421d66b6f1e9263e13907` |
| 7 | `theorem` | [IsSemisimpleModule.finite_tfae](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/issemisimplemodule-finite-tfae--824c2233450b7c142323cbda.md) | 97 | `result-track:824c2233450b7c142323cbda46c2589aa3698608c3bc0cc9af5f6734804a8284` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/instance--cd5e4ea12111940b678e4b79.md) | 116 | `declaration-track:cd5e4ea12111940b678e4b798ccb94407c9983ac5b2ef4eab8abfa371c07bb70` |
| 9 | `lemma` | [IsFiniteLength.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/isfinitelength-of-injective--b7ce047480895a5e0f6d96f4.md) | 121 | `result-track:b7ce047480895a5e0f6d96f446df5dc44af69cc852ed3bd904dea5519a313fee` |
| 10 | `lemma` | [IsFiniteLength.of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/declarations/isfinitelength-of-surjective--02ac0d8bcbd8161a4f5762d5.md) | 127 | `result-track:02ac0d8bcbd8161a4f5762d5f4f978dda419470ab4bb68d2617577520eca213a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
