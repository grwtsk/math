# Verification target: GRWTSK.Algebra.CommutativeAlgebra.UniqueFactorization.Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7e99e1e3ef17c4a278842b347a1500af2279eef",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7e99e1e3ef17c4a278842b347a1500af2279eef`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Finite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.GCDMonoid` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/declarations/instance--432387b591c0381a766a3055.md) | 33 | `declaration-track:432387b591c0381a766a305583e9553d456b512ad03f1a1674407b5a59ffa757` |
| 2 | `theorem` | [exists_irreducible_of_degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/declarations/exists-irreducible-of-degree-pos--4a3834f45cff0db961f8c975.md) | 64 | `result-track:4a3834f45cff0db961f8c975d508c8d869c608fa0ef58e7a753e78a61b54d214` |
| 3 | `theorem` | [exists_irreducible_of_natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/declarations/exists-irreducible-of-natdegree-pos--0fa877e9f7b6481bf7ee467e.md) | 68 | `result-track:0fa877e9f7b6481bf7ee467e59eb29b6120721f4b6daa293acfc007b26ff56dd` |
| 4 | `theorem` | [exists_irreducible_of_natDegree_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/declarations/exists-irreducible-of-natdegree-ne-zero--7b33d5a832bf43b376de8340.md) | 73 | `result-track:7b33d5a832bf43b376de834029156414956f6d65aa8e486a888c609863a29b15` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/declarations/instance--c52ea0afa2e993abdb525741.md) | 87 | `declaration-track:c52ea0afa2e993abdb52574144649e9e4c846185111fab2122c86c73c7df73cb` |
| 6 | `def` | [fintypeSubtypeMonicDvd](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/declarations/fintypesubtypemonicdvd--dd2ae8ab9033a2a33658f4f4.md) | 95 | `declaration-track:dd2ae8ab9033a2a33658f4f4debdaa1d882425fe99523c27ab3c7e6c87349d84` |
| 7 | `theorem` | [uniqueFactorizationMonoid_of_fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/declarations/uniquefactorizationmonoid-of-fintype--eb9e5a294c09b575e9fd9bed.md) | 112 | `result-track:eb9e5a294c09b575e9fd9bed0279ae86404ec00924b7532c9c6c4e175a3986d1` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/declarations/instance--6da7a3a806d41379d412b130.md) | 121 | `declaration-track:6da7a3a806d41379d412b13016b5ba28da364eee775dc8f166263891ebdfd924` |
| 9 | `theorem` | [Polynomial.exists_monic_irreducible_factor](../../../../../mathematics/Algebra/CommutativeAlgebra/UniqueFactorization/Varianta4f5a7cc907c36a688cf1ccc66a6880ea55e20e5e4efa31a4914bfda1f1e079e.lean/declarations/polynomial-exists-monic-irreducible-factor--1ee265c6655594261c57b5a6.md) | 142 | `result-track:1ee265c6655594261c57b5a6a1dc604a6f107f2986fb825d729fa4c5e383b7ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
