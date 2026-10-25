# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Option.Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c9f69e134558e58655ad90eb8a18e79851c374c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c9f69e134558e58655ad90eb8a18e79851c374c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--88d86bee99af63a533e7e2bc.md) | 18 | `declaration-track:88d86bee99af63a533e7e2bcfd2c3b9aa476ff5135ec2fd7aaa1b39c684d9343` |
| 2 | `def` | [OptionT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/optiont--f69abafdde324965c78ad7db.md) | 24 | `declaration-track:f69abafdde324965c78ad7db0b6ba1812f1a2a63e77c103a5d818a71dbb33fce` |
| 3 | `def` | [OptionT.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/optiont-run--c330907a798a0613998ea4e8.md) | 31 | `declaration-track:c330907a798a0613998ea4e8c3371502a4c94c418244208dab753b5b2e8272f2` |
| 4 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/mk--e5c57a8637e6ef3d6f5c8a4b.md) | 42 | `declaration-track:e5c57a8637e6ef3d6f5c8a4b33e46f951754e2d36b4ef4a7229ab9c5d5094d2e` |
| 5 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/bind--3c4d5240256694be515fa203.md) | 49 | `declaration-track:3c4d5240256694be515fa2036c5421823078e4ac879c12208c37e4b616177629` |
| 6 | `def` | [pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/pure--13b1c6521745df7834509f5d.md) | 58 | `declaration-track:13b1c6521745df7834509f5df36ffbb9ca4f77fae79774396b416df4d94f2c12` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--8e961e5a6943acee6b31a51c.md) | 62 | `declaration-track:8e961e5a6943acee6b31a51ccab32c15cf97c77ee713dc22f207f9ca6973f194` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--6fc0ab9822652220b1fb1dd9.md) | 66 | `declaration-track:6fc0ab9822652220b1fb1dd9c0bcbcf867b874c86a7bc2d9eece99cf3a65e461` |
| 9 | `def` | [orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/orelse--c5d49b882345433a3d35ca87.md) | 72 | `declaration-track:c5d49b882345433a3d35ca87e9623238f5f59efcfc282b63ef895b8c8cb48aa4` |
| 10 | `def` | [fail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/fail--6b740ec99bb493958b3afce9.md) | 80 | `declaration-track:6b740ec99bb493958b3afce953ec5630dfc68d20be61d209ff6b0c6fa54f465d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--f31b538049d0ecd52d92d01c.md) | 83 | `declaration-track:f31b538049d0ecd52d92d01c94139806b86c18a1c070eaa0b84bdabf4d2228b9` |
| 12 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/lift--997521f24977860a8953896a.md) | 93 | `declaration-track:997521f24977860a8953896aee64fd3014185416456d726c7bb62a0769f338b0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--c9c675b526f7d21f97ec1afb.md) | 96 | `declaration-track:c9c675b526f7d21f97ec1afb9493bf2bcbe528e2fad6aba22a2e00a81b064e2b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--13f6af6965b2bceb3f00bfd6.md) | 98 | `declaration-track:13f6af6965b2bceb3f00bfd6e10a64503aa2c57d70c1ee98e297b207ba6f9a0a` |
| 15 | `def` | [tryCatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/trycatch--ad27e4e076ce0d4a139cc694.md) | 103 | `declaration-track:ad27e4e076ce0d4a139cc694ce58065fce0a2cecd5b7946887f4bdf997d35a2f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--4fa1086406fef7579acd54a5.md) | 107 | `declaration-track:4fa1086406fef7579acd54a5b91a074d1030b1eeafc03930522f53295465b003` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--1cd6f4f4baefd788e6f4b749.md) | 111 | `declaration-track:1cd6f4f4baefd788e6f4b749d46f12e8e7a7cf76dd15ba61fbeb8022e8e2884a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--2a9398f24298f537b03077ff.md) | 115 | `declaration-track:2a9398f24298f537b03077ffb60b2105dd4b975952743ff5e63e272e9622a5d4` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant8561d3ad9e9bd0bf4b5c4712c5490c3a0821cabd64e7f4006f7a8ef74824f151.lean/declarations/instance--e51bcd362a5da454b07bb70c.md) | 123 | `declaration-track:e51bcd362a5da454b07bb70c7bcdd1aec15a0f78c8ee6233305721557f35f8a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
