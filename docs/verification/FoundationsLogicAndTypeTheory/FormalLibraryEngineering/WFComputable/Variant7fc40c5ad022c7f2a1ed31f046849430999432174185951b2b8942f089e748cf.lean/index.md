# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WFComputable.Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93ada9d9df3918eaa700c3de0e90204498c032c3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93ada9d9df3918eaa700c3de0e90204498c032c3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.NotationExtra` — import line 14; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [wfRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/wfrel--fe9b952062df71ceaae9b8bc.md) | 42 | `declaration-track:fe9b952062df71ceaae9b8bc1afa3f9f361df7caf12538cc032ebf085a700109` |
| 2 | `def` | [recC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/recc--d3c5bd651947257b55a0b2c5.md) | 47 | `declaration-track:d3c5bd651947257b55a0b2c516046c62bedd370eb3cd72509fbcb2875ec071eb` |
| 3 | `theorem` | [rec_eq_recC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/rec-eq-recc--06609ae6f3039e52638220e1.md) | 54 | `result-track:06609ae6f3039e52638220e172cbc9d75ac0c55e9e9ecfb2546a8f580701b6d9` |
| 4 | `abbrev` | [ndrecC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/ndrecc--4fa9f0c0bd852c756d689ded.md) | 63 | `declaration-track:4fa9f0c0bd852c756d689deda1b6af65e6168a22aa2ce170e7cc816327792cd9` |
| 5 | `theorem` | [ndrec_eq_ndrecC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/ndrec-eq-ndrecc--e73a24bd0d120506da427322.md) | 68 | `result-track:e73a24bd0d120506da4273221fc2b6b25fa90b3bc8ec7168621dd1395c6d6a8b` |
| 6 | `abbrev` | [ndrecOnC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/ndreconc--096a65662e95e148b5577209.md) | 73 | `declaration-track:096a65662e95e148b5577209afcaabf147582b5b1c6213da9f9831c5c57ee3ba` |
| 7 | `theorem` | [ndrecOn_eq_ndrecOnC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/ndrecon-eq-ndreconc--0a855d73fb1706e790ff61ae.md) | 77 | `result-track:0a855d73fb1706e790ff61ae2d256fd9a4e55aaf1379569916bbbb5c8aa2cfe7` |
| 8 | `def` | [fixFC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/fixfc--b1dbef431cc39f0add7210d0.md) | 86 | `declaration-track:b1dbef431cc39f0add7210d0923d4a2814314cb940e240d63de93e10535ab544` |
| 9 | `theorem` | [fixF_eq_fixFC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/fixf-eq-fixfc--a6434678e794d92a914ea4ba.md) | 91 | `result-track:a6434678e794d92a914ea4ba09b5ec8781e6ffbacaf5636f3827ae62112b895e` |
| 10 | `def` | [fixC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/fixc--2547e6cfb6ea6695a66d9ae6.md) | 96 | `declaration-track:2547e6cfb6ea6695a66d9ae6a6e1b33213d6daa52bf3ff80e6902bd7d5932623` |
| 11 | `theorem` | [fix_eq_fixC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf.lean/declarations/fix-eq-fixc--16281b6d5fbcc30b589b71c4.md) | 103 | `result-track:16281b6d5fbcc30b589b71c43e83c8b74e0edf911387e7cd23e83df23c4a010f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
