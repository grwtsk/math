# Verification target: GRWTSK.Algebra.UniversalAlgebra.Primorial.Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02f07851a15bff8eaa3089c708b5615a4b36711a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02f07851a15bff8eaa3089c708b5615a4b36711a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Dvd` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean/declarations/primorial--6f81d49ce07f7b71d0b3b23c.md) | 32 | `declaration-track:6f81d49ce07f7b71d0b3b23cb013337d849147eda064682ca604b3d80782a379` |
| 2 | `theorem` | [primorial_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean/declarations/primorial-pos--4d5e49f5af0fb963a0ec9819.md) | 36 | `result-track:4d5e49f5af0fb963a0ec9819df66423fe522533ddff9ec4dfa01c79a0c3405c1` |
| 3 | `theorem` | [primorial_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean/declarations/primorial-succ--b5a9e47dcd7da833a8bf78e2.md) | 39 | `result-track:b5a9e47dcd7da833a8bf78e287209a724fc2148923ea20cd19629c37d6fd57c1` |
| 4 | `theorem` | [primorial_add](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean/declarations/primorial-add--e537cb7d4cbce572e155dc28.md) | 44 | `result-track:e537cb7d4cbce572e155dc288d33d07f1e0ce5bd1fed64b9d22df4b4c9e54e7a` |
| 5 | `theorem` | [primorial_add_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean/declarations/primorial-add-dvd--7ecf1bbc166aa015d1f6e487.md) | 50 | `result-track:7ecf1bbc166aa015d1f6e487e396fa3a4f567359d57ebd9598f2d35d0bce07cd` |
| 6 | `theorem` | [primorial_add_le](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean/declarations/primorial-add-le--506aeae3219731b4f127c443.md) | 60 | `result-track:506aeae3219731b4f127c443133504a836c2eea15bcc44c7c37f08d3293d05e6` |
| 7 | `theorem` | [primorial_le_4_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589.lean/declarations/primorial-le-4-pow--7f9d19b0338af2cb48375f05.md) | 63 | `result-track:7f9d19b0338af2cb48375f052b43bdf24d3147c3c74cb360269c72e1f33d14a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
