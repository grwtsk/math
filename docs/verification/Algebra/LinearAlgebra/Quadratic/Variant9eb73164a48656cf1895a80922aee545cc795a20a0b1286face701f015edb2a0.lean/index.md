# Verification target: GRWTSK.Algebra.LinearAlgebra.Quadratic.Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7b71f7d822fccafd5eca181717f14ce8a4d4317",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7b71f7d822fccafd5eca181717f14ce8a4d4317`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.FiniteOrder` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.SignedMinorElimination` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficient](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/coefficient--f4a9de35e3eb924a4c79935b.md) | 20 | `declaration-track:f4a9de35e3eb924a4c79935bd6d2950e2d66aa84e87d4f902fb2332a649928b0` |
| 2 | `def` | [band](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/band--1529f1ea4be9de43c5994300.md) | 24 | `declaration-track:1529f1ea4be9de43c5994300d99e938003ae0fc7dab9ba368cee6326b0768c22` |
| 3 | `theorem` | [entry_coefficient](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/entry-coefficient--8278ba8670b4ca828fd73ceb.md) | 28 | `result-track:8278ba8670b4ca828fd73cebe449868709689f0f97542a1d35f2d2d727575e5f` |
| 4 | `theorem` | [band_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/band-of-lt--8701a539442c710699f07f61.md) | 34 | `result-track:8701a539442c710699f07f61a045fb4716a463feefb22f6b256d65f4e00bbad3` |
| 5 | `theorem` | [band_of_gt](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/band-of-gt--a22383e5596a9e52d1cc17bc.md) | 41 | `result-track:a22383e5596a9e52d1cc17bc2ea48843541be4ba6b1b00689d50b45fb74adef4` |
| 6 | `def` | [continuant](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/continuant--e570c50a59d8bf6a0483ae37.md) | 48 | `declaration-track:e570c50a59d8bf6a0483ae3780e3a46c48d25e7e9edb3effcbd3f2a56c64afa4` |
| 7 | `def` | [tridiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/tridiagonal--f8ce8c6f5150057eecb8db1e.md) | 54 | `declaration-track:f8ce8c6f5150057eecb8db1e2f9f924bc1e71239301597f8b15fb38fb0ea517b` |
| 8 | `theorem` | [band_consecutive](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/band-consecutive--092aedd270138e6a50486465.md) | 59 | `result-track:092aedd270138e6a50486465beed5245898732df8eb80ae26be82e41e0b57805` |
| 9 | `theorem` | [det_zero_first_column](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/det-zero-first-column--391fe327371c4bafaeef2cf7.md) | 65 | `result-track:391fe327371c4bafaeef2cf73da0e7a8b1ca2b722b2357fcae3add2391c20f26` |
| 10 | `theorem` | [det_zero_first_row](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/det-zero-first-row--d6b5634ddf36febd4ccd81b9.md) | 75 | `result-track:d6b5634ddf36febd4ccd81b944c9a8cf080f34f334e9b2dae5a431761080cb72` |
| 11 | `theorem` | [tridiagonal_tail](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/tridiagonal-tail--51ae9a5d439ad0f27eca4524.md) | 81 | `result-track:51ae9a5d439ad0f27eca45246daf095167f1d0508ed3232908f9a5faf96aec92` |
| 12 | `theorem` | [tridiagonal_second_cofactor](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/tridiagonal-second-cofactor--8ed000fa481dc5c830d3dd82.md) | 87 | `result-track:8ed000fa481dc5c830d3dd820af377518879be086c76b937f9d8bc7845b00b8d` |
| 13 | `theorem` | [det_tridiagonal_step](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/det-tridiagonal-step--5afdd339d21633ad4327515b.md) | 114 | `result-track:5afdd339d21633ad4327515b350fe90f925854b6e4d84f071b471ac07a10e1b9` |
| 14 | `theorem` | [det_tridiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/det-tridiagonal--e57ef46980497129bd284745.md) | 136 | `result-track:e57ef46980497129bd28474577b8b8c264a7241d5957faba89d436b65004c5e0` |
| 15 | `def` | [take](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/take--7488079193b026c346ae7d94.md) | 146 | `declaration-track:7488079193b026c346ae7d9452b002701eb939603dfd31501a7bd63751e4f701` |
| 16 | `def` | [drop](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/drop--ad66ce9c22aea301d1f2fe9a.md) | 151 | `declaration-track:ad66ce9c22aea301d1f2fe9afd9b8d551a692e2ae65e87036f732d501ce4acb4` |
| 17 | `def` | [splitEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/splitequiv--91fb1293a9892a704d7db614.md) | 156 | `declaration-track:91fb1293a9892a704d7db6149dbf2ab9c543971be0472723281e29dbe1fba2f7` |
| 18 | `theorem` | [det_split](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/det-split--e0ae11c90eeb5610403384e1.md) | 176 | `result-track:e0ae11c90eeb5610403384e1c1c272cdceec607b776a5ce8264df63a45f45140` |
| 19 | `theorem` | [selection_lower](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/selection-lower--ec40ad8dd0ab8b93c1378455.md) | 205 | `result-track:ec40ad8dd0ab8b93c1378455416a703570e50fa13942507b16d08b28521f69a5` |
| 20 | `theorem` | [initial_run](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/initial-run--cfeb14dd742a11fe654ef23d.md) | 222 | `result-track:cfeb14dd742a11fe654ef23d73897b0d36e513956ab6a76bf65d85bd88b7c5a1` |
| 21 | `theorem` | [band_minor_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/band-minor-nonnegative--b5f91300b491b255ada73412.md) | 260 | `result-track:b5f91300b491b255ada734128c1f216d14e576306367782914e96649c109a579` |
| 22 | `theorem` | [pfOrder_of_continuants](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/pforder-of-continuants--d8bb3734ac089e7cc6e8efaa.md) | 378 | `result-track:d8bb3734ac089e7cc6e8efaaaab4766ee036bedb5421037fc12407d7b477aea7` |
| 23 | `theorem` | [continuant_zero_second](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/continuant-zero-second--543844fa7f3ea0f5e8cdd897.md) | 387 | `result-track:543844fa7f3ea0f5e8cdd8973e1e48780088c219250856f919d0abe6cce2b08b` |
| 24 | `theorem` | [linear_pfInfinity](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean/declarations/linear-pfinfinity--524aa8b49b967fdada144a6f.md) | 395 | `result-track:524aa8b49b967fdada144a6fce95b3a8b3bb13a5c8ddc0901973001fe2c8c45d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
