# Verification target: GRWTSK.Algebra.LinearAlgebra.Quadratic.Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40fcd297ecdfe347f54d9a9a0a47d2820827643e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40fcd297ecdfe347f54d9a9a0a47d2820827643e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.FiniteOrder` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.SignedMinorElimination` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficient](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/coefficient--6f29746b5e672546fa3c92a6.md) | 28 | `declaration-track:6f29746b5e672546fa3c92a6a5af3a793fa6887e53b40494303a5eeb8cc7fe58` |
| 2 | `def` | [band](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/band--1385636bd0688ecc2a04037a.md) | 32 | `declaration-track:1385636bd0688ecc2a04037ac7e9d73ae693bfa7910d0109ec9aaf69f7c20a42` |
| 3 | `theorem` | [entry_coefficient](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/entry-coefficient--019869bc1adf4acbb6f34bbb.md) | 36 | `result-track:019869bc1adf4acbb6f34bbb62663ef490edac201488fbb54fba1836287c94ce` |
| 4 | `theorem` | [band_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/band-of-lt--92fc71e36bf1baeee487b50c.md) | 42 | `result-track:92fc71e36bf1baeee487b50cac2068c2ce2cf092a2606ed4be732efde98e2496` |
| 5 | `theorem` | [band_of_gt](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/band-of-gt--eb278151e7b798f7685be2b0.md) | 49 | `result-track:eb278151e7b798f7685be2b0d7b7b1ae2e39818747ce1cdd4ebb21bd5def4920` |
| 6 | `def` | [continuant](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/continuant--f92482ee607eace2e67070a6.md) | 56 | `declaration-track:f92482ee607eace2e67070a69c03d7ff9f3a4bfa23b0ac30c24b1dfda5bd6360` |
| 7 | `def` | [tridiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/tridiagonal--fb3e0a822d88ede143811079.md) | 62 | `declaration-track:fb3e0a822d88ede1438110790e3294b3c431669f5cf83bd821b1a6d73085c8f0` |
| 8 | `theorem` | [band_consecutive](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/band-consecutive--1f281adcff6bf3f438181a2f.md) | 67 | `result-track:1f281adcff6bf3f438181a2f1e892c0bab0fa0117173b341d31cef75ce42a0ea` |
| 9 | `theorem` | [det_zero_first_column](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/det-zero-first-column--4eb9aac1af365ecb204015df.md) | 73 | `result-track:4eb9aac1af365ecb204015df2d37fea710dfd5858eb9885e939338111bc14c2f` |
| 10 | `theorem` | [det_zero_first_row](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/det-zero-first-row--916340412dca68ecc62ba239.md) | 83 | `result-track:916340412dca68ecc62ba23907a08c166853c63c15a7288896c0fba257a7743f` |
| 11 | `theorem` | [tridiagonal_tail](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/tridiagonal-tail--ddbac5e2443c260aa635158f.md) | 89 | `result-track:ddbac5e2443c260aa635158f2035a4c2816627210e3cd7a5841032623633f2bc` |
| 12 | `theorem` | [tridiagonal_second_cofactor](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/tridiagonal-second-cofactor--eb13d89922022f3de80576d0.md) | 95 | `result-track:eb13d89922022f3de80576d089a96bc5be88cae0e09ec9938decc20ff27695b8` |
| 13 | `theorem` | [det_tridiagonal_step](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/det-tridiagonal-step--706b8ed431899fe1f7825524.md) | 122 | `result-track:706b8ed431899fe1f7825524bc515e39bbdd309514323640dd0ab105fce1a125` |
| 14 | `theorem` | [det_tridiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/det-tridiagonal--d63575075e047f9119d6923e.md) | 144 | `result-track:d63575075e047f9119d6923efb73543d7fb933104f10c0e2388275fbca00a1c6` |
| 15 | `def` | [take](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/take--95e144482d0abd49fdb7f500.md) | 154 | `declaration-track:95e144482d0abd49fdb7f500af0e7169be61ba18487525ce649850ff0a685276` |
| 16 | `def` | [drop](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/drop--71435d2ec8200d194203e0f9.md) | 159 | `declaration-track:71435d2ec8200d194203e0f9e7676a2290773e9804d245743d64d81c8ce6eb35` |
| 17 | `def` | [splitEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/splitequiv--0eb0d78756fea3521ff13496.md) | 164 | `declaration-track:0eb0d78756fea3521ff134961991cbbc2e8725623de2d724ad2f60d4bd187cc6` |
| 18 | `theorem` | [det_split](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/det-split--a5ac5affe2f4030ac59bf8ae.md) | 184 | `result-track:a5ac5affe2f4030ac59bf8ae48a0977f864bb0e9a9686d1903370d84810089f9` |
| 19 | `theorem` | [selection_lower](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/selection-lower--240d5d427e07b26bb7448793.md) | 213 | `result-track:240d5d427e07b26bb74487933d58cab1b058aef65f8e3496c12d80e712efedc5` |
| 20 | `theorem` | [initial_run](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/initial-run--0542501cc8ace5666adb3c08.md) | 230 | `result-track:0542501cc8ace5666adb3c08e8d33831a299d3db1e6313ce4606acb24fef39f1` |
| 21 | `theorem` | [band_minor_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/band-minor-nonnegative--d7c4b4d73fea8fd0bdcc8d4c.md) | 268 | `result-track:d7c4b4d73fea8fd0bdcc8d4cf2859b80d976ad38cd396d05b928b6998853e544` |
| 22 | `theorem` | [pfOrder_of_continuants](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/pforder-of-continuants--52653d3b53e5af8d4c12ac1d.md) | 386 | `result-track:52653d3b53e5af8d4c12ac1d20fc119c69b793647b099ac24eaa67338e8310e0` |
| 23 | `theorem` | [continuant_zero_second](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/continuant-zero-second--bb159b4995732cce9cd9d402.md) | 395 | `result-track:bb159b4995732cce9cd9d40216bc04c5d5780c931b8597d3b5422ae05eb530b3` |
| 24 | `theorem` | [linear_pfInfinity](../../../../../mathematics/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/declarations/linear-pfinfinity--f4cdb422ef7d936de5432ac8.md) | 403 | `result-track:f4cdb422ef7d936de5432ac822f355041d803f0e00adce26966c43939326ff96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
