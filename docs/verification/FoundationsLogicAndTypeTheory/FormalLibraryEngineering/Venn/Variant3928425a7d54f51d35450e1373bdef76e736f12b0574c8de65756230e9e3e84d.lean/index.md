# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Venn.Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d79385b8a9f068f04f83965078fea4782ac8043",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d79385b8a9f068f04f83965078fea4782ac8043`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.HashMap` — import line 1; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic` — import line 2; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.PenroseDiagram` — import line 3; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.HtmlDisplay` — import line 4; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.Panel` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSubset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/hassubset--dfb4906c4dbb5682081a1762.md) | 13 | `declaration-track:dfb4906c4dbb5682081a1762b097bb3919041ad0256c6972951fa6abd96c4e76` |
| 2 | `def` | [Set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/set--27169d8b318e6cb1d91a2dd1.md) | 21 | `declaration-track:27169d8b318e6cb1d91a2dd1ac291af0f00a488ca32271cc5556fd54d6844c2c` |
| 3 | `def` | [Mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/mem--7fb458df74307007c922496e.md) | 26 | `declaration-track:7fb458df74307007c922496e504c7b9a305f764cf48d962f8adfde8e6cbbc458` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/instance--e44aa3ef46dfee25589435c0.md) | 29 | `declaration-track:e44aa3ef46dfee25589435c05dec3a4d593fd46728c6676143da7ba218856d77` |
| 5 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/ext--9cbc9c0938a3afe604f858f2.md) | 32 | `result-track:9cbc9c0938a3afe604f858f2c505af8ca5f5572060109174ca566ce6d0df31de` |
| 6 | `def` | [Subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/subset--bdfd1054d9aef2e88392b655.md) | 35 | `declaration-track:bdfd1054d9aef2e88392b65517f0739da0539f758f46a6053e5d730ed19f0c59` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/instance--f2d07ef387f287b9825a97bf.md) | 40 | `declaration-track:f2d07ef387f287b9825a97bf0ec2940bb936d5fde164b130318bd0210d27b57e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/instance--42ec29dd51463e7f1755247b.md) | 43 | `declaration-track:42ec29dd51463e7f1755247b3e3175ea7c57f65df41256c94a2088bbff8c75bf` |
| 9 | `def` | [isSubsetPred?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/issubsetpred--64dca2b7d6a65c58942f1035.md) | 51 | `declaration-track:64dca2b7d6a65c58942f1035d76afd38f78096f4a037a123fd89d9233a6efd0b` |
| 10 | `abbrev` | [ExprEmbeds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/exprembeds--8377f4185c9e0f82812e130c.md) | 56 | `declaration-track:8377f4185c9e0f82812e130c991b0c8d849e5e69f70e64e21c943ec357438299` |
| 11 | `def` | [mkSetDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/mksetdiag--3428c36801645645fb5ed29f.md) | 59 | `declaration-track:3428c36801645645fb5ed29fb5c940b6c105bf0a05691409c02796135c13c910` |
| 12 | `def` | [isSetGoal?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/issetgoal--3f8e6807f1b39c27074b4dc5.md) | 69 | `declaration-track:3f8e6807f1b39c27074b4dc5910b1635c5cae45ae496a27cff682c5472e31f55` |
| 13 | `structure` | [Params](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/params--f9d67cafdf52bb90d78a124c.md) | 90 | `declaration-track:f9d67cafdf52bb90d78a124c78eb186d645d24dc111bcdb40f7caac097083d97` |
| 14 | `structure` | [Response](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/response--5d39d6b2300a7a5bc457b1b1.md) | 97 | `declaration-track:5d39d6b2300a7a5bc457b1b169fed89f23c07f03c4c6337da642a012a4810463` |
| 15 | `def` | [getVennGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/getvenngoal--e4f06b98e164c6d1509d88c4.md) | 104 | `declaration-track:e4f06b98e164c6d1509d88c40d9bc40198749fa848eb930a790dd7395c85a2cc` |
| 16 | `def` | [SetDisplayPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/setdisplaypanel--48ac336fae15067b15231a2c.md) | 115 | `declaration-track:48ac336fae15067b15231a2c15fae632aa17cfbac4e86ad4194294732962829f` |
| 17 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/syntax--7ad9fe1dc6b05c40b17cb6b2.md) | 158 | `declaration-track:7ad9fe1dc6b05c40b17cb6b279c199c279808516a40cc0702d792a9589e78e5c` |
| 18 | `def` | [withVennDisplay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/withvenndisplay--792764494dc49fddbd7077c9.md) | 162 | `declaration-track:792764494dc49fddbd7077c9517ac3277d3d02d943cefefea313517197fc4555` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variant3928425a7d54f51d35450e1373bdef76e736f12b0574c8de65756230e9e3e84d.lean/declarations/example--5ba4631fa6fa88098b0bafad.md) | 168 | `declaration-track:5ba4631fa6fa88098b0bafad495768676c515c5c61c1ebaae799c366169efd8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
