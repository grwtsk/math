# Verification target: GRWTSK.Algebra.LinearAlgebra.EngelSubalgebra.Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a8cd0524f5f2327467987d6cd6a37ba7ff40043",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a8cd0524f5f2327467987d6cd6a37ba7ff40043`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean.json)

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
| 1 | `def` | [engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean/declarations/engel--c0e9187f4087d3f60adb487a.md) | 60 | `declaration-track:c0e9187f4087d3f60adb487acdc8bc8469f7c8ffc4392aa159d33653a3154fbe` |
| 2 | `lemma` | [mem_engel_iff](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean/declarations/mem-engel-iff--bc3d549e5cc44cbb0853b3c5.md) | 74 | `result-track:bc3d549e5cc44cbb0853b3c543054305c18e2d288229272ebbb98c0c4c29a938` |
| 3 | `lemma` | [self_mem_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean/declarations/self-mem-engel--eaa27b5e80dd1c647ca288e1.md) | 78 | `result-track:eaa27b5e80dd1c647ca288e1a9540bb91155de0ac0fa2453f55dfa7aeef09bf1` |
| 4 | `lemma` | [engel_zero](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean/declarations/engel-zero--d1c2e236f62701ddcfbbfd5b.md) | 83 | `result-track:d1c2e236f62701ddcfbbfd5b8ba22993a0702812493360d0cf4c8a788d5fbcd5` |
| 5 | `lemma` | [normalizer_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean/declarations/normalizer-engel--001ff9cabba3e366903533c9.md) | 95 | `result-track:001ff9cabba3e366903533c966a392ca24b276a161c7b0f4f3635a2832cd909c` |
| 6 | `lemma` | [normalizer_eq_self_of_engel_le](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean/declarations/normalizer-eq-self-of-engel-le--b5a4ab12752edff4c8a8dfd7.md) | 114 | `result-track:b5a4ab12752edff4c8a8dfd70e78328d696c08b16aa07b15e8cb681c96d7b89b` |
| 7 | `lemma` | [isNilpotent_of_forall_le_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Variant4d49e02c0b0f2a9ba4065f2996a01a95d01d3cbf95c445a477c999f077ad26cf.lean/declarations/isnilpotent-of-forall-le-engel--1dcbc309f2404ea4212e23b2.md) | 157 | `result-track:1dcbc309f2404ea4212e23b277e002a322e13c1221f1bef3bd457aad15d8c83c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
