# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Split.Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e448379fef222a6051dc15eca612b4320ecd15c7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e448379fef222a6051dc15eca612b4320ecd15c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Match.Rewrite` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Rewrite` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/declarations/splitinfo--978431867d4fe0fca95a6f06.md) | 30 | `declaration-track:978431867d4fe0fca95a6f061e68886ce4039e3bb1a35ac768b05f48308d03be` |
| 2 | `def` | [resTy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/declarations/resty--dca6025008c095f4b544225e.md) | 38 | `declaration-track:dca6025008c095f4b544225e19d68b6d6a9279b38998dede0ada87a06763fd86` |
| 3 | `def` | [altInfos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/declarations/altinfos--31973a6c2c96d11fdc9e6908.md) | 56 | `declaration-track:31973a6c2c96d11fdc9e6908189d7a12250e3325a755ff0036787103441333b6` |
| 4 | `def` | [expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/declarations/expr--734a24e1ca3988aeeb2e2102.md) | 63 | `declaration-track:734a24e1ca3988aeeb2e21023d45c759c48f22c2e4b02ace22104faf592db4b1` |
| 5 | `def` | [withAbstract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/declarations/withabstract--ce882a9946a9f88453fb8839.md) | 85 | `declaration-track:ce882a9946a9f88453fb8839af66afc4989e9d982cd91bae737691e35d304604` |
| 6 | `def` | [splitWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/declarations/splitwith--26baceec381ab189df85ad4d.md) | 144 | `declaration-track:26baceec381ab189df85ad4dd0b881b3bee2938cc638421f61ef1e5799822dd3` |
| 7 | `def` | [simpDiscrs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/declarations/simpdiscrs--4d0488504e91a6f3a63042b2.md) | 179 | `declaration-track:4d0488504e91a6f3a63042b298bb7a0a138c7b76d07f7b717c8e9fc61678b966` |
| 8 | `def` | [getSplitInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/declarations/getsplitinfo--48ee987b29c4e8d42c0d7b6e.md) | 185 | `declaration-track:48ee987b29c4e8d42c0d7b6e8d667b79d47bd6788c071b15ab567272f0b7efef` |
| 9 | `def` | [rwIfOrMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variantf93e0d46249f57be688b2bd817fe19c1e3c0361903b98ac32da369d7665b5638.lean/declarations/rwiformatcher--0c197cceba6ccfcc02b0d2db.md) | 195 | `declaration-track:0c197cceba6ccfcc02b0d2db11a9baa63dd0fd83e68ee2dd8d3d82d3fb64f991` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
