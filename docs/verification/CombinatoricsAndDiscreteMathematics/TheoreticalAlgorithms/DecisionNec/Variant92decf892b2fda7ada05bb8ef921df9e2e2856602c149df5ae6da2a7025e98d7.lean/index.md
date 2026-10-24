# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DecisionNec.Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba6c63ab23cc23299a5c2881e486686fb520bcfa",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba6c63ab23cc23299a5c2881e486686fb520bcfa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Archive.MiuLanguage.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CountEquivOrEquivTwoMulMod3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/countequivorequivtwomulmod3--8dff695379dbb8bd46309699.md) | 49 | `declaration-track:8dff695379dbb8bd46309699b0b6417b2d7b0d0eb7bdd1c9bf55dad326c6ce2f` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/example--a0c1ff4e735bf9a000c0a35a.md) | 54 | `declaration-track:a0c1ff4e735bf9a000c0a35a490cdefc698bb91c9b906b7e52a1e56cc0e0f589` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/example--a4bd1fb0a69bdde4955c5720.md) | 57 | `declaration-track:a4bd1fb0a69bdde4955c57201a732de3879c53d3b4747453953030ed226074d1` |
| 4 | `theorem` | [mod3_eq_1_or_mod3_eq_2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/mod3-eq-1-or-mod3-eq-2--52801043e3c2313556a6965f.md) | 62 | `result-track:52801043e3c2313556a6965ffce9d3548db092c112b7dde34a3477f974371aff` |
| 5 | `theorem` | [count_equiv_one_or_two_mod3_of_derivable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/count-equiv-one-or-two-mod3-of-derivable--a36ecdf01bdcfe0530172c55.md) | 73 | `result-track:a36ecdf01bdcfe0530172c55c6e33d8a3e25571278645ff886427ca52567c42c` |
| 6 | `theorem` | [not_derivable_mu](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/not-derivable-mu--3a7ffdce5f5ff0b5c8b86083.md) | 99 | `result-track:3a7ffdce5f5ff0b5c8b86083544c7b94d43122b7c4865620084ae31d4968857a` |
| 7 | `def` | [Goodm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/goodm--b3e59f2387d9161e242bb7d1.md) | 113 | `declaration-track:b3e59f2387d9161e242bb7d156e99308795e24a0928abdff75c5a4c675b19281` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/instance--ef0d7ba867ffab7bcaf0467e.md) | 116 | `declaration-track:ef0d7ba867ffab7bcaf0467e6f01a0140c2540db3bbef33bc5e7fcb334113da8` |
| 9 | `theorem` | [goodmi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/goodmi--c2324e3f26554d33b6d06042.md) | 120 | `result-track:c2324e3f26554d33b6d06042488a7f0f5e6d5a714f67e0ade10d8ac8b74dfacd` |
| 10 | `theorem` | [goodm_of_rule1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/goodm-of-rule1--2ac8ba4211e10b64e4b21970.md) | 131 | `result-track:2ac8ba4211e10b64e4b2197069581cc49b2065593a424bc8af4b92b2ca6b4341` |
| 11 | `theorem` | [goodm_of_rule2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/goodm-of-rule2--042d3f886d63bf4aafa7f0a5.md) | 141 | `result-track:042d3f886d63bf4aafa7f0a557f961ccb70596743eff2277f173937fb0d42e94` |
| 12 | `theorem` | [goodm_of_rule3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/goodm-of-rule3--4b089c02748572e0ff733482.md) | 150 | `result-track:4b089c02748572e0ff733482b5c462346cd2c372fec5722e6b1b7f44118d0e62` |
| 13 | `theorem` | [goodm_of_rule4](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/goodm-of-rule4--02870385d35ba3810bc0622e.md) | 168 | `result-track:02870385d35ba3810bc0622efce6bcd312b285cdcb25e19999f281f9a1c2e29a` |
| 14 | `theorem` | [goodm_of_derivable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/goodm-of-derivable--3d03565dfeb4b828d353b20d.md) | 183 | `result-track:3d03565dfeb4b828d353b20d7d4068ccdbbaba5fa8531e75f0136396b5ba68d4` |
| 15 | `def` | [Decstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/decstr--5e6e6544c92277ef2444c7e8.md) | 202 | `declaration-track:5e6e6544c92277ef2444c7e80fc6cc46e3440571e04387f7dd1a3b3e3a3fab5f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/instance--5e2785c070bb0be35fee611c.md) | 205 | `declaration-track:5e2785c070bb0be35fee611c5722c4ecceeb77c169f5aefd73a386a4e92c9dda` |
| 17 | `theorem` | [decstr_of_der](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/declarations/decstr-of-der--548ff80b691041f6f2dbe6ca.md) | 209 | `result-track:548ff80b691041f6f2dbe6ca0346f374a0878eea3a7bd5c9160f2b261c4ea480` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
