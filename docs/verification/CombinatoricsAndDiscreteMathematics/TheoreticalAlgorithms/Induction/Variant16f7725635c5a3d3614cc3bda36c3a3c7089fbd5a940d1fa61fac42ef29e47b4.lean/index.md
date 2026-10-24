# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Induction.Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d1f453d1d7bce7583113f2c0f87d476eca073c0",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d1f453d1d7bce7583113f2c0f87d476eca073c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean.json)

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
| 1 | `def` | [reverseRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/reverserec--23584e1929ec288c966b1f8f.md) | 22 | `declaration-track:23584e1929ec288c966b1f8f922cdf922b5e959b0e73cb39f98f0a4d2d324d4a` |
| 2 | `theorem` | [reverseRec_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/reverserec-nil--475da871d118dda22e05d1de.md) | 30 | `result-track:475da871d118dda22e05d1def01ea88e16b1540174f66ae047a4fdb608df3e1e` |
| 3 | `theorem` | [reverseRec_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/reverserec-concat--cb795a333c62d95535b831e5.md) | 35 | `result-track:cb795a333c62d95535b831e5e9acd6448552b23c5c3d77e677b9b65bc46a2b89` |
| 4 | `abbrev` | [reverseRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/reverserecon--cf0bbf3172eea333d7abe06b.md) | 43 | `declaration-track:cf0bbf3172eea333d7abe06b01ed92c26c1a0f621cc81893d9bac26650f118be` |
| 5 | `theorem` | [reverseRecOn_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/reverserecon-nil--8bef6618651247372e4f8c52.md) | 47 | `result-track:8bef6618651247372e4f8c5242e9768ee80e43b77d9edbbd50a05efcded978f3` |
| 6 | `theorem` | [reverseRecOn_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/reverserecon-concat--1c81a228d55cf7811d9d97eb.md) | 51 | `result-track:1c81a228d55cf7811d9d97eb8824f82d60eb35845669cdc9f1eefe673a110072` |
| 7 | `def` | [bidirectionalRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/bidirectionalrec--0500458096319d976e4e0275.md) | 61 | `declaration-track:0500458096319d976e4e0275a29016396bd10a0ca11e4316b4383d661fe0a16e` |
| 8 | `theorem` | [bidirectionalRec_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/bidirectionalrec-nil--c11917a7c7a6d2ac16917379.md) | 73 | `result-track:c11917a7c7a6d2ac169173790d67c1feee46121be54f984d32a8ce35d54ef444` |
| 9 | `theorem` | [bidirectionalRec_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/bidirectionalrec-singleton--2ae266d2fe13276e936f7fba.md) | 80 | `result-track:2ae266d2fe13276e936f7fbacaf4a6757ad3a490b4024787e6512aedff9f48e7` |
| 10 | `theorem` | [bidirectionalRec_cons_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/bidirectionalrec-cons-append--82a410559cd55d8023030418.md) | 87 | `result-track:82a410559cd55d8023030418397fa22ababdf2bc1a8170e6ee9c0a40e3663fe9` |
| 11 | `abbrev` | [bidirectionalRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/bidirectionalrecon--72e491ca4c0a0d69d0e4f91f.md) | 97 | `declaration-track:72e491ca4c0a0d69d0e4f91fb28832d4dd93c8b4810eedfdb04ff6ac45d0a153` |
| 12 | `def` | [recNeNil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/recnenil--c18a723c7b7651de5e259857.md) | 106 | `declaration-track:c18a723c7b7651de5e259857c8498c1822f7fa231d3784597021438f6b014d20` |
| 13 | `theorem` | [recNeNil_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/recnenil-singleton--7097de89861e2b24b9dbd9e6.md) | 116 | `result-track:7097de89861e2b24b9dbd9e61bf55f6f7b25362e271a46606e4d93152b8c246f` |
| 14 | `theorem` | [recNeNil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/recnenil-cons--3ddce0559c0bfe4db949e898.md) | 122 | `result-track:3ddce0559c0bfe4db949e8982a6960a009ee122eeb27546e39666edaf617c82f` |
| 15 | `abbrev` | [recOnNeNil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/reconnenil--292dbdec830ea25c94effe52.md) | 136 | `declaration-track:292dbdec830ea25c94effe522a5ab4c9c6f969e3d79e03fadc941206674ff503` |
| 16 | `def` | [twoStepInduction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/twostepinduction--d3e7148200452f1b9be8b49b.md) | 145 | `declaration-track:d3e7148200452f1b9be8b49bf17216d31f9c03564626d37f48b6fb81b5af19e7` |
| 17 | `theorem` | [twoStepInduction_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/twostepinduction-nil--000c1c6a5cdaa74c81b6103c.md) | 157 | `result-track:000c1c6a5cdaa74c81b6103cae35b880ea838b1380c53e5f4ff8469486f57a1e` |
| 18 | `theorem` | [twoStepInduction_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/twostepinduction-singleton--86dbdb9c2a9a0c76cab59ff7.md) | 163 | `result-track:86dbdb9c2a9a0c76cab59ff7d5971dd9696af9e986afae03c446fe373e324bba` |
| 19 | `theorem` | [twoStepInduction_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant16f7725635c5a3d3614cc3bda36c3a3c7089fbd5a940d1fa61fac42ef29e47b4.lean/declarations/twostepinduction-cons-cons--2eff8f252757a686e77e3e22.md) | 169 | `result-track:2eff8f252757a686e77e3e22fc83e20b07e50881635b236571ffda0faf4bdec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
