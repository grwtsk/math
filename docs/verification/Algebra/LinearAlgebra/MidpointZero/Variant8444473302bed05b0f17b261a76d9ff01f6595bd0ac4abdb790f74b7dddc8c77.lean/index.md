# Verification target: GRWTSK.Algebra.LinearAlgebra.MidpointZero.Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5a902f790d80a640bd9e2b51e69bad05ebc68a7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5a902f790d80a640bd9e2b51e69bad05ebc68a7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Midpoint` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lineMap_inv_two](../../../../../mathematics/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean/declarations/linemap-inv-two--6a4450ff6ed7d7f6dc67ce74.md) | 30 | `result-track:6a4450ff6ed7d7f6dc67ce74e532e4166681aa799be7ef140df5d2f75c311e48` |
| 2 | `theorem` | [lineMap_one_half](../../../../../mathematics/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean/declarations/linemap-one-half--289664414d1bc21ce77280a8.md) | 34 | `result-track:289664414d1bc21ce77280a87a5799e51b1d6ac906c36e40b0ec6c4385ba6840` |
| 3 | `theorem` | [homothety_invOf_two](../../../../../mathematics/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean/declarations/homothety-invof-two--80995030383a11c07f627fe2.md) | 38 | `result-track:80995030383a11c07f627fe238f4bea6e9fc2af5d33d13327cfe31a192790c55` |
| 4 | `theorem` | [homothety_inv_two](../../../../../mathematics/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean/declarations/homothety-inv-two--2e42d8e06646c5b1be678830.md) | 43 | `result-track:2e42d8e06646c5b1be6788308aaa4011ee2ec72b26bf691a6eef1c959af8ceea` |
| 5 | `theorem` | [homothety_one_half](../../../../../mathematics/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean/declarations/homothety-one-half--3eee35ccb27acf4103f67ece.md) | 47 | `result-track:3eee35ccb27acf4103f67ece0df216b7241ed7db9e59fc3afba199592b207c48` |
| 6 | `theorem` | [pi_midpoint_apply](../../../../../mathematics/Algebra/LinearAlgebra/MidpointZero/Variant8444473302bed05b0f17b261a76d9ff01f6595bd0ac4abdb790f74b7dddc8c77.lean/declarations/pi-midpoint-apply--40675c85268bcf659c6acad9.md) | 52 | `result-track:40675c85268bcf659c6acad93a49e3772de0622cf78adbb7f2e343d92d8140e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
