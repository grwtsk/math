# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Comap.Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "057371cda1d1c11bd275c8e49279351d77034bb1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `057371cda1d1c11bd275c8e49279351d77034bb1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Rename` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comap](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comap--00724a6f707546692bdec8fc.md) | 35 | `declaration-track:00724a6f707546692bdec8fca73be7c42a9aec1befed390afdacf36a1646be1d` |
| 2 | `theorem` | [comap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comap-apply--b1334de95dd818bdd2976e1a.md) | 39 | `result-track:b1334de95dd818bdd2976e1adc946b90e121868f26863f25a39201806100201c` |
| 3 | `theorem` | [comap_id_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comap-id-apply--ca4a78db51e22d2a6ed846d8.md) | 44 | `result-track:ca4a78db51e22d2a6ed846d8c8320609ca47d0d0f8e7170f3425832a1ee291fb` |
| 4 | `theorem` | [comap_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comap-id--328531748d460e76ba5326dc.md) | 50 | `result-track:328531748d460e76ba5326dc95eae5c41372962cd79c31e054766363f808b1d1` |
| 5 | `theorem` | [comap_comp_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comap-comp-apply--64b708da995185169545c71d.md) | 56 | `result-track:64b708da995185169545c71d20d3188fc5c9c2cf973bbcc5f0b46875078183ab` |
| 6 | `theorem` | [comap_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comap-comp--f6729063dfaef285d3d14f1b.md) | 70 | `result-track:f6729063dfaef285d3d14f1b8d8e0ba64bbc08787c758dc035105a8d00d0fe23` |
| 7 | `theorem` | [comap_eq_id_of_eq_id](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comap-eq-id-of-eq-id--ab91bc5ab9f5ecf05ba6e8ba.md) | 75 | `result-track:ab91bc5ab9f5ecf05ba6e8ba3d9297856f3886482322c95a368a2f77b074ffc6` |
| 8 | `theorem` | [comap_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comap-rename--61f98f37a41a650a6c2262cc.md) | 81 | `result-track:61f98f37a41a650a6c2262cce990418d54d95a2dc5c6dcd4a4b714ac81ae1f61` |
| 9 | `def` | [comapEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comapequiv--d0253e652308de9a584c6b0e.md) | 88 | `declaration-track:d0253e652308de9a584c6b0ef63cab56c2600ab6b1dd42adda0767f9e6f75482` |
| 10 | `theorem` | [comapEquiv_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comapequiv-coe--fcc71d4b3a27fbc0618ec8a2.md) | 105 | `result-track:fcc71d4b3a27fbc0618ec8a2142b9b69b81944bf6cbae1d40d29d89bcb331a05` |
| 11 | `theorem` | [comapEquiv_symm_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Comap/Variant0af59a09adca7e25ed4034504ee15df2bd8ca730e0de6815d3cce50c84f54223.lean/declarations/comapequiv-symm-coe--95f8cdc3ebfb646232fb2211.md) | 110 | `result-track:95f8cdc3ebfb646232fb2211c4c8b8971de15d814c86410b481379355cec0dcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
