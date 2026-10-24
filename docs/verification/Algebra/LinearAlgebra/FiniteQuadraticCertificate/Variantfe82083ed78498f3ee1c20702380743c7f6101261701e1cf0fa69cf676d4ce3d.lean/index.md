# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteQuadraticCertificate.Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76a8331750d2a88aaa6903c1b4a00c088766b95e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76a8331750d2a88aaa6903c1b4a00c088766b95e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/quadratic--3cf6a9cf8a32085d49e77a52.md) | 36 | `declaration-track:3cf6a9cf8a32085d49e77a521029dc83ba332df8313bcb37c44b74e2357482b9` |
| 2 | `structure` | [Problem](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/problem--22f1f83fc74f7a3bb5974fd2.md) | 39 | `declaration-track:22f1f83fc74f7a3bb5974fd2240f55c82438801f12ceebf77086b1562aef9621` |
| 3 | `def` | [Problem.Admissible](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/problem-admissible--297fbbf42d9cfcb56f53b390.md) | 45 | `declaration-track:297fbbf42d9cfcb56f53b3903913734edc4dee525d1daafce7e62d55b08a35bb` |
| 4 | `structure` | [Certificate](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/certificate--65f6882880fcc0be40f975ee.md) | 50 | `declaration-track:65f6882880fcc0be40f975ee2c1a7139e703e6462acd424048834675a5fa2bb3` |
| 5 | `def` | [Valid](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/valid--d09c1939b29255cac2a83b35.md) | 56 | `declaration-track:d09c1939b29255cac2a83b3541036e33bdde56ab303e432d598a96c4a747bce0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/instance--e65c6508c95a2e91628ea01e.md) | 62 | `declaration-track:e65c6508c95a2e91628ea01ec01386b8c8ee9f3fc8e3a615183600b84e53b831` |
| 7 | `def` | [check](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/check--f81bc3fa76a459deed0352e6.md) | 67 | `declaration-track:f81bc3fa76a459deed0352e6dda1b3b878e5bc5bd9bc98e791e989519015ee74` |
| 8 | `theorem` | [quadratic_add](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/quadratic-add--beeb780d00847f09937c9992.md) | 71 | `result-track:beeb780d00847f09937c9992d13656bd4f13b10031be5874513c60f24625ce6f` |
| 9 | `theorem` | [quadratic_smul](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/quadratic-smul--422a6c6e31a73a6d54b7c7ac.md) | 76 | `result-track:422a6c6e31a73a6d54b7c7ac72a385f3950766c89a06dafacef56dc07d7507bf` |
| 10 | `theorem` | [quadratic_sum](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/quadratic-sum--19f0f987ee53a3ebc9c65cfe.md) | 81 | `result-track:19f0f987ee53a3ebc9c65cfedf59c73545be3b517208b631f6fd9693c58f8b36` |
| 11 | `theorem` | [gram_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/gram-nonnegative--c28f901d907f0ca5bace101e.md) | 87 | `result-track:c28f901d907f0ca5bace101e7d9b17302209a5a2cedce4c1bee1473d16bbb474` |
| 12 | `theorem` | [sound](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/sound--326f76bd027204c99a1ea16e.md) | 94 | `result-track:326f76bd027204c99a1ea16e215eefe478eb78f6ad89fa3e7e5050ab10b24ee0` |
| 13 | `theorem` | [check_sound](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/check-sound--2da244c072a1ecea8f71a67c.md) | 108 | `result-track:2da244c072a1ecea8f71a67ca8c5c1e490fdb13d52bc34d77d1b197a8825fc01` |
| 14 | `def` | [congruence](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/congruence--1cea327e5add2e14b79c4a7d.md) | 118 | `declaration-track:1cea327e5add2e14b79c4a7d56e8345abd9caf3b745ea6b608a1009a6b5dfade` |
| 15 | `def` | [Problem.pullback](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/problem-pullback--09f0524084fd52ff6649602a.md) | 124 | `declaration-track:09f0524084fd52ff6649602a6f4dcb91bed91590ccf25d0b54546a632e68388b` |
| 16 | `def` | [Certificate.pullback](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/certificate-pullback--284d9acdee109d7d20e6f0f9.md) | 130 | `declaration-track:284d9acdee109d7d20e6f0f9d3817b1f11bb0c141a6996da361a09d0082fe370` |
| 17 | `theorem` | [valid_pullback](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/valid-pullback--e255ad4015d81e41d3ccf3c7.md) | 139 | `result-track:e255ad4015d81e41d3ccf3c7110c8757a84f6c07e9b06c4a8255cd6d1dbaebf5` |
| 18 | `theorem` | [check_pullback](../../../../../mathematics/Algebra/LinearAlgebra/FiniteQuadraticCertificate/Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d.lean/declarations/check-pullback--625fb8e0fdac8ac6bc7b30dc.md) | 150 | `result-track:625fb8e0fdac8ac6bc7b30dc77961baf4ef87705484c3620390328992116565c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
