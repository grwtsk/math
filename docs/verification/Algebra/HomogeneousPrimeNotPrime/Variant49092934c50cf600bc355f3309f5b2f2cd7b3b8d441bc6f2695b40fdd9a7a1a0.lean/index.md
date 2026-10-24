# Verification target: GRWTSK.Algebra.HomogeneousPrimeNotPrime.Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b00483a529a1dd1a56e609942771b3f25c5f5a05",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/index.md) · [Full source](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b00483a529a1dd1a56e609942771b3f25c5f5a05`.

Source path: `GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.HomogeneousIdeal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Two](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/two--17667d778f1fba5883440fab.md) | 53 | `declaration-track:17667d778f1fba5883440fab1c76ad68de28ee42c3829bbf19a452b8753aa168` |
| 2 | `instance` | [Two.instLinearOrder](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/two-instlinearorder--458a935925ec7fb36eb4809d.md) | 57 | `declaration-track:458a935925ec7fb36eb4809d56ba16da3bce5b2e385639ed96fd0e65934382ed` |
| 3 | `instance` | [Two.instAddCommMonoid](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/two-instaddcommmonoid--f3938f3bd062b11d699f1507.md) | 60 | `declaration-track:f3938f3bd062b11d699f150717dfc6a69918eb9b1b9efe48a6a40f16e93f8b4f` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/instance--5654d7e7b575402475e1f578.md) | 63 | `declaration-track:5654d7e7b575402475e1f5782e536787387a12fd153c1611988d4a22e4e79af8` |
| 5 | `def` | [submoduleZ](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/submodulez--3eea80f69c205201b4e0ef11.md) | 72 | `declaration-track:3eea80f69c205201b4e0ef112dabcb91fe1580a2d27718ddce030dd666536097` |
| 6 | `def` | [submoduleO](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/submoduleo--da628b81f0fb419f401b8477.md) | 80 | `declaration-track:da628b81f0fb419f401b8477a6e901326e64e6be66fe869474aa7ba0a52e2be3` |
| 7 | `def` | [grading](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/grading--e5575696e93b617a34913ff7.md) | 86 | `declaration-track:e5575696e93b617a34913ff7dd1a2e7997e9a23fc7c7cbe0580644235317c3f3` |
| 8 | `theorem` | [grading.one_mem](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/grading-one-mem--86ea2f0ab96aa1d692f431c2.md) | 91 | `result-track:86ea2f0ab96aa1d692f431c2efdfb1ad941327be387e1b6cb30c34d8b82484b0` |
| 9 | `theorem` | [grading.mul_mem](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/grading-mul-mem--f50e42cfaad5003ae9ea61cf.md) | 95 | `result-track:f50e42cfaad5003ae9ea61cf434d5983dbd5b8ea99849896eb9c61803ed751dd` |
| 10 | `def` | [grading.decompose](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/grading-decompose--d209d7add8f08c6818b3f72a.md) | 110 | `declaration-track:d209d7add8f08c6818b3f72ab6c87c0aad8fe80edb877ee4038c77a2c68c87db` |
| 11 | `theorem` | [grading.right_inv](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/grading-right-inv--cd8e22702a88a55b7439d1f4.md) | 125 | `result-track:cd8e22702a88a55b7439d1f4eff5b7335c61fe82d35662b83d3d809e725947c9` |
| 12 | `theorem` | [grading.left_inv](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/grading-left-inv--77264397679684727742d221.md) | 140 | `result-track:77264397679684727742d221a0391c1698891c9edf8c0f9e1175c9378d6bd7d8` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/instance--f1fc6ea1092ce9ba0f145b6f.md) | 148 | `declaration-track:f1fc6ea1092ce9ba0f145b6f7b327ed81ac10b8a36bf136587fc2a4a4ac7bedd` |
| 14 | `def` | [I](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/i--9301913c2b7d2671c4d81f0e.md) | 159 | `declaration-track:9301913c2b7d2671c4d81f0e7c189fe9f26b09874f5de747772bb78b508e517a` |
| 15 | `theorem` | [I_not_prime](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/i-not-prime--30848049dd86e3398d20c140.md) | 163 | `result-track:30848049dd86e3398d20c140300c9dd0c3be5e66636d01940e3c567868a9edfd` |
| 16 | `theorem` | [I_isHomogeneous](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/i-ishomogeneous--fc2ae39c7ae9e4e1fdb7cb99.md) | 174 | `result-track:fc2ae39c7ae9e4e1fdb7cb99d0c21c32442142ec7345956aca4f2e224613a99d` |
| 17 | `theorem` | [homogeneous_mem_or_mem](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant49092934c50cf600bc355f3309f5b2f2cd7b3b8d441bc6f2695b40fdd9a7a1a0.lean/declarations/homogeneous-mem-or-mem--4c6a2e1b205161a8234d9a06.md) | 181 | `result-track:4c6a2e1b205161a8234d9a06a13f2b0ea711f77015f14f9f13bd9a5122932258` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
