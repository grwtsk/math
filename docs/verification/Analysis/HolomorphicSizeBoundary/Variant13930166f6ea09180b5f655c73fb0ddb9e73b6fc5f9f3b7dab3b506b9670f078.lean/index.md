# Verification target: GRWTSK.Analysis.HolomorphicSizeBoundary.Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14bef7b4845cd9ca928ec5b5a923ac235a03ad85",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/index.md) · [Full source](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14bef7b4845cd9ca928ec5b5a923ac235a03ad85`.

Source path: `GRWTSK/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.SubexponentialCountermodel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [singleAtomFamily](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/declarations/singleatomfamily--a1d23c1f840ef88838224d08.md) | 32 | `declaration-track:a1d23c1f840ef88838224d08794427fca630f5c954dcd041fc2934a49864b3fa` |
| 2 | `theorem` | [single_atom_family_entire](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/declarations/single-atom-family-entire--1c4cf97ef9d0887edd92aacc.md) | 35 | `result-track:1c4cf97ef9d0887edd92aacc85e6309095636b7e65f4db8a42578c9974fac6bc` |
| 3 | `theorem` | [exact_readout_at_one](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/declarations/exact-readout-at-one--a7e8589a7e33991d5c51003b.md) | 39 | `result-track:a7e8589a7e33991d5c51003b511735e93fdd1d9f89e3d72f5b5123bdcf25eb4f` |
| 4 | `theorem` | [readout_norm](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/declarations/readout-norm--96086e82cc2606f5d5263b37.md) | 50 | `result-track:96086e82cc2606f5d5263b3757a61a00867d1b21a0d85d0e12dc77b4a8e75ce8` |
| 5 | `theorem` | [every_fixed_epsilon_readout_loss](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/declarations/every-fixed-epsilon-readout-loss--07c40744abc3edadb4081e59.md) | 56 | `result-track:07c40744abc3edadb4081e597820579e47814a3ad12445288ab104ef61da065c` |
| 6 | `theorem` | [entire_readout_has_no_eventual_polynomial_bound](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/declarations/entire-readout-has-no-eventual-polynomial-bound--a94fe961ba1c1b6601322972.md) | 61 | `result-track:a94fe961ba1c1b6601322972ce5e19c51c8de64dc26e7d8204580b02a46df079` |
| 7 | `theorem` | [entire_readout_exceeds_every_real_power](../../../../mathematics/Analysis/HolomorphicSizeBoundary/Variant13930166f6ea09180b5f655c73fb0ddb9e73b6fc5f9f3b7dab3b506b9670f078.lean/declarations/entire-readout-exceeds-every-real-power--8deb285feb3d47f77cc5332d.md) | 65 | `result-track:8deb285feb3d47f77cc5332d399c171fa85af092c9da9b287aab60b0f6feb69f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
