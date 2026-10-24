# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FrobeniusFractionField.Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3137d86a23b33bc309ff646b9c9ffab6f85e6973",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3137d86a23b33bc309ff646b9c9ffab6f85e6973`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean.json)

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
| 1 | `def` | [succNthDefiningPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/succnthdefiningpoly--e896d12bc4cfab4b31eaf879.md) | 80 | `declaration-track:e896d12bc4cfab4b31eaf879e2a37e940552fbcbeca156ef6ae40f84092874ea` |
| 2 | `theorem` | [succNthDefiningPoly_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/succnthdefiningpoly-degree--86033de42ad1f2633b1032b7.md) | 88 | `result-track:86033de42ad1f2633b1032b700ad7ac0f4963d9b8045b84cd216e508f424b22f` |
| 3 | `theorem` | [root_exists](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/root-exists--eb6a28cc8ff134cbedae9d4d.md) | 112 | `result-track:eb6a28cc8ff134cbedae9d4d2c3c7870541031fc36baef3c1430ec123c2a1a77` |
| 4 | `def` | [succNthVal](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/succnthval--db31edd5869c8c23645ca5dd.md) | 119 | `declaration-track:db31edd5869c8c23645ca5dd7bc2bbfd960177fc295721026efe861dc2a7a77c` |
| 5 | `theorem` | [succNthVal_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/succnthval-spec--5030c450e7ec7889fc94fb82.md) | 123 | `result-track:5030c450e7ec7889fc94fb82dc5b6defd6572165c54299226cde376c594e9401` |
| 6 | `theorem` | [succNthVal_spec'](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/succnthval-spec--4ab5b9b0911fe88be4ee4f3a.md) | 128 | `result-track:4ab5b9b0911fe88be4ee4f3aa4b41d8b593eccbeea15f67d6768fc139fb7602b` |
| 7 | `theorem` | [solution_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/solution-pow--ab72a7fdf88c55f5f5553a00.md) | 153 | `result-track:ab72a7fdf88c55f5f5553a0009cf3e0db0ecd39cc39419872c1dd1e818c702bb` |
| 8 | `def` | [solution](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/solution--ab5662a9f335188a2e84eef4.md) | 157 | `declaration-track:ab5662a9f335188a2e84eef486e742bd69f1048877a159044fc8b5d74dfd8d49` |
| 9 | `theorem` | [solution_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/solution-spec--b0312824a26a15d82b85a78f.md) | 160 | `result-track:b0312824a26a15d82b85a78f24f8aa2badf53bca26d985cc795a5d60f6f5bd14` |
| 10 | `theorem` | [solution_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/solution-nonzero--d6edfff48f5f45bbd74e0e66.md) | 163 | `result-track:d6edfff48f5f45bbd74e0e6640b2fa8d0b6a5cb5b1876a0a9ade05f959475f09` |
| 11 | `theorem` | [solution_spec'](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/solution-spec--47061fea86fd77a9bd2d6b76.md) | 171 | `result-track:47061fea86fd77a9bd2d6b7672f08c7882c381a39bbe496e5c6a33aab3da9f0e` |
| 12 | `def` | [frobeniusRotationCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/frobeniusrotationcoeff--27266dca414f76476865093c.md) | 188 | `declaration-track:27266dca414f76476865093cbaa150f8c7fedadac34a014b73ad140c87418220` |
| 13 | `def` | [frobeniusRotation](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/frobeniusrotation--ffa3a5f7f20ee21ecdc8649f.md) | 196 | `declaration-track:ffa3a5f7f20ee21ecdc8649f0ae9d47341cc2e8040cd056cb3c42e54532ae784` |
| 14 | `theorem` | [frobeniusRotation_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/frobeniusrotation-nonzero--1a643ffb17d0da3c94eba3a9.md) | 199 | `result-track:1a643ffb17d0da3c94eba3a940073f9e1743c989cffc9531ca22fa3464d63856` |
| 15 | `theorem` | [frobenius_frobeniusRotation](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/frobenius-frobeniusrotation--69a535d84c06adc84ca56da9.md) | 206 | `result-track:69a535d84c06adc84ca56da99ccace91e1ce7198e00dea565fc26ca6a7dcedac` |
| 16 | `theorem` | [exists_frobenius_solution_fractionRing_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/exists-frobenius-solution-fractionring-aux--9ca0409ad7fcf21038440976.md) | 227 | `result-track:9ca0409ad7fcf210384409763573c41d92c82183d157d6deaed6eb917f7778b1` |
| 17 | `theorem` | [exists_frobenius_solution_fractionRing](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant45efc517f2a2a1028fd212ed8ac05719d9c7c58ec3e3aa9607563c5287e34c75.lean/declarations/exists-frobenius-solution-fractionring--b4e46874f587cd0203fcfb14.md) | 248 | `result-track:b4e46874f587cd0203fcfb1427566ee47b9debc6d84cae59108d769415b95fbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
