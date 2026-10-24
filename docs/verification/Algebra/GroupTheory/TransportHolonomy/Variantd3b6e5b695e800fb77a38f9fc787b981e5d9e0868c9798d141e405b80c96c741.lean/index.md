# Verification target: GRWTSK.Algebra.GroupTheory.TransportHolonomy.Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f9769ac436c4d1c8e1ff67c46aa3769ac59d5e2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f9769ac436c4d1c8e1ff67c46aa3769ac59d5e2`.

Source path: `GRWTSK/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InternalAutomorphismAction](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/declarations/internalautomorphismaction--bec050f7e0103897810fbfca.md) | 27 | `declaration-track:bec050f7e0103897810fbfca44f8dcd853ce49247406723a748d27e333c32257` |
| 2 | `theorem` | [identity](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/declarations/identity--38e44e4acba478b29d0642c1.md) | 36 | `result-track:38e44e4acba478b29d0642c16d149574e6fba4c37ed1238c70378f0bdc4106ab` |
| 3 | `theorem` | [composition](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/declarations/composition--b232d0a0932b63a3968663ea.md) | 43 | `result-track:b232d0a0932b63a3968663ea1e122181d1150c802c245df4f70a4a36abfc36c6` |
| 4 | `structure` | [LoopGeneratingSet](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/declarations/loopgeneratingset--088ab11ef7800786b3e4f3e9.md) | 54 | `declaration-track:088ab11ef7800786b3e4f3e9d9aec6e6aadaf9c805dddaf57aca1b5bb157eab2` |
| 5 | `def` | [holonomyFixedSubgroup](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/declarations/holonomyfixedsubgroup--7a538271dac534035b8848d8.md) | 61 | `declaration-track:7a538271dac534035b8848d88140632cd29744f60e6477abe9c63a227028422e` |
| 6 | `theorem` | [cycleConsistency_of_generators](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/declarations/cycleconsistency-of-generators--a3a9c65c505c5cf02dc7d3da.md) | 87 | `result-track:a3a9c65c505c5cf02dc7d3dadd53166c8cf2663abdb4b2f2c3ddd14134b59b46` |
| 7 | `structure` | [CycleConsistencyCertificate](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/declarations/cycleconsistencycertificate--47309cc762d244db82f52b25.md) | 109 | `declaration-track:47309cc762d244db82f52b25fa7eadcf730766669a83ff9436aaca0f647e1218` |
| 8 | `theorem` | [CycleConsistencyCertificate.allLoops](../../../../../mathematics/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/declarations/cycleconsistencycertificate-allloops--33976d98a6ed72a163c4c100.md) | 118 | `result-track:33976d98a6ed72a163c4c10063babe2347d49cd0b3013537a973a7a265c55867` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
