# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Find.Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9bbb5434eb1fd7562d6703651b036d32fcf372f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9bbb5434eb1fd7562d6703651b036d32fcf372f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Discovery.Types` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Bisection` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findGlobalMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/findglobalmin--25b1e68b383fffc693835411.md) | 65 | `declaration-track:25b1e68b383fffc6938354114f033c620556524213618cbbadb3279e58c2203c` |
| 2 | `def` | [findGlobalMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/findglobalmax--df94c4e99d0b216a22e915da.md) | 93 | `declaration-track:df94c4e99d0b216a22e915da176fa87d726c18879692773621d8a7abc8077e68` |
| 3 | `def` | [verifyUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/verifyupperbound--dd2be60dc8e7aafe19bfafec.md) | 133 | `declaration-track:dd2be60dc8e7aafe19bfafec812d3536c3fa880847260b5604455fdfc77a8fa2` |
| 4 | `def` | [verifyLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/verifylowerbound--8a015b3ed2d3448b24771866.md) | 149 | `declaration-track:8a015b3ed2d3448b24771866706c4826bbab80e40a39abbd893060525ce96c22` |
| 5 | `structure` | [RootSearchResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/rootsearchresult--1a73448f88dd33fc4b6a9c8f.md) | 164 | `declaration-track:1a73448f88dd33fc4b6a9c8fd4362f0642ebedd46c6c5033da05525f0dc57709` |
| 6 | `def` | [searchRoots](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/searchroots--5b0dfc38559a2cf2ab27b071.md) | 181 | `declaration-track:5b0dfc38559a2cf2ab27b0717fbb1279cbd3367e84cf73c85be14bd4472d5284` |
| 7 | `def` | [quickBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/quickbounds--18ff3cec0cf10fa4c4a8c5d4.md) | 201 | `declaration-track:18ff3cec0cf10fa4c4a8c5d4fa9c44a4695405123935a2d1aaebe5565e477b9c` |
| 8 | `def` | [quickGlobalBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/quickglobalbounds--c93e8f85d8a342f508a57383.md) | 207 | `declaration-track:c93e8f85d8a342f508a573830ae0ff8b5d5f48232ffb57835b89c2a2b0323091` |
| 9 | `def` | [tryVerifyUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/tryverifyupperbound--04fc7af9f00925555b0a247f.md) | 220 | `declaration-track:04fc7af9f00925555b0a247f61c5696b8e192612a031ec8345d43cba661336e1` |
| 10 | `def` | [tryVerifyLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant0b9b8053137bff5abd96a0ed918d8700e5e3db3e39b3c2b337845c8431910933.lean/declarations/tryverifylowerbound--6c0c81328f415518c12cd79d.md) | 230 | `declaration-track:6c0c81328f415518c12cd79d74e400fa731cb49a162942418834766eb65f9139` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
