# Verification target: GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c871d0bf760c11275659115b2f2fe62d068ca7c2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c871d0bf760c11275659115b2f2fe62d068ca7c2`.

Source path: `GRWTSK/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.HeightIndexedDivisor`](../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentFiniteResidues`](../../../../mathematics/NumberTheory/Chebyshev/TentFiniteResidues.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours`](../../../../mathematics/NumberTheory/Chebyshev/SeparatedTentContours.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_coefficients_at_height](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/sum-coefficients-at-height--fa19e8a9be476ee8c070eced.md) | 47 | `result-track:fa19e8a9be476ee8c070eced117ceb762db569a2ea135d3e297852f4679d4c62` |
| 2 | `theorem` | [analyticAt_off_headAt](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/analyticat-off-headat--c54a9ec80b2be4b04256715e.md) | 63 | `result-track:c54a9ec80b2be4b04256715e7850dba81c0324ddd165bc198bb062d0478e1d32` |
| 3 | `theorem` | [boundary_residue_at_height](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/boundary-residue-at-height--b97a1e85ea62b0e4fa173730.md) | 73 | `result-track:b97a1e85ea62b0e4fa173730c1323b9b5ab9a7b9a1135815920204ab941386fd` |
| 4 | `theorem` | [boundary_div_at_height](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/boundary-div-at-height--5deb5293c46e4eceee2fc30d.md) | 89 | `result-track:5deb5293c46e4eceee2fc30d676a5d674875d498e460360a29c5744d8524eccd` |
| 5 | `theorem` | [boundary_left_step](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/boundary-left-step--66d31fa64312fc51a146827e.md) | 103 | `result-track:66d31fa64312fc51a146827e326b089b11324b1920575310289e5e1b65865794` |
| 6 | `def` | [edgeRemainder](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/edgeremainder--4d99ad48b397f69e0594b872.md) | 119 | `declaration-track:4d99ad48b397f69e0594b87236be4d349ab5d03764c129775ea57f1b9bcee78a` |
| 7 | `theorem` | [right_residue_at_height](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/right-residue-at-height--7191d49ef4cf1ae617e429b8.md) | 126 | `result-track:7191d49ef4cf1ae617e429b8497a0bd77d7583fcd4d2bcb58d86c980c182079b` |
| 8 | `theorem` | [separated_boundary_formula](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/separated-boundary-formula--e1b3fe9a26b06e0116bb1452.md) | 139 | `result-track:e1b3fe9a26b06e0116bb1452159399107b5078bd0281fbe23ae177db23377a88` |
| 9 | `theorem` | [rounded_boundary_formula](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/rounded-boundary-formula--b248b0b80817f7a2c13601b0.md) | 149 | `result-track:b248b0b80817f7a2c13601b076ba9ff77a866b969c2929d0badf726ead406aac` |
| 10 | `theorem` | [rounded_closed_eq](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/rounded-closed-eq--4f33972429fff87909ef3f27.md) | 162 | `result-track:4f33972429fff87909ef3f27acac135e0f8841e31d25f41a2760ade8a60d3515` |
| 11 | `theorem` | [rounded_right_change](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/rounded-right-change--d226eef0b05a78eb89d6260e.md) | 171 | `result-track:d226eef0b05a78eb89d6260ed8acce1e19f962d53f695d5c4f7e6693f8e37580` |
| 12 | `theorem` | [rounded_heights_tendsto](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/rounded-heights-tendsto--3608be2cb66c201fa2a12a01.md) | 185 | `result-track:3608be2cb66c201fa2a12a010a173dfb2942c413429fdff7cf3f00af17a89a1d` |
| 13 | `theorem` | [rounded_right_tendsto_squareSource](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/rounded-right-tendsto-squaresource--e9b616b0975ce67574fb29b2.md) | 193 | `result-track:e9b616b0975ce67574fb29b297b00bbae1c5b8f9cceb4f1d6c56470376c55e09` |
| 14 | `theorem` | [rounded_edge_change_tendsto](../../../../mathematics/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/declarations/rounded-edge-change-tendsto--154cb3fa6548ecfbfa84415f.md) | 213 | `result-track:154cb3fa6548ecfbfa84415fa405e713700138822bc688d70750494c5691f28c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
