# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Complex.Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fe6f3d6fe5cbba10f0ec6ec2881284c70cb95ea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fe6f3d6fe5cbba10f0ec6ec2881284c70cb95ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [measureSpace](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean/declarations/measurespace--eaa16fc3d25c419413536d27.md) | 30 | `declaration-track:eaa16fc3d25c419413536d277266d83e4605b541f9f6e83201b231ef7a4868a2` |
| 2 | `def` | [measurableEquivPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean/declarations/measurableequivpi--cfa24f3979ac50b12eff1a14.md) | 35 | `declaration-track:cfa24f3979ac50b12eff1a142ae2f4aab5339fe67ec82fabb9f545dd7137108d` |
| 3 | `def` | [measurableEquivRealProd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean/declarations/measurableequivrealprod--e46803ade84e6f0bbef08564.md) | 40 | `declaration-track:e46803ade84e6f0bbef085649fe248346591edff668f0211329e36356955725f` |
| 4 | `theorem` | [volume_preserving_equiv_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean/declarations/volume-preserving-equiv-pi--e3ace3fab73a214d9e99b781.md) | 44 | `result-track:e3ace3fab73a214d9e99b781c53393cc5f1322aa87deef1c47db437d8eb30987` |
| 5 | `theorem` | [volume_preserving_equiv_real_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant22d12155b66dba279ff04689393e8b26e33347609db2aac85affdad6d20f567c.lean/declarations/volume-preserving-equiv-real-prod--f90bde8a94fc58d17cc720a6.md) | 48 | `result-track:f90bde8a94fc58d17cc720a6572ee3dc252660cae235fcb99bc83006e0c52308` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
