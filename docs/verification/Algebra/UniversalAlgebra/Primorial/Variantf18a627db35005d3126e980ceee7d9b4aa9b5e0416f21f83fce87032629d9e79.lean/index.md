# Verification target: GRWTSK.Algebra.UniversalAlgebra.Primorial.Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bfc07db4e12ad867c53121a791282438a2e332d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bfc07db4e12ad867c53121a791282438a2e332d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Dvd` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean/declarations/primorial--68ed032ee91997b48217d5b3.md) | 40 | `declaration-track:68ed032ee91997b48217d5b3b11f228513bfba881f56081248f8f370ed792a5c` |
| 2 | `theorem` | [primorial_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean/declarations/primorial-pos--ac9f4d93040939a89b0a38c2.md) | 44 | `result-track:ac9f4d93040939a89b0a38c2d0a0a0a630ea8a84212cb4f4132d499ad9c01d10` |
| 3 | `theorem` | [primorial_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean/declarations/primorial-succ--dbb76ad8861684544c9571d1.md) | 47 | `result-track:dbb76ad8861684544c9571d16b65e8fc61c4dd0d3f4f3598c59cb1e246345ab3` |
| 4 | `theorem` | [primorial_add](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean/declarations/primorial-add--e5fd9c6c36fbe48e71b3e049.md) | 52 | `result-track:e5fd9c6c36fbe48e71b3e04907f3b5fb7de6b0b00e051adebc1555c2e79a3473` |
| 5 | `theorem` | [primorial_add_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean/declarations/primorial-add-dvd--f35e5b8827aba5bbc0b47e07.md) | 58 | `result-track:f35e5b8827aba5bbc0b47e075bb612b201483329b814d8e7646fb3183ee25683` |
| 6 | `theorem` | [primorial_add_le](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean/declarations/primorial-add-le--88bfaf48534c9f3e5fae0a10.md) | 68 | `result-track:88bfaf48534c9f3e5fae0a108697a80b77fe02f94c9d8e2ada932a40ed97909c` |
| 7 | `theorem` | [primorial_le_4_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79.lean/declarations/primorial-le-4-pow--f049854440739e8c18b0f72f.md) | 71 | `result-track:f049854440739e8c18b0f72fbbcd465184544a6167827ccdd2c894bdda4c7575` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
