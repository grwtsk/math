# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b5e39db26d3b76ff8b6d495df416a1b083b1189",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b5e39db26d3b76ff8b6d495df416a1b083b1189`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Algebra.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/declarations/le-elim--2661ecdb9bc856e27f83051f.md) | 25 | `result-track:2661ecdb9bc856e27f83051fe32e27379bc80a1a657d59b952b35c076a8860d6` |
| 2 | `theorem` | [lt.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/declarations/lt-elim--045e3563e7aa02eacbe2b440.md) | 37 | `result-track:045e3563e7aa02eacbe2b4400e6557ad729f8119db39e0428947ad44fc0d5b2b` |
| 3 | `instance` | [instLinearOrderInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/declarations/instlinearorderint--defef730743a9f7512cc5986.md) | 46 | `declaration-track:defef730743a9f7512cc5986e48156cd6f74bfa6447b219586ba6437f8f5ccf7` |
| 4 | `theorem` | [neg_mul_eq_neg_mul_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/declarations/neg-mul-eq-neg-mul-symm--7b273576d8eb599685f93b1d.md) | 63 | `result-track:7b273576d8eb599685f93b1db458a548f3317310a3e2b0014727fa0e7136d18a` |
| 5 | `theorem` | [mul_neg_eq_neg_mul_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/declarations/mul-neg-eq-neg-mul-symm--ccb836a7dccdd7838b33087d.md) | 66 | `result-track:ccb836a7dccdd7838b33087d51c68ce61635ca99872231c59e4ceb956fd0fdb3` |
| 6 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero--f1aaf94bdfd387c7a0c70e84.md) | 75 | `result-track:f1aaf94bdfd387c7a0c70e848b78593f1756074b124c8ff07058036dabed6b7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
