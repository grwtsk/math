# Verification target: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "069f91454814ce07405c4eabaeeafd0a8a007d3f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `069f91454814ce07405c4eabaeeafd0a8a007d3f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Matrix.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean/declarations/map--e60f158ea5adb1768dc2bdca.md) | 11 | `declaration-track:e60f158ea5adb1768dc2bdca78216abc3ceafae4347b71d25b04e426300835e5` |
| 2 | `theorem` | [map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean/declarations/map-apply--51353c6633f04bf4faa41282.md) | 18 | `result-track:51353c6633f04bf4faa412829aca0ffb6a07c4d8c3e7df06ecb299076fdb0b23` |
| 3 | `def` | [zipWith](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean/declarations/zipwith--1622cae9e32541814e02b8f3.md) | 27 | `declaration-track:1622cae9e32541814e02b8f31ea80154631c23ecab96c286536c387ca91a0f49` |
| 4 | `theorem` | [zipWith_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean/declarations/zipwith-apply--c17995299eb7c4c39eb63c63.md) | 35 | `result-track:c17995299eb7c4c39eb63c630a6cd6438e084eeedc16195092c5eda2860216f9` |
| 5 | `def` | [not](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean/declarations/not--77de3d125778a1abfd4cb3be.md) | 44 | `declaration-track:77de3d125778a1abfd4cb3be84a8b8d6b47c5aade7961d187cb41aa72ee2ce95` |
| 6 | `def` | [xor](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba.lean/declarations/xor--b27fd13dd8e05b65e54b529b.md) | 48 | `declaration-track:b27fd13dd8e05b65e54b529bf4643745f13bdb116b6d2112bd766e534b3b47a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
