# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveCountable.Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e248d768f7eebf77dcc04ec5174d3909489147a9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e248d768f7eebf77dcc04ec5174d3909489147a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Transform` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Inductive` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Batteries.Data.NameSet` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/encode--ecf3094e97587b76a383f315.md) | 60 | `declaration-track:ecf3094e97587b76a383f3157c8ae8a1a8ad9c5d405540bf87efe85e3795e580` |
| 2 | `def` | [encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/encode-injective--6dee3b607021d1b9cb8eabf5.md) | 63 | `declaration-track:6dee3b607021d1b9cb8eabf5469c87738e4aeebe7a16f682465da081b58e2075` |
| 3 | `theorem` | [cons_eq_imp_init](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/cons-eq-imp-init--3deb502fe42347c3344eb16f.md) | 70 | `result-track:3deb502fe42347c3344eb16ff628618ec5ed3a298e3863be9a416159a989053f` |
| 4 | `theorem` | [cons_eq_imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/cons-eq-imp--63a56bfce859b62c4bdde3da.md) | 78 | `result-track:63a56bfce859b62c4bdde3da453fc4a435ecc680afd1691a76f2ccc9e1f6dc81` |
| 5 | `theorem` | [pair_encode_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/pair-encode-step--db2e8e937aaed3ef4508eb30.md) | 85 | `result-track:db2e8e937aaed3ef4508eb3030cbea81998d107c7974614868da617800cab9ff` |
| 6 | `def` | [mkToNatMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/mktonatmatch--b9ff82d0c04bcd5455f73bbf.md) | 99 | `declaration-track:b9ff82d0c04bcd5455f73bbfff0c47237c40599654db950d201e817449f145d8` |
| 7 | `def` | [mkToNatFuns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/mktonatfuns--8eac9cae00960e1df16fc5de.md) | 135 | `declaration-track:8eac9cae00960e1df16fc5de12abed4d9ce4358ef6109721dd95e510192fcd17` |
| 8 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/anonymous--d9be7c0a4e1df935bcb66667.md) | 144 | `declaration-track:d9be7c0a4e1df935bcb666676087e5a8d6700068771c61801a918e737a1c38da` |
| 9 | `def` | [mkInjThmMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/mkinjthmmatch--445f41f8676dcc947fb2ec19.md) | 153 | `declaration-track:445f41f8676dcc947fb2ec1912331ccfe93369897c65b061fbfc8c4131eb81a6` |
| 10 | `def` | [mkInjThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/mkinjthms--2d7288ea99e294e60d525302.md) | 196 | `declaration-track:2d7288ea99e294e60d5253029cd2e1e70b36008e3c3c366a5aa9fc1892c0c904` |
| 11 | `theorem` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/anonymous--27c03e8734f82b42c5711bbe.md) | 209 | `result-track:27c03e8734f82b42c5711bbe8237de2bb1c0357e5876135a29d76ea677161ef6` |
| 12 | `def` | [mkCountableInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/mkcountableinstancecmds--4f1f0673a02ec595fb488574.md) | 221 | `declaration-track:4f1f0673a02ec595fb488574a6bfaf8e35d7b5d70e521f179ea591c22d61ee4c` |
| 13 | `def` | [mkCountableCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/mkcountablecmds--8f69e70dac6faa5571a7673d.md) | 238 | `declaration-track:8f69e70dac6faa5571a7673d5d2420df68fbf07595da31f83954ca17fa4c3e35` |
| 14 | `def` | [mkCountableInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/mkcountableinstance--f69061e90fa355f2e60b2672.md) | 257 | `declaration-track:f69061e90fa355f2e60b26728d6e41ee6f1643ef04d098238ceb5a7a6d978059` |
| 15 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/declarations/initialize--37d31276f47279f1bb741c3f.md) | 273 | `declaration-track:37d31276f47279f1bb741c3fa60acff22cafd8f632bd9b12c6996d8efc0f5128` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
