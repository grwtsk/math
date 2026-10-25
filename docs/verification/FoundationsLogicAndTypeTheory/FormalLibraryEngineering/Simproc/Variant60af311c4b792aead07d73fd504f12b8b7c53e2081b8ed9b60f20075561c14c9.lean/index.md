# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simproc.Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da022245ae33cf97f1d5a91a999a4bdc61cac1e5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da022245ae33cf97f1d5a91a999a4bdc61cac1e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sub_add_eq_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/sub-add-eq-comm--5a6dd85529e1e893a53320ff.md) | 23 | `result-track:5a6dd85529e1e893a53320fff2fb53c1becf8780113f78d01be2111c79e8bc74` |
| 2 | `theorem` | [add_sub_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-sub-add-le--4ba429b3ddb6d3a846a4dda9.md) | 27 | `result-track:4ba429b3ddb6d3a846a4dda9d0c14a8afbb023522d4e56ae0e2ddb79c9f7abf1` |
| 3 | `theorem` | [add_sub_add_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-sub-add-ge--f9b85b8b9250040456ba8aa5.md) | 40 | `result-track:f9b85b8b9250040456ba8aa5cedc916f133ddfa9667e4f609dcbd8992aa22aee` |
| 4 | `theorem` | [add_sub_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-sub-le--829648faca680c1e5d31f546.md) | 43 | `result-track:829648faca680c1e5d31f5465c9859addf09e6675695d97601d624e1dbe5b173` |
| 5 | `theorem` | [add_eq_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-eq-gt--f9379476a72af5030ec75879.md) | 50 | `result-track:f9379476a72af5030ec75879721f20e3de6f44e007f0b641c46748c3efaaf556` |
| 6 | `theorem` | [eq_add_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/eq-add-gt--48b8b05d594480b9603659c3.md) | 53 | `result-track:48b8b05d594480b9603659c38f37f5ca45e2e35f06c7caf25bcc32d774879972` |
| 7 | `theorem` | [add_eq_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-eq-add-le--7ce50143e29333e2270fb7c5.md) | 57 | `result-track:7ce50143e29333e2270fb7c5c6b0b51e9e368ae6ca75849df7e16cc8f778d3ea` |
| 8 | `theorem` | [add_eq_add_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-eq-add-ge--f13c0abe7cec245b92bcb46d.md) | 61 | `result-track:f13c0abe7cec245b92bcb46d2535fd6018aae3ce5a6a54c765c88acb2b13d0f6` |
| 9 | `theorem` | [add_eq_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-eq-le--72150dd3299b15ef06a63159.md) | 64 | `result-track:72150dd3299b15ef06a631599743a9de1db7dcc9dea4c6a3c009f7b5212175c6` |
| 10 | `theorem` | [eq_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/eq-add-le--6db4e85a1400fd68f713551b.md) | 69 | `result-track:6db4e85a1400fd68f713551bc2146340d4013bfb66498ec6077a31c9b4e6ecb0` |
| 11 | `theorem` | [beqEqOfEqEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/beqeqofeqeq--73afd448c23582a796559016.md) | 75 | `result-track:73afd448c23582a7965590162855cb2d5bac5eee52e7beea94cf0d9d15227ff5` |
| 12 | `theorem` | [beqFalseOfEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/beqfalseofeqfalse--e0eff821fefaf22c160c5e29.md) | 78 | `result-track:e0eff821fefaf22c160c5e295981d2a8c1d47cfd39cf312481c003f1d32b57c0` |
| 13 | `theorem` | [bneEqOfEqEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/bneeqofeqeq--45bae1e44df98db2ab810d93.md) | 81 | `result-track:45bae1e44df98db2ab810d933185aecdf7ab46a5f394421b9eb6bf6af5cf10e4` |
| 14 | `theorem` | [bneTrueOfEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/bnetrueofeqfalse--248b08db268ef19777841546.md) | 84 | `result-track:248b08db268ef197778415466e4b70a2dde45f455cd3706369181889145ae0aa` |
| 15 | `theorem` | [add_le_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-le-add-le--bb6bb5d7223d52d1049f00e7.md) | 89 | `result-track:bb6bb5d7223d52d1049f00e704c700fd7e108f50ed9434e082c326804c542e58` |
| 16 | `theorem` | [add_le_add_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-le-add-ge--f862fcf12e185eeae03e7ea0.md) | 93 | `result-track:f862fcf12e185eeae03e7ea074155bc37aace70400ff44309820e4eb18b4b88c` |
| 17 | `theorem` | [add_le_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-le-le--d28781f839fe3d3a5c327da2.md) | 96 | `result-track:d28781f839fe3d3a5c327da2fb016127d464c0c7bdbcd61d3ffb48b82674dbcc` |
| 18 | `theorem` | [add_le_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/add-le-gt--359cceeb304ac353515d3bac.md) | 101 | `result-track:359cceeb304ac353515d3bac4a7dc4848b3734f6a817b26d5e37447d7f9ec33b` |
| 19 | `theorem` | [le_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/le-add-le--29f9675ffe518addd8bca6b4.md) | 104 | `result-track:29f9675ffe518addd8bca6b4e11493332d7a4a2a43c4be416547319352f1c268` |
| 20 | `theorem` | [le_add_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variant60af311c4b792aead07d73fd504f12b8b7c53e2081b8ed9b60f20075561c14c9.lean/declarations/le-add-ge--1baad9222a083794419bf2a3.md) | 107 | `result-track:1baad9222a083794419bf2a3733aae055475e5b75bfc9208768e29f731701c21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
