# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47a10913404860c3ae56ff45eed41ee6b86f3b05",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47a10913404860c3ae56ff45eed41ee6b86f3b05`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [small_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/declarations/small-subtype--c73abd6a8edfb0af9cbdd2b2.md) | 22 | `declaration-track:c73abd6a8edfb0af9cbdd2b223b298d352efa710ff3c0892db75c1f65d560237` |
| 2 | `theorem` | [small_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/declarations/small-of-injective--9825d68eb275e008f4bd030d.md) | 25 | `result-track:9825d68eb275e008f4bd030ddc5dbe4b1dfc62caa6bd5161e03f9c1e70a1afde` |
| 3 | `theorem` | [small_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/declarations/small-of-surjective--8cd4f487edb2ac2941b009b6.md) | 29 | `result-track:8cd4f487edb2ac2941b009b6a311636fcc04445643153f5602872caa0a372782` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/declarations/instance--bdf5fdca1221f1cc7d93765c.md) | 33 | `declaration-track:bdf5fdca1221f1cc7d93765ca12ad79752a05f725c8393017418936cfe1aac8b` |
| 5 | `theorem` | [small_of_injective_of_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/declarations/small-of-injective-of-exists--f420ac0f7b2400e44885c7af.md) | 41 | `result-track:f420ac0f7b2400e44885c7af1b2c68439d8e64b6d1a4fd31ed3505701eeb0550` |
| 6 | `instance` | [small_Pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/declarations/small-pi--ff569fd84ae3d4b3d296fef0.md) | 55 | `declaration-track:ff569fd84ae3d4b3d296fef02f0d70d435118b9fd8a633a9ce97277e75ca967f` |
| 7 | `instance` | [small_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/declarations/small-prod--a4863f0a4210b40d9cf3103e.md) | 60 | `declaration-track:a4863f0a4210b40d9cf3103ec0d975c8dd6abfd6f11bf092d48db1cc42fbbb0e` |
| 8 | `instance` | [small_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/declarations/small-sum--d62a7ab3046a1abef2e7cb1c.md) | 63 | `declaration-track:d62a7ab3046a1abef2e7cb1c2c5e32d1e504c6f26c11a83a2888b0ce6ceca698` |
| 9 | `instance` | [small_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911.lean/declarations/small-set--24598a944351dab7038f3fde.md) | 66 | `declaration-track:24598a944351dab7038f3fde480265d5343fa8078f5259dc5f6dca36ca63c3e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
