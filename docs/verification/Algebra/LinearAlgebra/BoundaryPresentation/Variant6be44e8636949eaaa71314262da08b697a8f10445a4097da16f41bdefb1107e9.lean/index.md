# Verification target: GRWTSK.Algebra.LinearAlgebra.BoundaryPresentation.Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb855d2c9a209188978f2477260da99b022423bc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb855d2c9a209188978f2477260da99b022423bc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [C2](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/c2--d65f53b4aea56637e74a62d9.md) | 30 | `declaration-track:d65f53b4aea56637e74a62d964f1ca8608095d6bf297ae18d53b1d0180667a6d` |
| 2 | `abbrev` | [C1](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/c1--c6a84b11328f6ff5cb8d263b.md) | 33 | `declaration-track:c6a84b11328f6ff5cb8d263b14a8f5b20f9c94272f031035c2cdf1844acff5cf` |
| 3 | `def` | [boundary2](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/boundary2--97317eeb6841948fee8b3487.md) | 36 | `declaration-track:97317eeb6841948fee8b3487e5cf2a58edb14a908d5579d1db5de3b3936fd951` |
| 4 | `def` | [relations](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/relations--4a65dd212afaf9c9318316fc.md) | 44 | `declaration-track:4a65dd212afaf9c9318316fcb096ec909ed185185e74584f616adcb07641049e` |
| 5 | `abbrev` | [H1](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/h1--7ccf0d1d0273aab6bfd3933c.md) | 49 | `declaration-track:7ccf0d1d0273aab6bfd3933c9c409cf7ac515d753e51afbee7c5d4035e73fc50` |
| 6 | `theorem` | [boundary2_class_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/boundary2-class-eq-zero--7f338b07ed9c827f61a0f440.md) | 52 | `result-track:7f338b07ed9c827f61a0f440d667902372a9c8fa70c74b547357f8c0e05040b8` |
| 7 | `def` | [outerChain](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/outerchain--0d9f59dcc98b897c8ed4a0d4.md) | 60 | `declaration-track:0d9f59dcc98b897c8ed4a0d4170ae5c4c45408877355113ad04b0f2a9db53fbd` |
| 8 | `def` | [innerChain](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/innerchain--469877b651e301a7108c3ba3.md) | 65 | `declaration-track:469877b651e301a7108c3ba3beaa0a14c49bc2f0aed5410f7793475ddcc069e5` |
| 9 | `def` | [outerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/outerclass--a06d5926aa3767869d3a3eac.md) | 68 | `declaration-track:a06d5926aa3767869d3a3eace4d0b38d4a7590d5d803a77eb8d5265d6a02f976` |
| 10 | `def` | [innerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/innerclass--ad8d8d818a105973918caa89.md) | 71 | `declaration-track:ad8d8d818a105973918caa89fe30f113dcf602e0faa51b105dc8f92fef47f915` |
| 11 | `theorem` | [outerClass_eq_innerClass](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/outerclass-eq-innerclass--0a93993a9160bfb2f9fed8a9.md) | 75 | `result-track:0a93993a9160bfb2f9fed8a9b8282fc84d462247456ce41baff9e00fa20eda26` |
| 12 | `def` | [total](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/total--ed4d68eec240c09737bd133b.md) | 82 | `declaration-track:ed4d68eec240c09737bd133b1382469e19d90c3fbba4d053d1389a7fea42ced3` |
| 13 | `theorem` | [relations_eq_total_ker](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/relations-eq-total-ker--e42f6831a672d7294a127f04.md) | 91 | `result-track:e42f6831a672d7294a127f04d3a1e2dc0c16dd5d4e8d129a994a5894dace91ae` |
| 14 | `theorem` | [total_surjective](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/total-surjective--27dd878a7e813ffc5451d40c.md) | 105 | `result-track:27dd878a7e813ffc5451d40c537d9a6f25bca0334dfd641c698d5857afaba40e` |
| 15 | `def` | [H1EquivInt](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/h1equivint--bd5f8c9249a2f901c2baf373.md) | 112 | `declaration-track:bd5f8c9249a2f901c2baf373ec94570c4740259e57e59263f5b33a71c30b2397` |
| 16 | `theorem` | [h1_free](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/h1-free--7fb07763931e0d51556caaf4.md) | 121 | `result-track:7fb07763931e0d51556caaf476d922ed530470607ad6f97fcccad495d143e594` |
| 17 | `theorem` | [h1_isAddTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/declarations/h1-isaddtorsionfree--994d9fe83306bbb9f1bf99a0.md) | 125 | `result-track:994d9fe83306bbb9f1bf99a0eabaa2c9404151a9ad15e635406103c846368f9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
