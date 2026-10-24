# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Inv.Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d40bdab31e820d98f457487eda722610a0d8ac5c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d40bdab31e820d98f457487eda722610a0d8ac5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/invofmemrange--017db795e25294742719034c.md) | 49 | `declaration-track:017db795e25294742719034c8991bd7201217dbb1667862eccae4ac98baef64c` |
| 2 | `theorem` | [left_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/left-inv-of-invofmemrange--296d1e0b0d55470491ebe220.md) | 53 | `result-track:296d1e0b0d55470491ebe220c8a9a13dbc8f8fa7e2cdbe718140eacefbe998e0` |
| 3 | `theorem` | [right_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/right-inv-of-invofmemrange--199c83fb4479f23063740416.md) | 57 | `result-track:199c83fb4479f2306374041699aa0344c13e037eeb90c996294778bf6bd1cde0` |
| 4 | `theorem` | [invFun_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/invfun-restrict--27448bdf3de16174056fecb7.md) | 60 | `result-track:27448bdf3de16174056fecb7318af9dbc98ad3a0fbf75a0a53bc999577015dc7` |
| 5 | `theorem` | [invOfMemRange_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/invofmemrange-surjective--b8323d0483ec56d608e51b74.md) | 65 | `result-track:b8323d0483ec56d608e51b743969b718f67203978b2dc801fc8654eead68fa3b` |
| 6 | `def` | [invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/invofmemrange--0cf6c4c40ccb31c06c632b39.md) | 82 | `declaration-track:0cf6c4c40ccb31c06c632b395684ee73d8644d13922b46cf4e2c8a14173a9a77` |
| 7 | `theorem` | [left_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/left-inv-of-invofmemrange--06c4635b54562af4cce2efe5.md) | 86 | `result-track:06c4635b54562af4cce2efe5e1eb8f7d8b7f10b0cc742044d6e0c0736a838316` |
| 8 | `theorem` | [right_inv_of_invOfMemRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/right-inv-of-invofmemrange--91cc5094fbe029276f8f8af2.md) | 90 | `result-track:91cc5094fbe029276f8f8af2cd77d57d797af53dece918c67741eb48689afc52` |
| 9 | `theorem` | [invFun_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/invfun-restrict--974bf702d444a4345dff0afd.md) | 93 | `result-track:974bf702d444a4345dff0afd205d5b6b1532fe5ed59cbd27b6d093d7d1a9dfe6` |
| 10 | `theorem` | [invOfMemRange_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/invofmemrange-surjective--29d3dd3dfa695968794dfb33.md) | 98 | `result-track:29d3dd3dfa695968794dfb338617ae0ba9a1988607b2a27ff3d0d724872c5238` |
| 11 | `def` | [chooseX](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/choosex--935df6b59ecf36e4a123bf7e.md) | 119 | `declaration-track:935df6b59ecf36e4a123bf7ed37d799ea3fef2c0c181dba0b4e5fd0e922cbee0` |
| 12 | `def` | [choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/choose--75780c1f1dae866c2fd61764.md) | 124 | `declaration-track:75780c1f1dae866c2fd61764564b9cddf07e95a572676a32fb2a48c6ce0ec406` |
| 13 | `theorem` | [choose_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/choose-spec--6464ce5dc2b1ff0ff84c69d5.md) | 127 | `result-track:6464ce5dc2b1ff0ff84c69d52d2f79de580946d42e2ba079ac0b681f1bc6c4ff` |
| 14 | `theorem` | [choose_subtype_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/choose-subtype-eq--7f146da21306fd815e7b041d.md) | 130 | `result-track:7f146da21306fd815e7b041dd58a2c3f4b8c6c8deb00df2891425366b44028f7` |
| 15 | `def` | [bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/bijinv--f72943bab41ec06aa1fb164e.md) | 145 | `declaration-track:f72943bab41ec06aa1fb164e9ab77cba4ccdc6c8ed0001b7d5762804c7524a88` |
| 16 | `theorem` | [leftInverse_bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/leftinverse-bijinv--f38279b0cd4138515789d44e.md) | 148 | `result-track:f38279b0cd4138515789d44ea75f88b91be32def8774d8d8463e0f21bb4ea659` |
| 17 | `theorem` | [rightInverse_bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/rightinverse-bijinv--9e89e60c1ff2fd8238d90201.md) | 151 | `result-track:9e89e60c1ff2fd8238d90201a6f440d4105dadea2f3c89d99801aa55179477ff` |
| 18 | `theorem` | [bijective_bijInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Inv/Variantf2fd1db98a0bd7a75beef5bd0d53ae8be7ea7858bedd98ef9a0b42f93476125b.lean/declarations/bijective-bijinv--55fc241734d2399364f1098b.md) | 154 | `result-track:55fc241734d2399364f1098b4eaa3373f118f4739f22f6c8ffab3643341ef4b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
