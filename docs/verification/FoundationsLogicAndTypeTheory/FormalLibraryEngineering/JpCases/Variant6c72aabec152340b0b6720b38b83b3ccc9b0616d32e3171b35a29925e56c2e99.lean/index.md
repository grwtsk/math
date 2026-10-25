# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JpCases.Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80eb3b4f7b3c69da0c50c58d8860b5e65c709d2c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80eb3b4f7b3c69da0c50c58d8860b5e65c709d2c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean.json)

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
| 1 | `def` | [isJpCases?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/isjpcases--bcb6c25d435aa18f36d691c2.md) | 29 | `declaration-track:bcb6c25d435aa18f36d691c20eaf9cf2b62ef0125201e320cb153e37a515c4d0` |
| 2 | `structure` | [JpCasesInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/jpcasesinfo--3ee78126dcf8322a302e66c6.md) | 45 | `declaration-track:3ee78126dcf8322a302e66c65238607d8432cb6db050a504cffa7abc5f100d2f` |
| 3 | `abbrev` | [JpCasesInfoMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/jpcasesinfomap--dbe14a7a64f3df2955adf674.md) | 55 | `declaration-track:dbe14a7a64f3df2955adf674b3b24640f5a48431a0c5a8021083ebf5e64614c7` |
| 4 | `def` | [JpCasesInfoMap.isCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/jpcasesinfomap-iscandidate--551f9de4b3bb5ff6853f4284.md) | 58 | `declaration-track:551f9de4b3bb5ff6853f4284c7df092f1c9c8a6df098dc1b6a04a065c5bae0d1` |
| 5 | `def` | [collectJpCasesInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/collectjpcasesinfo--81cd1e6c9b255a57669bc501.md) | 67 | `declaration-track:81cd1e6c9b255a57669bc50148db241f59f709ff55292d9d7efa417eefa23471` |
| 6 | `def` | [extractJpCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/extractjpcases--5517588256e4b00b1a6b7040.md) | 93 | `declaration-track:5517588256e4b00b1a6b7040e2e4c914a027016e7d94da604877b8e63373a912` |
| 7 | `structure` | [JpCasesAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/jpcasesalt--49a3c1931b4f5ea8240d4bd1.md) | 102 | `declaration-track:49a3c1931b4f5ea8240d4bd1da60d880e918ea050d64f1df806cc2f9e3c90e64` |
| 8 | `abbrev` | [Ctor2JpCasesAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/ctor2jpcasesalt--aeb03539c0f2deb5b8268d5f.md) | 107 | `declaration-track:aeb03539c0f2deb5b8268d5fc4291f946a12b7a11f04d2d7be29d491818efaaa` |
| 9 | `def` | [mkJpAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/mkjpalt--dc4b55434b131d3eb3bd9fd8.md) | 119 | `declaration-track:dc4b55434b131d3eb3bd9fd8cdfc24f72b9dc7fb8b94e2fc8a81f16bea609eb2` |
| 10 | `def` | [mkJmpNewArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/mkjmpnewargs--322a30b09e7f983c023a7aec.md) | 142 | `declaration-track:322a30b09e7f983c023a7aec5dbd8d462fc660accb5d2b6d906bc9a384dd9cf4` |
| 11 | `def` | [mkJmpArgsAtJp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/mkjmpargsatjp--ca105dd040834f0836168bb5.md) | 153 | `declaration-track:ca105dd040834f0836168bb5efe81e4cf0f0feca689f73b78b672875de948ad2` |
| 12 | `def` | [simpJpCases?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/simpjpcases--121c2b1eaea3171cc12c14de.md) | 201 | `declaration-track:121c2b1eaea3171cc12c14debe81e855e217e4121717670d9f092268fc8a1f22` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JpCases/Variant6c72aabec152340b0b6720b38b83b3ccc9b0616d32e3171b35a29925e56c2e99.lean/declarations/builtin-initialize--7cc33ac854c6cb5d571cc229.md) | 307 | `declaration-track:7cc33ac854c6cb5d571cc229e80753aa081d314cc1eb4353d2d973d74f28f750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
