# Verification target: GRWTSK.Algebra.LinearAlgebra.InvolutiveRelaxation.Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db44350802d99a83640ad0a814be09e04e2d7f54",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db44350802d99a83640ad0a814be09e04e2d7f54`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.PositiveQuantization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveLinearInvolution](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/positivelinearinvolution--6908d81eb36cc59f62a7bc79.md) | 29 | `declaration-track:6908d81eb36cc59f62a7bc796b8d5c526f1709edbf49cad56dee59fc5d0b908b` |
| 2 | `structure` | [RelaxationWeight](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/relaxationweight--3b3332b952f4877c43c82976.md) | 39 | `declaration-track:3b3332b952f4877c43c82976c27aeaa62ace11eda31360fd51874f8883ede244` |
| 3 | `theorem` | [one_sub_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/one-sub-nonnegative--9ae49e1054052ce223c89803.md) | 46 | `result-track:9ae49e1054052ce223c8980319da90fe374caab08b77f18158d0df3717d140f0` |
| 4 | `def` | [relax](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/relax--17a189973946d4beb69b8bbb.md) | 58 | `declaration-track:17a189973946d4beb69b8bbb532cd24f91c84b3d9b133825c4b136af51335483` |
| 5 | `theorem` | [relax_linear](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/relax-linear--dcec62d9c725bad226b83952.md) | 64 | `result-track:dcec62d9c725bad226b83952f2b24e8385ce79f6f120fbfb4f43cba5171fac16` |
| 6 | `theorem` | [relax_preserves_positivity](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/relax-preserves-positivity--c0c4040a1a225976a5467909.md) | 75 | `result-track:c0c4040a1a225976a5467909f4de3a6a76bd30e90ea476e5de66b6bbc13fdd1e` |
| 7 | `theorem` | [relax_zero](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/relax-zero--45ae25a1e2bd747a2096be1e.md) | 85 | `result-track:45ae25a1e2bd747a2096be1e9bf96b4265d854e14b012debb85071dcbf6d2414` |
| 8 | `theorem` | [relax_one](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/relax-one--8ea302bd4b71eb402e9a170d.md) | 95 | `result-track:8ea302bd4b71eb402e9a170d06b989fc5cd497fb8f857c2d3a62b3979465c8b0` |
| 9 | `theorem` | [relax_apply_of_fixed](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/relax-apply-of-fixed--afbec1ed3aa417192a09e529.md) | 104 | `result-track:afbec1ed3aa417192a09e52975d94046f71ecf64a6f0ad83b68fad6ab2fca6e0` |
| 10 | `def` | [fixedProjection](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/fixedprojection--48907bd08a1aa8ad5548c323.md) | 115 | `declaration-track:48907bd08a1aa8ad5548c323360c27e8e63206bcff3c86d11db34d63667c18c2` |
| 11 | `theorem` | [fixedProjection_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/fixedprojection-idempotent--76d9095bb30452f299e8f8c9.md) | 120 | `result-track:76d9095bb30452f299e8f8c9d5524296b938e500db926012c53503057c1b1698` |
| 12 | `structure` | [FiniteConvolutionOperator](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/finiteconvolutionoperator--a1e1ab9ca6bd933154734524.md) | 135 | `declaration-track:a1e1ab9ca6bd9331547345243a9090659ac9be1145fd9371f4b51afac58777f2` |
| 13 | `structure` | [PositiveInvolutiveConvolution](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/positiveinvolutiveconvolution--a14b4ff0ff9fcc5e5eb28d92.md) | 149 | `declaration-track:a14b4ff0ff9fcc5e5eb28d925f2e298535be387034ba16a304213107e1252d62` |
| 14 | `def` | [toPositiveLinearInvolution](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/topositivelinearinvolution--fb24e7b930b4fff63cdf2a95.md) | 164 | `declaration-track:fb24e7b930b4fff63cdf2a953f99347c358c5ce05493b58f24aff463b3de24de` |
| 15 | `structure` | [PositiveRelaxationTrajectory](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/positiverelaxationtrajectory--54c833d3b2eee7a04235b894.md) | 177 | `declaration-track:54c833d3b2eee7a04235b894cb1b4f3e3a431ac20bbff5a09750cc0289ec1bdb` |
| 16 | `theorem` | [state_positive](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/state-positive--9f71637fdeaee0391c6a679f.md) | 200 | `result-track:9f71637fdeaee0391c6a679fd8e29fd1798ebfab21adbd7d6fda3f19980d232e` |
| 17 | `def` | [horizonMap](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/horizonmap--c504a84ab806dcb0c1ba54e9.md) | 214 | `declaration-track:c504a84ab806dcb0c1ba54e9818e90a9520326ebd68a7cbde9312ee561cefcd0` |
| 18 | `theorem` | [horizonMap_linear](../../../../../mathematics/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/declarations/horizonmap-linear--2650dca918ebeabb8f0fb0e5.md) | 221 | `result-track:2650dca918ebeabb8f0fb0e5ef23361c54096805dd5ace520852e82caa1e641c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
