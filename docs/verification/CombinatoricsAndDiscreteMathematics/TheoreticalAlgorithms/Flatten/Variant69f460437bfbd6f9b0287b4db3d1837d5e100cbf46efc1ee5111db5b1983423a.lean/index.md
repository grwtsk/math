# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Flatten.Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c8ef7ebadea0f8ab85ca63d6e0ac7c5d1dc05e1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c8ef7ebadea0f8ab85ca63d6e0ac7c5d1dc05e1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FlattenOperation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/flattenoperation--d35f98450bf908517517e839.md) | 11 | `declaration-track:d35f98450bf908517517e83955d6d11942d54f8248f060b21c8664268eb936c6` |
| 2 | `structure` | [LocalOverwrite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwrite--960d591c12d073cc77fe6a20.md) | 26 | `declaration-track:960d591c12d073cc77fe6a204201f156069f1e2c20c62b93ae036cec3466cacf` |
| 3 | `def` | [flattenValue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/flattenvalue--2dd70c2dd9dd80ade6e2f4f8.md) | 29 | `declaration-track:2dd70c2dd9dd80ade6e2f4f8493a8ed8ab218487d4a2e67fd9a4fe5dc3324165` |
| 4 | `theorem` | [localOverwriteFlatten_replace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-replace--c3df08c17810b5e8f41a2cd9.md) | 47 | `result-track:c3df08c17810b5e8f41a2cd9a0e15a364435bd568a57bcdb5ec70a9378f2a2a1` |
| 5 | `theorem` | [localOverwriteFlatten_restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-restrict--b966d58d9b34b0f90b3b40d3.md) | 53 | `result-track:b966d58d9b34b0f90b3b40d3c3a4e80d82cb2f6e78b612e15b056b4c82d85833` |
| 6 | `theorem` | [localOverwriteFlatten_excise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-excise--252109f6e9f9fd179cfde279.md) | 59 | `result-track:252109f6e9f9fd179cfde279e9b2bf0d20c1ac74767b80f415c0f9fa52fa8fc4` |
| 7 | `theorem` | [localOverwriteFlatten_collar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-collar--71bfa006cf83f94a685abcc2.md) | 65 | `result-track:71bfa006cf83f94a685abcc277eec22016b46c153f81339318fd65634425f7bc` |
| 8 | `theorem` | [localOverwriteFlatten_cap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-cap--46052bd8d1fef38bb36ecbf3.md) | 71 | `result-track:46052bd8d1fef38bb36ecbf3150bbb9494aec5192afed32a8fef3462fd36b29b` |
| 9 | `theorem` | [localOverwriteFlatten_graft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-graft--cf81225b436e0f55e3f2995a.md) | 77 | `result-track:cf81225b436e0f55e3f2995a840fceae1a7cb1622f636261670782b1a5f13cf1` |
| 10 | `theorem` | [localOverwriteFlatten_flow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-flow--5ed00586625ffd48803e2b8e.md) | 83 | `result-track:5ed00586625ffd48803e2b8e450592dcec554a8644a9ce0a36da312a985173f3` |
| 11 | `theorem` | [localOverwriteFlatten_surgeryCut](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-surgerycut--3e5058871d8b9fd1e71fc578.md) | 89 | `result-track:3e5058871d8b9fd1e71fc578d4a24942fb536dac47286a6c66ba72ea3e867b09` |
| 12 | `theorem` | [localOverwriteFlatten_surgeryPaste](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-surgerypaste--066e7bd725e3277e1eead697.md) | 95 | `result-track:066e7bd725e3277e1eead69737e0f00eef7d1829fa7f6abe70ad1930b0c48c31` |
| 13 | `theorem` | [localOverwriteFlatten_rollback](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-rollback--908be04a05d3776ec806de9f.md) | 101 | `result-track:908be04a05d3776ec806de9fb6e73da084db41c42de624ae22f61a1959de5fec` |
| 14 | `theorem` | [localOverwriteFlatten_merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-merge--8cff5c5608a330631595bccb.md) | 107 | `result-track:8cff5c5608a330631595bccb4b681f3bd9cc765abde6e49e15bb163441de22fd` |
| 15 | `theorem` | [localOverwriteFlatten_replaceDefault](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/localoverwriteflatten-replacedefault--16779476092249a006db0877.md) | 113 | `result-track:16779476092249a006db0877c9b4f70d23aa6b02690046afc684437cfbdf35e5` |
| 16 | `def` | [repertoire](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/repertoire--e0cbee9d3d9d9764730989d5.md) | 119 | `declaration-track:e0cbee9d3d9d9764730989d5a67dd930103eab03add0b4bee956df78bc9adde1` |
| 17 | `theorem` | [replace_is_default](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variant69f460437bfbd6f9b0287b4db3d1837d5e100cbf46efc1ee5111db5b1983423a.lean/declarations/replace-is-default--ac2ad3c74db59d3e31688de7.md) | 134 | `result-track:ac2ad3c74db59d3e31688de75b120a8bd619f44392096c191017d0b255d894b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
