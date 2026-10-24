# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerDegreeBalance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "348c0913ceb094c6e774cab53e6dfe8f5213162f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `348c0913ceb094c6e774cab53e6dfe8f5213162f`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerFreshTrail`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countedOutDegree](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/countedoutdegree--a468cec67f733f3bd3300754.md) | 20 | `declaration-track:a468cec67f733f3bd33007544e18d1fa4cf938c499d3ff49d5db0f773148e2bc` |
| 2 | `def` | [countedInDegree](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/countedindegree--4ba9ec48512d97da7b64e17b.md) | 26 | `declaration-track:4ba9ec48512d97da7b64e17bb65e7e4e7e2b84aae5016c1d08ea59024044c584` |
| 3 | `def` | [CountedDegreeBalanced](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/counteddegreebalanced--82a5b49ee5673bea83c31913.md) | 32 | `declaration-track:82a5b49ee5673bea83c31913df9582d1f48390ff72015a2c95dc77f1fce1feb6` |
| 4 | `def` | [countedUsedOutDegree](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/countedusedoutdegree--658fc4dc15dfa655f4caa5ab.md) | 37 | `declaration-track:658fc4dc15dfa655f4caa5abe2409fb993cce4d574a082bec04e0e33c765b82d` |
| 5 | `def` | [countedUsedInDegree](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/countedusedindegree--f50a0b5f7edfe39f06ec4974.md) | 41 | `declaration-track:f50a0b5f7edfe39f06ec497427c94bc8e362a72df874bf6d9ff42b99a528bb3e` |
| 6 | `theorem` | [countedOutDegree_used_unused](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/countedoutdegree-used-unused--777895d18c021896f1b79fbe.md) | 47 | `result-track:777895d18c021896f1b79fbeba05ce749a4b7274af2d35de5e2ff3fa54068c62` |
| 7 | `theorem` | [countedInDegree_used_unused](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/countedindegree-used-unused--7c5cf49f0cdee1f981fb4baf.md) | 66 | `result-track:7c5cf49f0cdee1f981fb4baf9bc42ee699861ca00145084456c603abf10bcbc8` |
| 8 | `theorem` | [countedUsedOutDegree_insert](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/countedusedoutdegree-insert--3a7ead9572647781d0fbcf4d.md) | 87 | `result-track:3a7ead9572647781d0fbcf4d54a94cbb40c8bd7fb041c204b96951fa08f6b6f1` |
| 9 | `theorem` | [countedUsedInDegree_insert](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/countedusedindegree-insert--8fcc350d0e8365ead5900e3b.md) | 103 | `result-track:8fcc350d0e8365ead5900e3b7c3827a926052aed84d817d4a6545be0dab238bd` |
| 10 | `theorem` | [FreshCountedTrail.used_degree_imbalance](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/freshcountedtrail-used-degree-imbalance--13a10882d4d738aa87b964c1.md) | 121 | `result-track:13a10882d4d738aa87b964c19a943f492d63921e26c83c407d8bf761072b3597` |
| 11 | `theorem` | [FreshCountedTrail.unused_out_zero_of_maximal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/freshcountedtrail-unused-out-zero-of-maximal--e85f6798c9d7d406284b3a37.md) | 153 | `result-track:e85f6798c9d7d406284b3a3726ac4123ad5e14db4081472fe5cb8ad8c367ac5d` |
| 12 | `theorem` | [FreshCountedTrail.maximal_finish_imbalance](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/freshcountedtrail-maximal-finish-imbalance--da459369282e96e95f5fe7dd.md) | 172 | `result-track:da459369282e96e95f5fe7dd43acfd4212e46d468b837e6844ba39654d2c0bbf` |
| 13 | `theorem` | [FreshCountedTrail.closed_of_balanced_maximal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/freshcountedtrail-closed-of-balanced-maximal--b82e1aa0de52dd0890e54cfc.md) | 198 | `result-track:b82e1aa0de52dd0890e54cfc364c78dbd79ce1d3327ae1a9088b7b62a060358d` |
| 14 | `theorem` | [FreshCountedTrail.closed_used_balanced](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/freshcountedtrail-closed-used-balanced--8865d3e49210d83d87fcb111.md) | 218 | `result-track:8865d3e49210d83d87fcb111bd13125c98afe8be51c88d65844442f6d2180991` |
| 15 | `theorem` | [FreshCountedTrail.closed_unused_balanced](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/freshcountedtrail-closed-unused-balanced--483257e2b2bf5fd1d96bc858.md) | 233 | `result-track:483257e2b2bf5fd1d96bc858d4bcf7610f2bb38e849b2cf8caa4c1fd7ac28b57` |
| 16 | `theorem` | [FreshCountedTrail.unused_in_pos_iff_out_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/freshcountedtrail-unused-in-pos-iff-out-pos--94d8d5f3835576e8a7726947.md) | 253 | `result-track:94d8d5f3835576e8a77269472a3902b4911af3015f9e52cb1d20e21b3e3849ef` |
| 17 | `theorem` | [FreshCountedTrail.unused_out_edge_of_unused_in_edge](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/freshcountedtrail-unused-out-edge-of-unused-in-edge--f1bf98f74a63c7bb562fe057.md) | 267 | `result-track:f1bf98f74a63c7bb562fe0575d3c94ef0eae54eeeaa29aed8754771ca964c211` |
| 18 | `theorem` | [FreshCountedTrail.unused_out_edge_of_incident](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/declarations/freshcountedtrail-unused-out-edge-of-incident--172319964c09132027bfbdc8.md) | 296 | `result-track:172319964c09132027bfbdc81aeeba6186dcf3d29ddb4c3111c6f41671c89b8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
