# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f74634e3742f157e69e4a08645fd15fde811ceb",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f74634e3742f157e69e4a08645fd15fde811ceb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Opposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofBaseChangeAux](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/ofbasechangeaux--9fea8efcd00eefebf04ef9aa.md) | 54 | `declaration-track:9fea8efcd00eefebf04ef9aaeebbfbdba24510db535912ed3b106e0ae6c7ce8a` |
| 2 | `theorem` | [ofBaseChangeAux_ι](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/ofbasechangeaux--7f3a074a9e2cf83b5ed94f43.md) | 62 | `result-track:7f3a074a9e2cf83b5ed94f43e02d737856338741364699e470f0d6d67b5116f0` |
| 3 | `def` | [ofBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/ofbasechange--bcd60845f4ee94f4fedea61e.md) | 69 | `declaration-track:bcd60845f4ee94f4fedea61ef55bff58f286f1aa0333292b9f83417f1231b18f` |
| 4 | `theorem` | [ofBaseChange_tmul_ι](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/ofbasechange-tmul--36b229e40d98b433b9b458b5.md) | 74 | `result-track:36b229e40d98b433b9b458b5d96fef7671ddc363a1a27071f44a9a07ee2dcb13` |
| 5 | `theorem` | [ofBaseChange_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/ofbasechange-tmul-one--38521999fa11d53416f8372d.md) | 80 | `result-track:38521999fa11d53416f8372da242b875cea6b058001e5a30ae35cd41e780f1fd` |
| 6 | `def` | [toBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/tobasechange--835ba71be1e0179c4dc78f30.md) | 88 | `declaration-track:835ba71be1e0179c4dc78f3094cd11846217e7ef4a2c5f60e2d0cfe82321f1cf` |
| 7 | `theorem` | [toBaseChange_ι](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/tobasechange--e2de6f37109ef835021255cf.md) | 109 | `result-track:e2de6f37109ef835021255cf1a0e0fd65e884c7b11ec4d968aae88f1e69b1992` |
| 8 | `theorem` | [toBaseChange_comp_involute](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/tobasechange-comp-involute--f830619bb9ecdeefffea8045.md) | 113 | `result-track:f830619bb9ecdeefffea80452bb2b1c0398bc0672437032989ce4a1ff8111feb` |
| 9 | `theorem` | [toBaseChange_involute](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/tobasechange-involute--b0a682c0be3924a953015eeb.md) | 125 | `result-track:b0a682c0be3924a953015eeb727903d7694d8ede0112234f849d6d9d015fe610` |
| 10 | `theorem` | [toBaseChange_comp_reverseOp](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/tobasechange-comp-reverseop--e7928310ed9f91418ba4e2a9.md) | 133 | `result-track:e7928310ed9f91418ba4e2a9f37772c2a2984d40fbb23f7348eda41598eaf0f1` |
| 11 | `theorem` | [toBaseChange_reverse](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/tobasechange-reverse--b7b52ea6105ad4fd0e6ae06c.md) | 149 | `result-track:b7b52ea6105ad4fd0e6ae06ca99f7f32fc260377ac58020e530fe6d2d870c5cf` |
| 12 | `theorem` | [toBaseChange_comp_ofBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/tobasechange-comp-ofbasechange--2fb14b863342dfe9b9fe0c7f.md) | 164 | `result-track:2fb14b863342dfe9b9fe0c7f1b10d3d942a130629a9c4e197736392350cfc8f2` |
| 13 | `theorem` | [toBaseChange_ofBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/tobasechange-ofbasechange--f738e9eec54cccfd7259ccf8.md) | 169 | `result-track:f738e9eec54cccfd7259ccf8fc1ad342c7d99bd850cda868daa8957101d5a877` |
| 14 | `theorem` | [ofBaseChange_comp_toBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/ofbasechange-comp-tobasechange--91084cea7f6c2a5428709cb0.md) | 173 | `result-track:91084cea7f6c2a5428709cb0099db0d3191551f42d220dad65cd6ac370902027` |
| 15 | `theorem` | [ofBaseChange_toBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/ofbasechange-tobasechange--526b3b050d6e6a653553809a.md) | 180 | `result-track:526b3b050d6e6a653553809a8253feb09d9580d2d1100354aaddf5042ffa3da7` |
| 16 | `def` | [equivBaseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/declarations/equivbasechange--6cb5af3f473ec1db33e36a5a.md) | 191 | `declaration-track:6cb5af3f473ec1db33e36a5a1e93e2d50efd3e9e40ccc3f91a31f0d926fc5014` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
