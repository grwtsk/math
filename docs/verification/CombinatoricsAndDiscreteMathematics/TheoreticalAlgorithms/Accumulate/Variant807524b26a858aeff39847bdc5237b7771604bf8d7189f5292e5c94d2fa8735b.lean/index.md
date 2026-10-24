# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Accumulate.Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64d874f0e99e647de05fd39e60c304e3b3f9ec9b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64d874f0e99e647de05fd39e60c304e3b3f9ec9b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/accumulate--6599dfd147dec41106bccdc4.md) | 20 | `declaration-track:6599dfd147dec41106bccdc41ee4c67afc0e01c1599595cb84d1fa99f192676d` |
| 2 | `theorem` | [accumulate_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/accumulate-def--cbde616d0f067d920f5b5408.md) | 23 | `result-track:cbde616d0f067d920f5b540817e81ade1139ce0bca113f3149fa452e151501b7` |
| 3 | `theorem` | [mem_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/mem-accumulate--43d8127b68ee80128cb12d0e.md) | 27 | `result-track:43d8127b68ee80128cb12d0efba7f5265f9a792ac10f1eb2d09ca54ebf10a52b` |
| 4 | `theorem` | [subset_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/subset-accumulate--e672844b71763522b90ff180.md) | 30 | `result-track:e672844b71763522b90ff180496b8b028d252c205acbab2e8880e9b50c88bc02` |
| 5 | `theorem` | [accumulate_subset_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/accumulate-subset-iunion--4dd8bfcfdb10f0e976fc1f55.md) | 32 | `result-track:4dd8bfcfdb10f0e976fc1f55e15d872534403f89e39108efc6a324e888dc0284` |
| 6 | `theorem` | [monotone_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/monotone-accumulate--b888851a6651703c19d6b661.md) | 35 | `result-track:b888851a6651703c19d6b661b42c2a72981b755fcb0d5875492761c379031872` |
| 7 | `theorem` | [accumulate_subset_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/accumulate-subset-accumulate--42b7a11f078b52eb0dfa489b.md) | 39 | `result-track:42b7a11f078b52eb0dfa489befb50946628edf7f69e782b1f0de661114dabb94` |
| 8 | `theorem` | [biUnion_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/biunion-accumulate--5c5649c952a462bca058241a.md) | 43 | `result-track:5c5649c952a462bca058241abb745869a39079d0652520c306a83b8506a1cf9c` |
| 9 | `theorem` | [iUnion_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/iunion-accumulate--aaa3206c9ab5558af8650682.md) | 48 | `result-track:aaa3206c9ab5558af86506821372223ed501c8cda7af5b5007e33490e2701a19` |
| 10 | `lemma` | [accumulate_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/accumulate-bot--ba31b8918500e07b196a0694.md) | 56 | `result-track:ba31b8918500e07b196a0694e83e15a9b73474e3bec88e1f242cc711b79ef0da` |
| 11 | `lemma` | [accumulate_zero_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/accumulate-zero-nat--2b32caddaac94d60b318bdd2.md) | 60 | `result-track:2b32caddaac94d60b318bdd25efbdcb11ca0e3fa1e6597e53290da1e083a028a` |
| 12 | `theorem` | [disjoint_accumulate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Accumulate/Variant807524b26a858aeff39847bdc5237b7771604bf8d7189f5292e5c94d2fa8735b.lean/declarations/disjoint-accumulate--8eecbd98ef6f883b03ff1e7d.md) | 64 | `result-track:8eecbd98ef6f883b03ff1e7d9dac35ea45e1d7161bc0af25e20852ca731ecc32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
