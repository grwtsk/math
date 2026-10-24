# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Quantale.Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc915611c848c9d804f08b33d285a0c489c71c7a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc915611c848c9d804f08b33d285a0c489c71c7a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean.json)

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
| 1 | `class` | [IsAddQuantale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/isaddquantale--fe50dc6b35356c6bb100697f.md) | 74 | `declaration-track:fe50dc6b35356c6bb100697f8348963a2c847f44da807328249431fd58835bd0` |
| 2 | `structure` | [AddQuantale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/addquantale--0a799105a35cc2de222eadeb.md) | 82 | `declaration-track:0a799105a35cc2de222eadeb1a5ba604cd4156533bd5db19621427dbf132dcec` |
| 3 | `class` | [IsQuantale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/isquantale--9a45677f6f8e980560881cce.md) | 87 | `declaration-track:9a45677f6f8e980560881cce2c4b8cdb1eac040aab1b318c72bcf4f046c1c929` |
| 4 | `structure` | [Quantale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/quantale--d7dd4e45dd90e3438cb571de.md) | 95 | `declaration-track:d7dd4e45dd90e3438cb571de498fb4e75918c1234c2921b36530078bc6d31cf9` |
| 5 | `theorem` | [mul_sSup_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/mul-ssup-distrib--7ba6962d997e4694f8091bb7.md) | 104 | `result-track:7ba6962d997e4694f8091bb76bcfd8f96df85e8a427639b09c5e7d99de395b1f` |
| 6 | `theorem` | [sSup_mul_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/ssup-mul-distrib--83be13607200834f8d740a3a.md) | 107 | `result-track:83be13607200834f8d740a3a7c52c63f49470a824e057c2f0d68cf18f783cb9e` |
| 7 | `def` | [leftAddResiduation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/leftaddresiduation--d5bce0edc3bfb89315131393.md) | 119 | `declaration-track:d5bce0edc3bfb8931513139316e3f5ff037e399473b4042945f56d04541e2ddc` |
| 8 | `def` | [rightAddResiduation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/rightaddresiduation--e453326f3775ef438d8a791a.md) | 124 | `declaration-track:e453326f3775ef438d8a791a034386823b794cc7bbafb725d6c002f5fc4424f6` |
| 9 | `def` | [leftMulResiduation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/leftmulresiduation--26d1b24989c6f43ca11c51db.md) | 144 | `declaration-track:26d1b24989c6f43ca11c51db5268584a8f6f167c57df4a90955cfc7d905f439c` |
| 10 | `def` | [rightMulResiduation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/rightmulresiduation--0fd23979325c143e2b1999e4.md) | 151 | `declaration-track:0fd23979325c143e2b1999e45211acb3cc8dd952b39948cff7c81b59c0290624` |
| 11 | `theorem` | [mul_iSup_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/mul-isup-distrib--02754e897d90467a7196f992.md) | 160 | `result-track:02754e897d90467a7196f99279f06efa3ab971eac7c00a28dceba4fd2b1f6d9f` |
| 12 | `theorem` | [iSup_mul_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/isup-mul-distrib--dcbc45fd8a47a313c66cccfd.md) | 164 | `result-track:dcbc45fd8a47a313c66cccfd08c0bbfe60008f0580fa49ec515f7cfa22656ab7` |
| 13 | `theorem` | [mul_sup_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/mul-sup-distrib--4891480591e845d6b129b650.md) | 168 | `result-track:4891480591e845d6b129b650a58aaf573adfca8f12a5cb4b1a3b24e2f96d66d3` |
| 14 | `theorem` | [sup_mul_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/sup-mul-distrib--3efb4608a5ac45619333ef1f.md) | 172 | `result-track:3efb4608a5ac45619333ef1f3464efefe249d685e679f5fc3d7271927d484b08` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/instance--91a812cf887dc5c43bbeab83.md) | 176 | `declaration-track:91a812cf887dc5c43bbeab8311f1d99caeb9b0e3a2a44442ff5397e2176ed580` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/instance--56da1da07674a3da23630849.md) | 182 | `declaration-track:56da1da07674a3da236308495558cc8ffb97756874cb766ebc11a8615d0e4cc5` |
| 17 | `theorem` | [leftMulResiduation_le_iff_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/leftmulresiduation-le-iff-mul-le--83471f1085932e29f89f2af9.md) | 188 | `result-track:83471f1085932e29f89f2af9e578cca403ed7d166ef5c44035ac0c3cdf9846a4` |
| 18 | `theorem` | [rightMulResiduation_le_iff_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/rightmulresiduation-le-iff-mul-le--a39f645fd3a5835330f8710f.md) | 196 | `result-track:a39f645fd3a5835330f8710fa5050f40f8943e3c54590ca660cb4cd07aef741b` |
| 19 | `theorem` | [bot_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/bot-mul--71deb75c332d7e82d7815131.md) | 209 | `result-track:71deb75c332d7e82d7815131a146971cf865e51644fb2004b9927b0eb230dd41` |
| 20 | `theorem` | [mul_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Quantale/Variant4a57921b95767863c25958a6b419c34e5edb45c7e85f3703c593243fe0eee24e.lean/declarations/mul-bot--3d1a1d50140fde89b7ac7420.md) | 214 | `result-track:3d1a1d50140fde89b7ac7420e5650bb83d0023d33cff23345bd8ff3c288f6693` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
