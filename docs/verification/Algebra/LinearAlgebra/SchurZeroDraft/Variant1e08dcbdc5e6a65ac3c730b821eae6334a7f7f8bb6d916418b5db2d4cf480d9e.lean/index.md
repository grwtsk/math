# Verification target: GRWTSK.Algebra.LinearAlgebra.SchurZeroDraft.Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c60391766a1de3af7e7fcf2182826acd8c2ae968",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c60391766a1de3af7e7fcf2182826acd8c2ae968`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachHermitian` — import line 6; external provider; requires a separately pinned dependency.
- `ZeroMultiplicity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shear](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/shear--5b9a46a71d9f25066aae724d.md) | 20 | `declaration-track:5b9a46a71d9f25066aae724db3df9409feb72dba2b493fa138db29837fb0ae97` |
| 2 | `theorem` | [shear_det](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/shear-det--27f3b5e6b79d46eef27b5483.md) | 23 | `result-track:27f3b5e6b79d46eef27b5483f977d851c61db923e70c9c6a219a2d5cd606bc0a` |
| 3 | `theorem` | [exact_congruence](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/exact-congruence--f5d6a0f32f3255928e19f853.md) | 27 | `result-track:f5d6a0f32f3255928e19f853a9a322bd4dad340aa45295df0c48612f51781323` |
| 4 | `theorem` | [full_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/full-ishermitian--d0435b70a19bcce44a8ce812.md) | 38 | `result-track:d0435b70a19bcce44a8ce812baf3d30e108db7e1df9ef55e034efe5bf79a0514` |
| 5 | `theorem` | [reduced_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/reduced-ishermitian--d85713de17f896535ff78893.md) | 43 | `result-track:d85713de17f896535ff78893020116843607b8c89a6a1e90face0cc02aa01095` |
| 6 | `theorem` | [zero_count_schur](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/zero-count-schur--60718428ad382f2b63191dc6.md) | 49 | `result-track:60718428ad382f2b63191dc6a9eb2675c68880159e3d1efa5c793d58881aa4b6` |
| 7 | `theorem` | [zero_count_schur_posDef](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/zero-count-schur-posdef--9a26078b300cf2dfdffe8f7d.md) | 59 | `result-track:9a26078b300cf2dfdffe8f7d35ec197728b382ae0169cb1672d9ba9c1e356cb4` |
| 8 | `theorem` | [zero_count_eq_finrank_kernel](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/zero-count-eq-finrank-kernel--f355d945a2fc960ecf7c0430.md) | 65 | `result-track:f355d945a2fc960ecf7c0430ae14c413ccf5eda4c295e4c787be9823f22cdb06` |
| 9 | `def` | [fullKernelCoordinates](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/fullkernelcoordinates--d723d5b413506ef7c0e6e1dc.md) | 76 | `declaration-track:d723d5b413506ef7c0e6e1dcc92617f5f3d834e6c523c446dcee2e09b551c23a` |
| 10 | `theorem` | [zero_count_schur_center](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/zero-count-schur-center--d6a6c11b660245183395941c.md) | 102 | `result-track:d6a6c11b660245183395941ccd2472abaa260362a116aad045e9547df3e7cd4f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/instance--99da1a169f9ef46250e4d68a.md) | 114 | `declaration-track:99da1a169f9ef46250e4d68abbfa0607640e0553882e9c836cbf0e94d42a818b` |
| 12 | `def` | [imaginaryCoupling](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/imaginarycoupling--d8b2bd670ce1cc3b7ac1a71b.md) | 117 | `declaration-track:d8b2bd670ce1cc3b7ac1a71bd8e0088e14a6e127612821cadea786b6aeb521ef` |
| 13 | `theorem` | [imaginary_schur_zero](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/imaginary-schur-zero--f5bac708b86e65f49e73fce5.md) | 119 | `result-track:f5bac708b86e65f49e73fce57992f2fdb19049fe6a35843897ff061e41a0565a` |
| 14 | `theorem` | [imaginary_reduced_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/imaginary-reduced-diagonal--5d37528bdfe8a4400805f3e1.md) | 126 | `result-track:5d37528bdfe8a4400805f3e17f078c3886eddac2c7b74e59c239579c31bcd55b` |
| 15 | `theorem` | [imaginary_fixture_zero_count](../../../../../mathematics/Algebra/LinearAlgebra/SchurZeroDraft/Variant1e08dcbdc5e6a65ac3c730b821eae6334a7f7f8bb6d916418b5db2d4cf480d9e.lean/declarations/imaginary-fixture-zero-count--34f816255375d8d2a6307e05.md) | 133 | `result-track:34f816255375d8d2a6307e05d3f09d9736d5d1812af3f6e6a7172ef2c58ef752` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
