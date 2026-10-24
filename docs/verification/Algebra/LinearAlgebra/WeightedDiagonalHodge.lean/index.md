# Verification target: GRWTSK.LinearAlgebra.WeightedDiagonalHodge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e71d6ba814e05a4100cce158617095801174c27a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/WeightedDiagonalHodge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e71d6ba814e05a4100cce158617095801174c27a`.

Source path: `GRWTSK/LinearAlgebra/WeightedDiagonalHodge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/WeightedDiagonalHodge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat`](../../../../mathematics/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedDot](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/declarations/weighteddot--ddaf0f8e30f4cd0d2b28c8e5.md) | 16 | `declaration-track:ddaf0f8e30f4cd0d2b28c8e5636b391e409e39c91f3e676ba5d7f9dee295a5b2` |
| 2 | `theorem` | [weightedDot_self_eq_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/declarations/weighteddot-self-eq-zero-iff--8819afa6319be1d04e69abff.md) | 20 | `result-track:8819afa6319be1d04e69abff11278e0ac79017ecfc4abc06457c21f019212175` |
| 3 | `def` | [weightedDiagonalHodge](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/declarations/weighteddiagonalhodge--a1783047e9f930d75e49e4ef.md) | 47 | `declaration-track:a1783047e9f930d75e49e4ef3723b6651fbde4710509f425f8678390421c5e65` |
| 4 | `theorem` | [weighted_adjoint](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/declarations/weighted-adjoint--3031005ed095759b8ca7d140.md) | 53 | `result-track:3031005ed095759b8ca7d140fe7c2d999a68d7399807bb1ab3f39608b4c19cf9` |
| 5 | `theorem` | [weighted_laplacian0_apply](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/declarations/weighted-laplacian0-apply--4af379e6c43504032506dabb.md) | 66 | `result-track:4af379e6c43504032506dabbeacfdee34a40261bd30d4eac2e57a5733400e7cc` |
| 6 | `def` | [energy](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/declarations/energy--c07ccf85873d91c18ceea7d2.md) | 75 | `declaration-track:c07ccf85873d91c18ceea7d225515ab89351e33bbe506fccdc0670b65768a381` |
| 7 | `theorem` | [energy_nonneg](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/declarations/energy-nonneg--1babb02449b59e9dac075078.md) | 79 | `result-track:1babb02449b59e9dac075078902f17bd61541ed46ff853948ce816b267e06167` |
| 8 | `theorem` | [energy_eq_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/WeightedDiagonalHodge.lean/declarations/energy-eq-zero-iff--f9ca3d04702e39fe5cd08ac7.md) | 89 | `result-track:f9ca3d04702e39fe5cd08ac7b5357269b3d2cce2ee8e36535e0af699db2d633a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
