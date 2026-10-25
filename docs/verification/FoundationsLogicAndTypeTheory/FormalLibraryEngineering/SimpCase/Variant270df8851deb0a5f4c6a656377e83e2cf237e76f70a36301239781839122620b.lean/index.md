# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpCase.Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5c1d0a9e8f956962b1c98839923e3445a61e078",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5c1d0a9e8f956962b1c98839923e3445a61e078`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.AlphaEqv` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getMaxOccs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/declarations/getmaxoccs--c93eed6f9cf187073d37aacd.md) | 37 | `declaration-track:c93eed6f9cf187073d37aacdef3d7980bb13c4ce996bc0850c3af2262f4a174e` |
| 2 | `def` | [addDefaultAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/declarations/adddefaultalt--bd8fad23d54e4645230b1602.md) | 65 | `declaration-track:bd8fad23d54e4645230b16020e2d32e2a94f4268177c8bc030f0321f0e7660f8` |
| 3 | `def` | [filterUnreachable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/declarations/filterunreachable--751ac7ffca2a093130aed1e8.md) | 88 | `declaration-track:751ac7ffca2a093130aed1e82508276cd26084fa7e9d97c162cf65c57e325d91` |
| 4 | `def` | [simplifyCases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/declarations/simplifycases--629dcb4d11eb41f05375ce4a.md) | 91 | `declaration-track:629dcb4d11eb41f05375ce4a3c3938a7c29ec9d91ffeef10c9f10c0a9e6c6a38` |
| 5 | `def` | [Code.simpCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/declarations/code-simpcase--9de14582cac465ed3422bec0.md) | 101 | `declaration-track:9de14582cac465ed3422bec0772233094d9be146e29983b23736fe9701d26fc1` |
| 6 | `def` | [Decl.simpCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/declarations/decl-simpcase--f8b2e8d7d6466489c030d020.md) | 114 | `declaration-track:f8b2e8d7d6466489c030d0207d449e434ef4620b44418172070a81f278ba41ab` |
| 7 | `def` | [ensureHasDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/declarations/ensurehasdefault--b0f2dc71514bf2d139bb8e6f.md) | 118 | `declaration-track:b0f2dc71514bf2d139bb8e6f8ff5666687cde0ea13e3bd7c8a9feb235d6b8cab` |
| 8 | `def` | [simpCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/declarations/simpcase--a2ab65b9832b5f748204bec9.md) | 128 | `declaration-track:a2ab65b9832b5f748204bec98550c03cbf77a765093d2c6c81bb0a520ca22dcc` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCase/Variant270df8851deb0a5f4c6a656377e83e2cf237e76f70a36301239781839122620b.lean/declarations/builtin-initialize--15c7f80f6b08b0c267252205.md) | 131 | `declaration-track:15c7f80f6b08b0c267252205cb5df5d18a094cf450c5b0efaec1ce3498bb9636` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
