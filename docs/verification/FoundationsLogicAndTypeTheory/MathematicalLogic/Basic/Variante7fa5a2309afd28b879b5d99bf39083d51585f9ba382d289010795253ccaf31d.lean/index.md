# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b22f9339fbe7d43c660c1b6ea1d3171857da0be",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b22f9339fbe7d43c660c1b6ea1d3171857da0be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Option` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Option` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derangements](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/derangements--03aed571eb3b7f926e49883d.md) | 40 | `declaration-track:03aed571eb3b7f926e49883d69d7a3706aac973a0918329b06e09c397658438a` |
| 2 | `theorem` | [mem_derangements_iff_fixedPoints_eq_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/mem-derangements-iff-fixedpoints-eq-empty--bdfe691d3b79bb19dcb219f0.md) | 45 | `result-track:bdfe691d3b79bb19dcb219f0e0d6126fd8f7f149c74905a584d219ef18fa0d99` |
| 3 | `def` | [Equiv.derangementsCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/equiv-derangementscongr--e30bf123e81df82515d9d930.md) | 50 | `declaration-track:e30bf123e81df82515d9d93025a4ed0644ffc8f524a08bc583aefba0f9992d11` |
| 4 | `def` | [subtypeEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/subtypeequiv--adfa9c1166f66bfa855e9251.md) | 58 | `declaration-track:adfa9c1166f66bfa855e9251e8cc0c18db9a113fab67e45bda561574b385f66a` |
| 5 | `def` | [atMostOneFixedPointEquivSum_derangements](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/atmostonefixedpointequivsum-derangements--9ef3049d35c9780baf47caa7.md) | 83 | `declaration-track:9ef3049d35c9780baf47caa71c983053b69ac81600bb5e042911e4df75c110e2` |
| 6 | `def` | [RemoveNone.fiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/removenone-fiber--210202d0ef68bc8b44072167.md) | 120 | `declaration-track:210202d0ef68bc8b440721679f0c204d635203f8608a1c94cd02fc6193a96d9c` |
| 7 | `theorem` | [RemoveNone.mem_fiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/removenone-mem-fiber--ae69518605d2e59f5859f50f.md) | 123 | `result-track:ae69518605d2e59f5859f50fcf1c9f35a3b4efe49261ebf6e8f91b99664d1d03` |
| 8 | `theorem` | [RemoveNone.fiber_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/removenone-fiber-none--d6609088b3392f2805786ca8.md) | 128 | `result-track:d6609088b3392f2805786ca80104e622ad8a0d395557d96291a901f573d74d9f` |
| 9 | `theorem` | [RemoveNone.fiber_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/removenone-fiber-some--984ee37382e442e4a914dce9.md) | 137 | `result-track:984ee37382e442e4a914dce9e8aee9f92a262dcf9e730f1e4bd93e13cfded7bb` |
| 10 | `def` | [derangementsOptionEquivSigmaAtMostOneFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/derangementsoptionequivsigmaatmostonefixedpoint--a6e8b5eb6ea16a1af3c1b148.md) | 177 | `declaration-track:a6e8b5eb6ea16a1af3c1b148cfe94b232e637f3a20e28878c44dd42841f42938` |
| 11 | `def` | [derangementsRecursionEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d.lean/declarations/derangementsrecursionequiv--1a4980891af7d1a32660a695.md) | 194 | `declaration-track:1a4980891af7d1a32660a69552a34985170b8ad25edc89f30a24f311bfb5863b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
