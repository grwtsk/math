# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e01bfbfb38c6650600e024c32d3eabdaeb8fb988",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e01bfbfb38c6650600e024c32d3eabdaeb8fb988`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Internal.Order.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EqnInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/declarations/eqninfo--7ca3c90c563cab2b4be09e53.md) | 17 | `declaration-track:7ca3c90c563cab2b4be09e53dddd01b599668d7564d5368263f31075387f2e2c` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/declarations/builtin-initialize--360975645dac2e7077a19535.md) | 28 | `declaration-track:360975645dac2e7077a195350b4c1b1f787748a3706039e900b8eaec6100d1a4` |
| 3 | `def` | [registerEqnsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/declarations/registereqnsinfo--96d3043514589377aa1a4b79.md) | 35 | `declaration-track:96d3043514589377aa1a4b794979a13827332bee2597bde9bc0a7b6812182af7` |
| 4 | `def` | [deltaLHSUntilFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/declarations/deltalhsuntilfix--6b22742a83f832ef619bd948.md) | 46 | `declaration-track:6b22742a83f832ef619bd948c80fc5ce7af2279a340ca6fd991cb2121627b1ca` |
| 5 | `def` | [rwFixUnder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/declarations/rwfixunder--d17b4f2131b5f785171db8aa.md) | 52 | `declaration-track:d17b4f2131b5f785171db8aa131fd221ffa3d1f6955e4ff536ac5170cbde276d` |
| 6 | `def` | [rwFixEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/declarations/rwfixeq--574b86c1054d93acfe1e4c0f.md) | 67 | `declaration-track:574b86c1054d93acfe1e4c0fa88b40712024cbf6e1d5b0f6e8dc7c2703072f21` |
| 7 | `def` | [mkUnfoldEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/declarations/mkunfoldeq--0425a5fb6b4c74a9d3eaa420.md) | 79 | `declaration-track:0425a5fb6b4c74a9d3eaa42092520f649cfc5934019dfef9d57e73582759feb6` |
| 8 | `def` | [getUnfoldFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/declarations/getunfoldfor--b53c3e8c645f387dd4e2bf8d.md) | 115 | `declaration-track:b53c3e8c645f387dd4e2bf8d7179eb4606eccc74a23d55eda1a69dcc4a3e724f` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant26ec3a1d6c9932c7ccd7fa4e7b6c81e17199101b5944422fe279aa5255e0b5c8.lean/declarations/builtin-initialize--720d9e64ea5117c07c6894ab.md) | 122 | `declaration-track:720d9e64ea5117c07c6894ab5ff54679afba0eb436e36b1fc2c49873dedcc269` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
