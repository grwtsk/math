# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Find.Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c411d17178ecd5d4789bf0ac4a91bfb9fc91e28",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c411d17178ecd5d4789bf0ac4a91bfb9fc91e28`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Discovery.Types` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Bisection` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findGlobalMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/findglobalmin--6e230cc9fcc144a9a6cbc76c.md) | 73 | `declaration-track:6e230cc9fcc144a9a6cbc76c6c4629f8a9fde0144919811a4be588d9946536fa` |
| 2 | `def` | [findGlobalMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/findglobalmax--b394ab9a72e66d002fd65a43.md) | 101 | `declaration-track:b394ab9a72e66d002fd65a43327d096b0b3d627f94f38c649666ab65506d8bb9` |
| 3 | `def` | [verifyUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/verifyupperbound--c875e0c273c6b6f2caa4c849.md) | 141 | `declaration-track:c875e0c273c6b6f2caa4c849e321ad900fcf25eb8e519206e331f76546b4e173` |
| 4 | `def` | [verifyLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/verifylowerbound--7a4deb80c60b5d98e78bb6f5.md) | 157 | `declaration-track:7a4deb80c60b5d98e78bb6f5799e7197758169691b816055c869e85365d18033` |
| 5 | `structure` | [RootSearchResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/rootsearchresult--98875e5d8468b094b3806c1c.md) | 172 | `declaration-track:98875e5d8468b094b3806c1cd7bccaf6bbf63dcbfd0e5bf006f54be45cf7bcc3` |
| 6 | `def` | [searchRoots](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/searchroots--444591e09a5f3e98042228d3.md) | 189 | `declaration-track:444591e09a5f3e98042228d34876c6060faa691391d5130cd4b258f9d54f8516` |
| 7 | `def` | [quickBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/quickbounds--419d3c94247195e6b49f30ef.md) | 209 | `declaration-track:419d3c94247195e6b49f30ef165382776c78ad36de2909efac89fcd528ccd6d5` |
| 8 | `def` | [quickGlobalBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/quickglobalbounds--0606441548590d912515f9c9.md) | 215 | `declaration-track:0606441548590d912515f9c92e7906480dee50efe7b8a6671c99c9f81c9f626e` |
| 9 | `def` | [tryVerifyUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/tryverifyupperbound--7a8244065a01d7d0d7932196.md) | 228 | `declaration-track:7a8244065a01d7d0d79321965145900e630a97befe2c2ab5d8e1b34afd635c5e` |
| 10 | `def` | [tryVerifyLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variant14ca10e2c40f132134329765d58de8d74e5eb6df108df3d55eb290c69155fc88.lean/declarations/tryverifylowerbound--51ccc98070e61f7453348a69.md) | 238 | `declaration-track:51ccc98070e61f7453348a696495e80a3ebcedee4da22cec0fbd4e5c5aeec757` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
