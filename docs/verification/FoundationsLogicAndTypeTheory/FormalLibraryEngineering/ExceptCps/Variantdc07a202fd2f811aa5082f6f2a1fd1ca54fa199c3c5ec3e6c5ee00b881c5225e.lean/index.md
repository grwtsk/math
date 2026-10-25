# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExceptCps.Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b62837f4e0c4abfd505267b3f5e2cc4071cc0377",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b62837f4e0c4abfd505267b3f5e2cc4071cc0377`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.SimpLemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExceptCpsT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/exceptcpst--f95e1adbecac54fba11f47ea.md) | 24 | `declaration-track:f95e1adbecac54fba11f47ea82190b396e385b6f123dcc658b5defc3191f5878` |
| 2 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/run--e7d5d9e15934536a3e580594.md) | 32 | `declaration-track:e7d5d9e15934536a3e580594b7043f766de50987ad940616e536e869af57d38a` |
| 3 | `def` | [runK](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runk--5c923362bb69ae95ff337c6c.md) | 41 | `declaration-track:5c923362bb69ae95ff337c6caf25ba8b1f03d7bfdfe935ce06fa2b7e9855106e` |
| 4 | `def` | [runCatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runcatch--8b78d443439ddec709abc829.md) | 50 | `declaration-track:8b78d443439ddec709abc8298095b8abb4e910d6dc2d6cc17e9b245cc38502ed` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/instance--59882b5ae1f947a3670e63cd.md) | 54 | `declaration-track:59882b5ae1f947a3670e63cda4d663087c766085c1c161ebfe0205ec584feffc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/instance--041e8bde193ee1b242e0f019.md) | 59 | `declaration-track:041e8bde193ee1b242e0f019933098d5be1d5b96cd8685fa3f8d20334ff90b95` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/instance--c761229ad4d293f5fd179091.md) | 62 | `declaration-track:c761229ad4d293f5fd17909148c39705df21cea858ff6eabfe54c11c576b2f19` |
| 8 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/lift--d32a2dcd70e49293e99a4bbb.md) | 70 | `declaration-track:d32a2dcd70e49293e99a4bbb4b8cb126a7b82cdd3e5d0dddc0b53c579400cb2f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/instance--f91cf7c9aebd37d9da436427.md) | 73 | `declaration-track:f91cf7c9aebd37d9da4364274d4442cd7c1f163830584cb803da329b025d6bbf` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/instance--9a64cdff231ce898f4fa1998.md) | 76 | `declaration-track:9a64cdff231ce898f4fa19984c65a82cc289fd5bf2bc305a2f82961f8a98e86e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/instance--b706485bcb9216cc279544fb.md) | 84 | `declaration-track:b706485bcb9216cc279544fb7a2970e8de64a91b3e15ebd23564333337307ce0` |
| 12 | `theorem` | [throw_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/throw-bind--caf7feb21738390ffd1bd161.md) | 86 | `result-track:caf7feb21738390ffd1bd1615e00dab01dc95bc9b30735b2d2223535f0b04e1f` |
| 13 | `theorem` | [run_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/run-pure--5b867b0b46c44d46c7eef6f7.md) | 88 | `result-track:5b867b0b46c44d46c7eef6f7ec46fac278be2bea57a9d9237ff977fe61f8ea1f` |
| 14 | `theorem` | [run_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/run-lift--d518ed3ed330afbc994b3af2.md) | 90 | `result-track:d518ed3ed330afbc994b3af28d7353cdc0c62c9a5b0fb3f4fc3a73ede0475ba3` |
| 15 | `theorem` | [run_throw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/run-throw--7db0b880dc9db15c73dc5387.md) | 92 | `result-track:7db0b880dc9db15c73dc538781eee2658234e78b13adf2a2be5f70efaeec5c9c` |
| 16 | `theorem` | [run_bind_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/run-bind-lift--1568d12e8485078ba4ae3289.md) | 94 | `result-track:1568d12e8485078ba4ae328957abe2119fd15d8f69492b00223aa88a993df846` |
| 17 | `theorem` | [run_bind_throw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/run-bind-throw--b211a720e874c6530bfa05d8.md) | 97 | `result-track:b211a720e874c6530bfa05d84da47b056365d14a143b893996bca8e1d4773ba2` |
| 18 | `theorem` | [runK_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runk-pure--339bde4144eaab4c1f17f37c.md) | 99 | `result-track:339bde4144eaab4c1f17f37c7fc835a55b86c29e31d73ae0b9395de8bcee1a5c` |
| 19 | `theorem` | [runK_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runk-lift--a26a7c6af615fb0670c01b7e.md) | 102 | `result-track:a26a7c6af615fb0670c01b7e362a2d308046f307c0825d8f4b46ee351601e7ea` |
| 20 | `theorem` | [runK_throw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runk-throw--2dee37686562088cb52c8d23.md) | 105 | `result-track:2dee37686562088cb52c8d2390b09ea3248ae7c3d8e2b17613041eca333f84da` |
| 21 | `theorem` | [runK_bind_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runk-bind-lift--26d4e9b0b2c59fcbd62fa1a8.md) | 108 | `result-track:26d4e9b0b2c59fcbd62fa1a8acd38f66ac7c0017786b1f580f393a08c7565e28` |
| 22 | `theorem` | [runCatch_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runcatch-pure--50bed92505ca4289dee3033a.md) | 111 | `result-track:50bed92505ca4289dee3033a3f7b07e8ef700d3c81b78b85b62ee2f67fd56d8b` |
| 23 | `theorem` | [runCatch_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runcatch-lift--b9728d99ba191e701a2e4383.md) | 113 | `result-track:b9728d99ba191e701a2e438334287fbc7bb942cfa4ed9f6a0a45bc59bf6e316f` |
| 24 | `theorem` | [runCatch_throw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runcatch-throw--65861caee41e02efa3a6061d.md) | 116 | `result-track:65861caee41e02efa3a6061d846a0a3cf7be5e5fecb377d91e04e521b7ecbc28` |
| 25 | `theorem` | [runCatch_bind_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runcatch-bind-lift--eaa0cd386ed40865550c666d.md) | 118 | `result-track:eaa0cd386ed40865550c666dc8467519de8f3bc97048cd55b9ca746f0ebdca90` |
| 26 | `theorem` | [runCatch_bind_throw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptCps/Variantdc07a202fd2f811aa5082f6f2a1fd1ca54fa199c3c5ec3e6c5ee00b881c5225e.lean/declarations/runcatch-bind-throw--23480ba6f6e4d26e83e4a971.md) | 121 | `result-track:23480ba6f6e4d26e83e4a9716b9fc9663bdc8e60e380a69c5f743fa3f23731de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
