# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveEncodable.Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "522697bdddee7643f0337e16d99fe30b36c566d1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `522697bdddee7643f0337e16d99fe30b36c566d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 11; external provider; requires a separately pinned dependency.
- `Aesop.BuiltinRules` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [S](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/s--9fa77034343d3764d8bb564c.md) | 77 | `declaration-track:9fa77034343d3764d8bb564ca6e95cd68c99da4589f40d34f1f40cf4dcc3da73` |
| 2 | `def` | [S.encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/s-encode--3472ab0e8a336078d38dfa20.md) | 81 | `declaration-track:3472ab0e8a336078d38dfa208958f54a739b5b8e6e1868fa68804ad6698304d3` |
| 3 | `lemma` | [nat_unpair_lt_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/nat-unpair-lt-2--ac2d58be62d3acaaf99f8122.md) | 85 | `result-track:ac2d58be62d3acaaf99f8122a8dfaa02db1c7c1c9b1e7d9252fe1fd1400479bd` |
| 4 | `def` | [S.decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/s-decode--0c44d95df4fa541fdeb85d74.md) | 93 | `declaration-track:0c44d95df4fa541fdeb85d749c4521d307f65e656c604e4cc6e81896da838af7` |
| 5 | `def` | [S_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/s-equiv--d55514f6981bc34a0511aee5.md) | 103 | `declaration-track:d55514f6981bc34a0511aee56c45062c0c05bce38706678caa5f7e7b6e4c1317` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/instance--bd254c5fb31cdd1508a06f27.md) | 132 | `declaration-track:bd254c5fb31cdd1508a06f27dbce72b079bb6a3aaa5e425830c13d17230a2507` |
| 7 | `def` | [mkToSMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/mktosmatch--7167afa16479a014e7935d78.md) | 144 | `declaration-track:7167afa16479a014e7935d788e389b3912b0ff0ced0facd42f448828e7cda97d` |
| 8 | `def` | [mkToSFuns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/mktosfuns--85eb510116a0ad82851ac0b0.md) | 180 | `declaration-track:85eb510116a0ad82851ac0b0d296de77f2e5b4a88e178e5ac045acaca93c5016` |
| 9 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/anonymous--a1a52b95f1735b62bbb5eef2.md) | 189 | `declaration-track:a1a52b95f1735b62bbb5eef2b7bd96dc8a6716a5fc343ac49a0eecb45488225d` |
| 10 | `def` | [mkFromSMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/mkfromsmatch--193218c69c6487e850e0c9c8.md) | 198 | `declaration-track:193218c69c6487e850e0c9c833fdc79954518dcef7d6b5894fb972c38c457bcb` |
| 11 | `def` | [mkFromSFuns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/mkfromsfuns--6fd081c77378492dc939edf3.md) | 248 | `declaration-track:6fd081c77378492dc939edf39ab15ac38783d07e31f0831a69ef320424acdb6a` |
| 12 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/anonymous--e8bd0f51c82e60a049e5a2f8.md) | 259 | `declaration-track:e8bd0f51c82e60a049e5a2f890d8bd20b960d43cbdddea328ad0f7511d511d0e` |
| 13 | `def` | [mkInjThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/mkinjthms--7b49cdfc5ed7f554f2d39a90.md) | 272 | `declaration-track:7b49cdfc5ed7f554f2d39a9049b78765067c9a66e275767a11f502a510dff8dc` |
| 14 | `theorem` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/anonymous--e31809e58b9be2e4a025dd23.md) | 292 | `result-track:e31809e58b9be2e4a025dd23b8b53c0796eb2bbbc986690082e74ef6aeba681b` |
| 15 | `def` | [mkEncodableInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/mkencodableinstancecmds--cefc744c781d1f07c2c37899.md) | 304 | `declaration-track:cefc744c781d1f07c2c37899e2d5bc461e761b9feffad679f55dcbc94f0cc18a` |
| 16 | `instance` | [$binders](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/binders--2d36827d946606b4c1392807.md) | 320 | `declaration-track:2d36827d946606b4c13928079d697426826d22da62cf6d7da1242ec896a79c4e` |
| 17 | `def` | [mkEncodableCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/mkencodablecmds--12673b3cc11c9873bb26ef0b.md) | 326 | `declaration-track:12673b3cc11c9873bb26ef0be3128f564ddf97a1c4b0bd6eb6a8f138e9dc84bf` |
| 18 | `def` | [mkEncodableInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/mkencodableinstance--e6d86176f0ecf74b46edb62a.md) | 351 | `declaration-track:e6d86176f0ecf74b46edb62ab73383c8ababb457e7da11e2cf4098e8b331c56e` |
| 19 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/declarations/initialize--cf8447bc20e6f76ab7713f4c.md) | 367 | `declaration-track:cf8447bc20e6f76ab7713f4c3d085c8d6c00ed5f32efd2420afd02a0b8acb9f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
