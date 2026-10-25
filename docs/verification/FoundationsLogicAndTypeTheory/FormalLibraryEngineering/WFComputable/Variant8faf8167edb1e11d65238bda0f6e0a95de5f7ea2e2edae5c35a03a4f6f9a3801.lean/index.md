# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WFComputable.Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "924036e16e3e7e4f31018cdbcaa5e3053ee4e5d2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `924036e16e3e7e4f31018cdbcaa5e3053ee4e5d2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.NotationExtra` — import line 9; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [wfRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/wfrel--0c499828c0020d8b662ac6cf.md) | 34 | `declaration-track:0c499828c0020d8b662ac6cf582caacf827c682e1b100bc50bd3826b4ddf7073` |
| 2 | `def` | [recC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/recc--83a3e0c6ea03732bfddf3a26.md) | 39 | `declaration-track:83a3e0c6ea03732bfddf3a266f0ab7f245e39281b2a4d7ca2d949079a4f4b8d1` |
| 3 | `theorem` | [rec_eq_recC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/rec-eq-recc--180a087c5a6240b502ad9c52.md) | 46 | `result-track:180a087c5a6240b502ad9c52c1fd6b3943833c4d8ade4e0e09c71bc04a3a6962` |
| 4 | `abbrev` | [ndrecC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/ndrecc--8d1879b5a7ed6ca32779e197.md) | 55 | `declaration-track:8d1879b5a7ed6ca32779e197797909545ed91a4639750ebea9ba9215e503176c` |
| 5 | `theorem` | [ndrec_eq_ndrecC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/ndrec-eq-ndrecc--854f2dd05df70b5672e0525e.md) | 60 | `result-track:854f2dd05df70b5672e0525eac0f0a9c2ced70b60989172867b3af1a66217904` |
| 6 | `abbrev` | [ndrecOnC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/ndreconc--62233535a4f8e95ecb37a698.md) | 65 | `declaration-track:62233535a4f8e95ecb37a698d81c9ae25dd8915fcd08be4a1dfc7ebcf98750ef` |
| 7 | `theorem` | [ndrecOn_eq_ndrecOnC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/ndrecon-eq-ndreconc--f63a35817853b8620024ef82.md) | 69 | `result-track:f63a35817853b8620024ef82722a8021a40f55dd55b8b78864b261f57924fec7` |
| 8 | `def` | [fixFC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/fixfc--82b21fdc65809aee6457f129.md) | 78 | `declaration-track:82b21fdc65809aee6457f129db7f965ca2c845013266de07a299cb1935267b51` |
| 9 | `theorem` | [fixF_eq_fixFC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/fixf-eq-fixfc--1aea53fc5477653933489e89.md) | 83 | `result-track:1aea53fc5477653933489e89b98b988ac78b48e6b800467e1fd7650741bea136` |
| 10 | `def` | [fixC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/fixc--9c89399b2fdb1c909780e271.md) | 88 | `declaration-track:9c89399b2fdb1c909780e27185552741fa2759e3f96b46d00a98e202c3f3319a` |
| 11 | `theorem` | [fix_eq_fixC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFComputable/Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801.lean/declarations/fix-eq-fixc--9de33234172e42ab4ab8555e.md) | 95 | `result-track:9de33234172e42ab4ab8555e69fbcedc6afbdda75ec56acad12ea61888e6c66c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
