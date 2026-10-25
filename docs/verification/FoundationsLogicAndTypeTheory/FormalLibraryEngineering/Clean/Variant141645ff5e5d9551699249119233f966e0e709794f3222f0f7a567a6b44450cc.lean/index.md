# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clean.Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "072ab0a1e2fa00cfa997989bf2d8929b609f50ce",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `072ab0a1e2fa00cfa997989bf2d8929b609f50ce`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean.json)

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
| 1 | `def` | [cleanConsts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean/declarations/cleanconsts--0a8e346d985463ce643f7c91.md) | 26 | `declaration-track:0a8e346d985463ce643f7c91ab88a8799dbb9656aa0b24cfd335135739d0b5ad` |
| 2 | `def` | [clean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean/declarations/clean--d932fbe97c4314e8447c5a47.md) | 31 | `declaration-track:d932fbe97c4314e8447c5a47042a86f7f97eea60d1f55e709477f11d517bf2b5` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean/declarations/syntax--3ed1695ec275a007cf4c91e2.md) | 61 | `declaration-track:3ed1695ec275a007cf4c91e22424eb6a2ba87f0e56b639fe3c6e37c59cb584a6` |
| 4 | `def` | [elabClean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean/declarations/elabclean--0babcfe77f3dcb1ee44ed317.md) | 64 | `declaration-track:0babcfe77f3dcb1ee44ed31707c96a5ab217dd02680a0bcc4046ef0424aec5f7` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variant141645ff5e5d9551699249119233f966e0e709794f3222f0f7a567a6b44450cc.lean/declarations/macro--ba43aed5d6d8a15bc55a853d.md) | 73 | `declaration-track:ba43aed5d6d8a15bc55a853d87bdf36ca6dd637e2f10d59b296f4dc62b1d152e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
