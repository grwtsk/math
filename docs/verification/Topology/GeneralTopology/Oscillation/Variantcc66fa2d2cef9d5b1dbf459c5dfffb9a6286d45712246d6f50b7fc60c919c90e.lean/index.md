# Verification target: GRWTSK.Topology.GeneralTopology.Oscillation.Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858`.

Source path: `GRWTSK/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Diam` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/oscillation--6c81ebc8cab4431d96e995f4.md) | 34 | `declaration-track:6c81ebc8cab4431d96e995f462c54fbea822c355b036b9c8cc7508e1dd962a54` |
| 2 | `def` | [oscillationWithin](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/oscillationwithin--6bd53b3a01679b1726b3318e.md) | 38 | `declaration-track:6bd53b3a01679b1726b3318ec5606db8253dedd2b606cd1e862713c70181ff7d` |
| 3 | `theorem` | [oscillationWithin_nhds_eq_oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/oscillationwithin-nhds-eq-oscillation--940009576ea4e3ad0377117b.md) | 42 | `result-track:940009576ea4e3ad0377117b33654b6c4581e3b5a527eaeea655fae737d9a5ad` |
| 4 | `theorem` | [oscillationWithin_univ_eq_oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/oscillationwithin-univ-eq-oscillation--3797fb86fdb83f0fcfb5ece0.md) | 50 | `result-track:3797fb86fdb83f0fcfb5ece0b32af3baa8bab6996595a118ffe86b5a87cc5cae` |
| 5 | `theorem` | [oscillationWithin_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/oscillationwithin-eq-zero--979c753f2716348b765a345f.md) | 56 | `result-track:979c753f2716348b765a345f420b3fb058ca83767489395973b50f5baba8069f` |
| 6 | `theorem` | [oscillation_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/oscillation-eq-zero--38013d6ba73776a87c8ebfc7.md) | 68 | `result-track:38013d6ba73776a87c8ebfc74bc4da5418d6bf066307fb9d2db39df8d5520713` |
| 7 | `theorem` | [eq_zero_iff_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/eq-zero-iff-continuouswithinat--3ba2e809baddd794a5762c81.md) | 78 | `result-track:3ba2e809baddd794a5762c812fc0d35a706e21a493c95547d5690862e30e3739` |
| 8 | `theorem` | [eq_zero_iff_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/eq-zero-iff-continuousat--603557163a35cc0f3560b2d2.md) | 91 | `result-track:603557163a35cc0f3560b2d29e48f6d8454b085305aec56c98f393e6a8b086da` |
| 9 | `theorem` | [uniform_oscillationWithin](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/uniform-oscillationwithin--8425650a437e016ed1f97d03.md) | 105 | `result-track:8425650a437e016ed1f97d03212a40aba2ad650d16c825210436e01f3e900394` |
| 10 | `theorem` | [uniform_oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/declarations/uniform-oscillation--5acfcf325372913908ef07b3.md) | 151 | `result-track:5acfcf325372913908ef07b3c7c4d907b0390abb0eb560b2343590e058a03c9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
