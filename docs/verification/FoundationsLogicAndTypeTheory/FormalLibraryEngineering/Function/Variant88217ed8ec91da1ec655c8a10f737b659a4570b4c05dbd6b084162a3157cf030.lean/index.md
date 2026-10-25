# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Function.Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3526ccde628989d0d4658dbec3c3f334bcb7a7f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3526ccde628989d0d4658dbec3c3f334bcb7a7f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.NotationExtra` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Classical` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/curry--65073f969e607a56160b0431.md) | 23 | `declaration-track:65073f969e607a56160b04314a271c14e9fab63de9022c502afba7204e693a90` |
| 2 | `def` | [uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/uncurry--eacd6b8725a9e53a40497684.md) | 33 | `declaration-track:eacd6b8725a9e53a40497684562fcbb1bbb4295cbf9b04d0375512330dba1749` |
| 3 | `theorem` | [curry_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/curry-uncurry--0eade2fefacc18b984b0a9c9.md) | 36 | `result-track:0eade2fefacc18b984b0a9c974e55540adb1468c92a4ae8011d179d7af3d0676` |
| 4 | `theorem` | [uncurry_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/uncurry-curry--ce70b38b09daeba97405a1c6.md) | 40 | `result-track:ce70b38b09daeba97405a1c67ba66dde42855fbbd36b777340829f1b8ec04c4d` |
| 5 | `theorem` | [uncurry_apply_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/uncurry-apply-pair--9b0d4d1e2f4fa71e1e84a993.md) | 44 | `result-track:9b0d4d1e2f4fa71e1e84a9931ca6d1c35023bf18da7324895870aadc4656181f` |
| 6 | `theorem` | [curry_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/curry-apply--d73aad5d5bc51c2da007054c.md) | 48 | `result-track:d73aad5d5bc51c2da007054c89e6ab9f2b9a2bf538a3d3e07dd5dae70465b366` |
| 7 | `def` | [Injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective--c628e51d32f6f239b3dd0e89.md) | 53 | `declaration-track:c628e51d32f6f239b3dd0e89efb2d0a7988682ba5ab6f42bc360156180de5226` |
| 8 | `theorem` | [Injective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective-comp--351f72b16dfc1c1865a38d07.md) | 56 | `result-track:351f72b16dfc1c1865a38d076d6f05123967a4b712eba61f90c7b9c7cb132dba` |
| 9 | `def` | [Surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/surjective--3aef37b9c78cc579cbb7f450.md) | 62 | `declaration-track:3aef37b9c78cc579cbb7f450430749d2b63202fe91175835a9b42f748ff0ed61` |
| 10 | `theorem` | [Surjective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/surjective-comp--993dd7ccd609ffb8778698b9.md) | 65 | `result-track:993dd7ccd609ffb8778698b93ce674dceb8ce94ecaac3577fdc52c619dbc35a0` |
| 11 | `def` | [LeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/leftinverse--5ae51701b000cf86dc24c6d9.md) | 73 | `declaration-track:5ae51701b000cf86dc24c6d9567af618a09090fb7e1548810b06a1c902b7b84f` |
| 12 | `def` | [HasLeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/hasleftinverse--41c2be80d244b225796d7244.md) | 78 | `declaration-track:41c2be80d244b225796d72445149601cf18ba9b92b2696134963b3593152e9f3` |
| 13 | `def` | [RightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/rightinverse--fc6315284049fba17eac094f.md) | 83 | `declaration-track:fc6315284049fba17eac094f8c2b4ce21a9b866b1038d9e5206eec99ae19990c` |
| 14 | `def` | [HasRightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/hasrightinverse--26f3b827c80469ee52b2c6df.md) | 88 | `declaration-track:26f3b827c80469ee52b2c6df28e0e6e8e4dcb44013a53017e0807732ada9b231` |
| 15 | `theorem` | [LeftInverse.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/leftinverse-injective--9dc1c1a8322a14f53d8ca635.md) | 91 | `result-track:9dc1c1a8322a14f53d8ca6351d8e38dc5f0b29f229a9578eb4aaaddc4979f818` |
| 16 | `theorem` | [HasLeftInverse.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/hasleftinverse-injective--39212a2e78cbbd9011a164a3.md) | 94 | `result-track:39212a2e78cbbd9011a164a3bc03819dcda2e10b632edb135df997c3195da5fa` |
| 17 | `theorem` | [rightInverse_of_injective_of_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/rightinverse-of-injective-of-leftinverse--e38c0ea77b769d98766a6183.md) | 97 | `result-track:e38c0ea77b769d98766a61830869a756661fb2fa6c56acde86eefc7ea4f78f68` |
| 18 | `theorem` | [RightInverse.surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/rightinverse-surjective--136b5446ccb32e870dff8126.md) | 102 | `result-track:136b5446ccb32e870dff812680efcc7b984b1eed11a74d088afb10d5fa1b7eb8` |
| 19 | `theorem` | [HasRightInverse.surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/hasrightinverse-surjective--c9d75832cc46f1267b434230.md) | 105 | `result-track:c9d75832cc46f1267b434230de407f17caf095b13e21408c2bc30c4ff3965975` |
| 20 | `theorem` | [leftInverse_of_surjective_of_rightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/leftinverse-of-surjective-of-rightinverse--628a4ca40fcaac6696c3dbdb.md) | 108 | `result-track:628a4ca40fcaac6696c3dbdb8ef8b56da1487e6c9bfd20f712ab9bf3bfa28f12` |
| 21 | `theorem` | [injective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective-id--46a10a05b868fce986c61efc.md) | 112 | `result-track:46a10a05b868fce986c61efcfeb8560e75f61f555be55ad36a506c3fbc904bba` |
| 22 | `theorem` | [surjective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/surjective-id--b2eb60e03e7dc3e768400ce1.md) | 114 | `result-track:b2eb60e03e7dc3e768400ce16e81c35b9fc4466e810a40ecd8aea7092c20d066` |
| 23 | `theorem` | [Injective.eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective-eq-iff--77f34c9ea1cee2fdb24c11f5.md) | 118 | `result-track:77f34c9ea1cee2fdb24c11f527072a4520f37a8bad9040132196ee016dbf7f7d` |
| 24 | `theorem` | [Injective.eq_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective-eq-iff--edf5961385b2859293a11bbc.md) | 121 | `result-track:edf5961385b2859293a11bbcfe929893f455750f82ed57658ec3a9fb15e968fe` |
| 25 | `theorem` | [Injective.ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective-ne--b393b248dd9751889e5cdeff.md) | 124 | `result-track:b393b248dd9751889e5cdeff660f99385cc4e1c91a28190362306c001a47e1bf` |
| 26 | `theorem` | [Injective.ne_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective-ne-iff--ca678302f98488d939874be9.md) | 127 | `result-track:ca678302f98488d939874be9741a3938fdf17ff6312a01c62e7af0e04f5f5f6b` |
| 27 | `theorem` | [Injective.ne_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective-ne-iff--e19103e93c0b7f0d665b8037.md) | 130 | `result-track:e19103e93c0b7f0d665b80378988ce97e6465029b9a79363217d4094b582b953` |
| 28 | `theorem` | [LeftInverse.id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/leftinverse-id--5eeeba20d350cd07302d413b.md) | 133 | `result-track:5eeeba20d350cd07302d413bd328714cbdcf25cf488064031b402b7728d2c12a` |
| 29 | `theorem` | [RightInverse.id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/rightinverse-id--263ce6fba7f0a2a7286b9d59.md) | 136 | `result-track:263ce6fba7f0a2a7286b9d59854e8537c1260bf5f2514c1032592bbe3515702a` |
| 30 | `theorem` | [Injective.exists_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective-exists-leftinverse--17a515a2f682490acb69ea08.md) | 139 | `result-track:17a515a2f682490acb69ea082c3ea2ebf4f1e2f317108d5f82354400e32cc90c` |
| 31 | `theorem` | [Injective.leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variant88217ed8ec91da1ec655c8a10f737b659a4570b4c05dbd6b084162a3157cf030.lean/declarations/injective-leftinverse--aee1898e09b96bffdf46c194.md) | 154 | `result-track:aee1898e09b96bffdf46c1945c1c10cca0e8759f4eea75c4d1c54aeebcf0679e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
