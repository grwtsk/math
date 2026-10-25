# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DateTime.Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fef6f0175797594d8fc6471668048d288a2d26ef",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fef6f0175797594d8fc6471668048d288a2d26ef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.String` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Collect` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Loop` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Time](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/time--e82e1bdc176687a544ed33d1.md) | 40 | `declaration-track:e82e1bdc176687a544ed33d1d3f532a1c170abd9c9eaf8a232f7bae07340f2c5` |
| 2 | `abbrev` | [IsValidHour](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/isvalidhour--aa679945a155d04f042985e2.md) | 50 | `declaration-track:aa679945a155d04f042985e2ace8d295591b22005c5e36c16920b3eab305f17a` |
| 3 | `abbrev` | [IsValidMinute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/isvalidminute--0141090ea94f2078a9d42b69.md) | 53 | `declaration-track:0141090ea94f2078a9d42b694a1c70eeb6134e6e0c818987aba21879b46b221c` |
| 4 | `abbrev` | [IsValidSecond](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/isvalidsecond--af34eb6083c99e9720b5fe03.md) | 56 | `declaration-track:af34eb6083c99e9720b5fe0395f0769910aed04c0dd187623125314c87470d45` |
| 5 | `def` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/zero--7ca4e45ddb7432fabb09e7dd.md) | 59 | `declaration-track:7ca4e45ddb7432fabb09e7dd26391a578beab57c76f7d76e7663639f1d2a3f8e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/instance--27f8f6f0c9f90a244fe37215.md) | 62 | `declaration-track:27f8f6f0c9f90a244fe37215e0542be9d660fa9add121e36f7489a614dd50ec5` |
| 7 | `def` | [ofValid?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/ofvalid--a1548abe3c3a421ad6daf536.md) | 64 | `declaration-track:a1548abe3c3a421ad6daf536fcd85003604fe5dc04ed7e6d63f3fa1e50ca7c3a` |
| 8 | `def` | [ofString?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/ofstring--646f54542bf88c8213b89ba9.md) | 68 | `declaration-track:646f54542bf88c8213b89ba978c4b64c5d58208406f7e9da1493ab308e8efdf9` |
| 9 | `def` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/tostring--8c26fd8e851dd29299e75918.md) | 82 | `declaration-track:8c26fd8e851dd29299e75918eccbadcda76823ce4bf4aba1c8be8bf0bd49b09a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/instance--44c825306b5d203954f86217.md) | 89 | `declaration-track:44c825306b5d203954f86217a70485f38127f193227b12542030c06c14f78684` |
| 11 | `inductive` | [DateTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/datetime--877878b347ade9e939bf4f06.md) | 94 | `declaration-track:877878b347ade9e939bf4f066e69694ea315c32c802dce7869ab85f0eb1b2221` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/instance--6063a6b10a3fa24897036f3b.md) | 101 | `declaration-track:6063a6b10a3fa24897036f3bbcb4b03d47d0a9df0e96401796a63ebab8476f0d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/instance--1a92e3fab669f37300b20c0c.md) | 102 | `declaration-track:1a92e3fab669f37300b20c0c7cf2d8d293e950a96ede5db129cca401b148184f` |
| 14 | `def` | [ofString?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/ofstring--89ac32f94e14aa65d67bd24f.md) | 106 | `declaration-track:89ac32f94e14aa65d67bd24ff660ab6031652c89b352531e5b7d9ee04726c959` |
| 15 | `def` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/tostring--7e804b56b19121da4255da90.md) | 125 | `declaration-track:7e804b56b19121da4255da902735a380c2e41be1a85f82188cff0eacf0c2802b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant3dcf859c39d9d970a21061ddac32bb1636a6a5045bbed5642c22a7ab31773078.lean/declarations/instance--ad55e5c0bc794b8dd3513bd5.md) | 139 | `declaration-track:ad55e5c0bc794b8dd3513bd5836ae7d3710e4104330c43937c0e6b7dd170cf5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
