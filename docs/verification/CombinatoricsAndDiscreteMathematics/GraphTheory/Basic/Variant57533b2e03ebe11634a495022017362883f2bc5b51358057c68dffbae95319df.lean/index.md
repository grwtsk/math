# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38042fbcd690a9d85bc47c93d1030890b7890228",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38042fbcd690a9d85bc47c93d1030890b7890228`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteBooleanAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Digraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/digraph--29028329c0636fe2da8df9e2.md) | 44 | `declaration-track:29028329c0636fe2da8df9e216fb60d0f8e1bbbd8101f6e31b95634d943de7a4` |
| 2 | `def` | [Digraph.mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/digraph-mk--2e69a3e9726b9de253452366.md) | 54 | `declaration-track:2e69a3e9726b9de253452366dca7277914844c760b0a4a283a2a4853b0d9c1be` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/instance--b1a0597bc9403cd0e1ca70a2.md) | 62 | `declaration-track:b1a0597bc9403cd0e1ca70a23ab6b2373b8a5f33151ffb9137580a04acae884b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/instance--50f712336a2f0875153ca084.md) | 65 | `declaration-track:50f712336a2f0875153ca0847f5fab7d48402fd4f3f8a7b647d836c7f428e77b` |
| 5 | `def` | [completeDigraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/completedigraph--830774c70c6dc827a28d0f51.md) | 81 | `declaration-track:830774c70c6dc827a28d0f516e1d0cc49846f63fe99592ed83c15ce02484171e` |
| 6 | `def` | [emptyDigraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/emptydigraph--84ab3839b71d7df68868fc5e.md) | 88 | `declaration-track:84ab3839b71d7df68868fc5ecf7ff01a4b475eb515bc4081b65db49455203ac6` |
| 7 | `def` | [completeBipartiteGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/completebipartitegraph--eec02799598e4f203f343db2.md) | 96 | `declaration-track:eec02799598e4f203f343db2e07187a421376f385181cf458bfcb4f291c064fc` |
| 8 | `theorem` | [adj_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/adj-injective--b25e9438aafead5c081ac901.md) | 101 | `result-track:b25e9438aafead5c081ac901420feb9010d88958ed02775d991d5aac304d2d13` |
| 9 | `theorem` | [adj_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/adj-inj--f656d487ece6ede703263e2b.md) | 103 | `result-track:f656d487ece6ede703263e2b522a8b3a1387f45167e17c3c271fd9340bc5b402` |
| 10 | `def` | [IsSubgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/issubgraph--4b95dec9d6dd76bce63d3763.md) | 111 | `declaration-track:4b95dec9d6dd76bce63d3763cbfd60b7a21e740cc4474b8a39e8ce8d64abca4e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/instance--717c423789a6830ef15a0cab.md) | 114 | `declaration-track:717c423789a6830ef15a0cabcb397f64fd394dd8df3e18d9212a76014c3a2243` |
| 12 | `theorem` | [isSubgraph_eq_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/issubgraph-eq-le--bfc4adf2131e2848035df912.md) | 117 | `result-track:bfc4adf2131e2848035df912e257263cc6d3eb7d9ca8dbcc412dade468cee725` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/instance--20ea350ca4664a31c03e2e7d.md) | 120 | `declaration-track:20ea350ca4664a31c03e2e7d56aaa73d88018744b9ebb64c74e575a2c45f9c0c` |
| 14 | `theorem` | [sup_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/sup-adj--ed6acb24c7fc09415905e0d0.md) | 124 | `result-track:ed6acb24c7fc09415905e0d0256ba7c70db1df9603324e66857c1d5422c26353` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/instance--d453e816a1e4cf6ba05bab87.md) | 127 | `declaration-track:d453e816a1e4cf6ba05bab877b519c04384dfe2f327d6cc1aef6842046c87ce2` |
| 16 | `theorem` | [inf_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/inf-adj--a2dadaf45dd7b2bfe75a78ad.md) | 131 | `result-track:a2dadaf45dd7b2bfe75a78adcd5293ce96f1c49ae0d6dc9f72d27b65ec3a1d39` |
| 17 | `instance` | [hasCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/hascompl--540c9083f3b3516979559cc3.md) | 135 | `declaration-track:540c9083f3b3516979559cc31c2ce84b7f1f7e07fa53f5c6772ac3ac86f18c49` |
| 18 | `theorem` | [compl_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/compl-adj--52e8b7c8e66eebcdc2253db0.md) | 138 | `result-track:52e8b7c8e66eebcdc2253db06a628e14e6f43c4bd4987e83d84ebf6b0091d31b` |
| 19 | `instance` | [sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/sdiff--ecdc1741a593a1e0437634d1.md) | 141 | `declaration-track:ecdc1741a593a1e0437634d1069e5e8f460e5b2df72326be274f7acc780cff77` |
| 20 | `theorem` | [sdiff_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/sdiff-adj--85dcdad8826ff8989da2d168.md) | 145 | `result-track:85dcdad8826ff8989da2d168719cd470beb89847576ccc2ccd9241f4c53ac3a7` |
| 21 | `instance` | [supSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/supset--b5200c4d2d30ea0736538263.md) | 147 | `declaration-track:b5200c4d2d30ea07365382634e223a7b773ae741bc4aec371910ed6c1d9c2871` |
| 22 | `instance` | [infSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/infset--01ddac04491c81fbfe3ebc2d.md) | 150 | `declaration-track:01ddac04491c81fbfe3ebc2df23b7ecb7984d03d298f1bc195808edc151e8b9a` |
| 23 | `theorem` | [sSup_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/ssup-adj--e507cdea3eb73ffc061dcaeb.md) | 154 | `result-track:e507cdea3eb73ffc061dcaeb0f32b6c782d08f2e0d37b32c85f99b66456923ba` |
| 24 | `theorem` | [sInf_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/sinf-adj--4f646718655d4e719e7c46a9.md) | 157 | `result-track:4f646718655d4e719e7c46a95a29556605a5661365a23b58e37cb7d3d0a6f4f2` |
| 25 | `theorem` | [iSup_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/isup-adj--879dd772bcea91162dc14220.md) | 160 | `result-track:879dd772bcea91162dc1422065ce2609ab66cb6e5583d9d7d669f79f23e57a28` |
| 26 | `theorem` | [iInf_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/iinf-adj--68bfddc899b05065c4e94495.md) | 163 | `result-track:68bfddc899b05065c4e94495bfe9f40753c8409dca5bb322cb9bc17cf559de1a` |
| 27 | `instance` | [distribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/distriblattice--477d425ffc0d427f2fd71aea.md) | 166 | `declaration-track:477d425ffc0d427f2fd71aea6650e3145b244b4c8e3b8af4bfc4a29b2356ebd9` |
| 28 | `instance` | [completeAtomicBooleanAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/completeatomicbooleanalgebra--7d0a532409a0662744113bfa.md) | 170 | `declaration-track:7d0a532409a0662744113bfa9cabcae92d5b8555053b8c70a63da1e1264a11c7` |
| 29 | `theorem` | [top_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/top-adj--cbf2a2bd888e018409269ba1.md) | 194 | `result-track:cbf2a2bd888e018409269ba17ea2973e1b2c223cc673a7d47b7f7e632d20d9c7` |
| 30 | `theorem` | [bot_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/bot-adj--ceec254e944fe89fd42c560d.md) | 196 | `result-track:ceec254e944fe89fd42c560d580416c60eafab6b53f4426a36668391dac9c2c6` |
| 31 | `theorem` | [completeDigraph_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/completedigraph-eq-top--41d3ab6de99631388cc356c9.md) | 198 | `result-track:41d3ab6de99631388cc356c9f3c94611a7e235c1e27da4c890d1a2353b458383` |
| 32 | `theorem` | [emptyDigraph_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/emptydigraph-eq-bot--7fa613d5160c7b99157e88f1.md) | 200 | `result-track:7fa613d5160c7b99157e88f168120981afc982360f7604f0c17ca5b53fe1babb` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/instance--1f1d1c54afc63e7bda2d1d65.md) | 202 | `declaration-track:1f1d1c54afc63e7bda2d1d65e535a3887f3a5dbdb2f6269612ce55fa795d74c9` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/instance--56a5e4aed919a53b6fe40943.md) | 204 | `declaration-track:56a5e4aed919a53b6fe40943e148a404de89b0bc968f950d86bbaf92e189091b` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/instance--f9b398e766664a5912133aad.md) | 208 | `declaration-track:f9b398e766664a5912133aadde0c93714ad8d9cd0fd4d5adf1e3a6c6443015df` |
| 36 | `instance` | [Bot.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/bot-adjdecidable--b1c65f45f846db45fb87760a.md) | 217 | `declaration-track:b1c65f45f846db45fb87760a7c383ef071313d36ac97223eb2ca50243c5ceb5e` |
| 37 | `instance` | [Sup.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/sup-adjdecidable--fa9887092108357844235c26.md) | 220 | `declaration-track:fa9887092108357844235c26999a255c91982f4b4ccefe47b05700f99d6c00d9` |
| 38 | `instance` | [Inf.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/inf-adjdecidable--80509955a4218867c3887bc6.md) | 223 | `declaration-track:80509955a4218867c3887bc6b94ad3e36177f9452fdf1609de73bc0c88e42fac` |
| 39 | `instance` | [SDiff.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/sdiff-adjdecidable--034dcbd45e7ae70420f6ecbc.md) | 226 | `declaration-track:034dcbd45e7ae70420f6ecbcd8c36ba79ccecdfaa71e6af5f7eddf793ba84d3d` |
| 40 | `instance` | [Top.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/top-adjdecidable--4b82f43fda0d5df91657eff2.md) | 229 | `declaration-track:4b82f43fda0d5df91657eff2b6b58afb91d542556d7c2c381e67ce4889c4fbf9` |
| 41 | `instance` | [Compl.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant57533b2e03ebe11634a495022017362883f2bc5b51358057c68dffbae95319df.lean/declarations/compl-adjdecidable--f5add8fde1adb41498bd479b.md) | 232 | `declaration-track:f5add8fde1adb41498bd479bce1307d37080f5a4642fd1291a40268058fe1a2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
