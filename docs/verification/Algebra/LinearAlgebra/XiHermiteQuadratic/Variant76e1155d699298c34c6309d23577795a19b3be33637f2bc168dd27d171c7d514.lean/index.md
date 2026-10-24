# Verification target: GRWTSK.Algebra.LinearAlgebra.XiHermiteQuadratic.Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ca3cbd13799d72ce12387691670eb5333bf018b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ca3cbd13799d72ce12387691670eb5333bf018b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [companion](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/companion--7b8b958bc7a2b1419eb72a41.md) | 19 | `declaration-track:7b8b958bc7a2b1419eb72a4166938c1cadba61254fdd7bf7c1380a98bab8117d` |
| 2 | `def` | [hermiteMatrix](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/hermitematrix--d0936051964e92d628492ac8.md) | 22 | `declaration-track:d0936051964e92d628492ac81995e21a13fd8bb69688a36b304aaaecfeb395e3` |
| 3 | `theorem` | [companion_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/companion-charpoly--542f778c016d2771c0419119.md) | 26 | `result-track:542f778c016d2771c04191191449817ee1044dd47dea83cadabc688829e31742` |
| 4 | `theorem` | [hermiteMatrix_eq](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/hermitematrix-eq--517420be15bd8cd5b65513de.md) | 32 | `result-track:517420be15bd8cd5b65513dea1e8952113f5fe9b2815217c153e35f6e662cf2f` |
| 5 | `theorem` | [hermiteMatrix_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/hermitematrix-ishermitian--9432ac83295aac81272154ec.md) | 41 | `result-track:9432ac83295aac81272154ec5142f1a078ad4e199be6d1e9bb8e6cbbd07e50fc` |
| 6 | `theorem` | [hermite_square](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/hermite-square--65c83a0181741bc087245127.md) | 47 | `result-track:65c83a0181741bc087245127701fe3d852da316d43a6f767ad169e1f8e568d00` |
| 7 | `theorem` | [hermite_square_nonneg_iff](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/hermite-square-nonneg-iff--f1f8df0896e604c282af2b16.md) | 55 | `result-track:f1f8df0896e604c282af2b16852d63ff21b5fa7ebc034ee15538541075221e04` |
| 8 | `theorem` | [hermiteMatrix_posSemidef_iff](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/hermitematrix-possemidef-iff--e4c394c295ceecd63ac1c683.md) | 69 | `result-track:e4c394c295ceecd63ac1c6835bf2f15e581ac1453f47d4b6e23d1150a54b5954` |
| 9 | `theorem` | [quadratic_root_real_of_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/quadratic-root-real-of-nonneg--c9cb73ef303b33c832a95302.md) | 76 | `result-track:c9cb73ef303b33c832a95302774f6503ca3fbce9586d01717dd3cfdc1a5bd83e` |
| 10 | `theorem` | [quadratic_nonreal_root_of_neg](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/quadratic-nonreal-root-of-neg--3efae70a373c2a6f6bb673fc.md) | 93 | `result-track:3efae70a373c2a6f6bb673fc3c3bc344a20080d9ee30d654dec83f78891bff18` |
| 11 | `theorem` | [hermiteMatrix_posSemidef_iff_real_roots](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/hermitematrix-possemidef-iff-real-roots--d20552d92b5dae3f6f765f05.md) | 111 | `result-track:d20552d92b5dae3f6f765f05b41ebe92f01ac660b73536f3408920d95073dfc0` |
| 12 | `theorem` | [imaginary_pair_hermite](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/imaginary-pair-hermite--0803ab4e33a2a369b0651ed0.md) | 123 | `result-track:0803ab4e33a2a369b0651ed00d553f3e61f943f29c07065e2ec106df4c1154ab` |
| 13 | `theorem` | [imaginary_pair_not_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/imaginary-pair-not-possemidef--552dbd86cf5f025637383960.md) | 127 | `result-track:552dbd86cf5f025637383960999f23b3a1937aace45f2b9d9f5c5df58e84feb7` |
| 14 | `theorem` | [double_one_hermite](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/double-one-hermite--0a40eb3b61bb857084a1b73a.md) | 132 | `result-track:0a40eb3b61bb857084a1b73a9c04b965662a1b3b1d686abb139bff54239de8e1` |
| 15 | `theorem` | [double_one_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/double-one-possemidef--953c131e1320f8a69bd7be69.md) | 136 | `result-track:953c131e1320f8a69bd7be6998a0c78fb930e10c0a17af18358200872c52e807` |
| 16 | `theorem` | [double_one_hermite_det](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/double-one-hermite-det--89f089a6a18c12c0b6e53ae4.md) | 141 | `result-track:89f089a6a18c12c0b6e53ae43841e6b3345bec030d500b1d1f125c498f8019c3` |
| 17 | `theorem` | [double_one_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/double-one-charpoly--170269c1e268f70d9d56a958.md) | 146 | `result-track:170269c1e268f70d9d56a9587f8195a3b7d2a25b9a01298ba1f5b0e76abdb650` |
| 18 | `theorem` | [double_one_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/double-one-nilpotent--6497a7d6dead744a088dfeca.md) | 152 | `result-track:6497a7d6dead744a088dfeca149c66d5d5ec76af8ab5fcf021eb8f5ee9208722` |
| 19 | `theorem` | [double_one_nilpotent_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/XiHermiteQuadratic/Variant76e1155d699298c34c6309d23577795a19b3be33637f2bc168dd27d171c7d514.lean/declarations/double-one-nilpotent-ne-zero--9031bdee9673c3e3c4a771b4.md) | 158 | `result-track:9031bdee9673c3e3c4a771b4a26072b257c2bf3d1aac3d4f6ad7a9d54dbea650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
