# Verification target: GRWTSK.Algebra.UniversalAlgebra.ZeroLEOne.Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2a156a0295e36335fee74059ff7ffdf41e594ed",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2a156a0295e36335fee74059ff7ffdf41e594ed`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean.json)

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
| 1 | `class` | [ZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/zeroleoneclass--afa2e2cea0328130a3a37b2c.md) | 29 | `declaration-track:afa2e2cea0328130a3a37b2c823eabcf0e83ee695885d046a78ad8b9e363c50d` |
| 2 | `lemma` | [zero_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/zero-le-one--b34a23a9557a5304d69fd546.md) | 34 | `result-track:b34a23a9557a5304d69fd546ea20a00dfdb85003c857df53ffd9feec82647225` |
| 3 | `instance` | [ZeroLEOneClass.factZeroLeOne](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/zeroleoneclass-factzeroleone--db4fe73a7c2f77e18c9b54b8.md) | 37 | `declaration-track:db4fe73a7c2f77e18c9b54b84d817f3e304ca8874448080912fa8377613b16ea` |
| 4 | `lemma` | [zero_le_one'](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/zero-le-one--ca2c06122f15910a257903e0.md) | 42 | `result-track:ca2c06122f15910a257903e0d6bba2fe64d6f5f138bafc48a1979f3f85e3232e` |
| 5 | `instance` | [Prod.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/prod-instzeroleoneclass--35a6d25554a79b25e18e7a33.md) | 45 | `declaration-track:35a6d25554a79b25e18e7a334291d0c23ddbb64ed8adda882d7955e51b7d0ffb` |
| 6 | `instance` | [Pi.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/pi-instzeroleoneclass--62933d47c035f0e9388aaab8.md) | 49 | `declaration-track:62933d47c035f0e9388aaab8cdfb4e5944b7a1d7a59b497c3c3d8cf64e5e54cf` |
| 7 | `lemma` | [zero_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/zero-lt-one--d2a5c38ee4fdc462457c9b55.md) | 57 | `result-track:d2a5c38ee4fdc462457c9b55e6b5e10fce3d5330981e1c3f81493aec0b1dd45d` |
| 8 | `instance` | [ZeroLEOneClass.factZeroLtOne](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/zeroleoneclass-factzeroltone--3b90fcf5b63e93203c9d6d0f.md) | 59 | `declaration-track:3b90fcf5b63e93203c9d6d0f97094e2e5b6b6eb5e5aff44fff6b1d3136c722a5` |
| 9 | `lemma` | [zero_lt_one'](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/zero-lt-one--99646af777b62207b54ea1bc.md) | 65 | `result-track:99646af777b62207b54ea1bcd932f64c1f007d2cccc6f95e3b3c0f4e28924830` |
| 10 | `instance` | [Nat.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/nat-instzeroleoneclass--9ac47f5b834bd756ab8858bb.md) | 71 | `declaration-track:9ac47f5b834bd756ab8858bb75d96c34f246577ec845961fa2a57e2f54693558` |
| 11 | `instance` | [Int.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/int-instzeroleoneclass--ac8c7e9f1ee88a1ba1c86a71.md) | 72 | `declaration-track:ac8c7e9f1ee88a1ba1c86a71587a3d3f8291846831c1c412d1c3e784067bfebf` |
| 12 | `instance` | [Rat.instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/ZeroLEOne/Variant11f19b517ffaf74d4e1169ae677e4d1f341d9ab65a8ec70cac2e1ea2956fa377.lean/declarations/rat-instzeroleoneclass--4e1ea3c7768deafb93bbcd2d.md) | 73 | `declaration-track:4e1ea3c7768deafb93bbcd2df6d85eac5b8eb83b8078f760948274cb3353c7cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
