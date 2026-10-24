# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BVMaximalDuality.Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26e18def55f66698dc8d3aea7acb75de81452ea9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26e18def55f66698dc8d3aea7acb75de81452ea9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Module` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxPrefixNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/maxprefixnorm--a94f9a2b5495675423521c2b.md) | 41 | `declaration-track:a94f9a2b5495675423521c2b5090af6a697c076c55d9f4207e400ac4691a879d` |
| 2 | `theorem` | [abs_conductorThreePsi_le_maxPrefixNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/abs-conductorthreepsi-le-maxprefixnorm--ddd3f30115ab906b995f7f27.md) | 47 | `result-track:ddd3f30115ab906b995f7f274825d563443ba6d84ce8076004d2613d7c27e343` |
| 3 | `theorem` | [maxPrefixNorm_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/maxprefixnorm-nonneg--1187e335e2ded8c80d8a388f.md) | 57 | `result-track:1187e335e2ded8c80d8a388f1ea4d170672a158db54ada448f644579e264048b` |
| 4 | `theorem` | [discrete_summationByParts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/discrete-summationbyparts--50c5d11b6b5b0561cb6fff92.md) | 64 | `result-track:50c5d11b6b5b0561cb6fff92954a114fd17516c75eebe62c7a5dcbd6562f2a91` |
| 5 | `theorem` | [abs_weight_terminal_le_cost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/abs-weight-terminal-le-cost--4c92d9b8ec5c5953b7aa4acc.md) | 103 | `result-track:4c92d9b8ec5c5953b7aa4accfabd72a1f7b215506a5602f142a45b05ab2ed682` |
| 6 | `theorem` | [weightedSum_le_two_mul_variation_mul_maxPrefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/weightedsum-le-two-mul-variation-mul-maxprefix--db164c58c17ee80b495cb3e0.md) | 124 | `result-track:db164c58c17ee80b495cb3e0a4989d52e48e137d8999c65ececef7cc0d4546cc` |
| 7 | `theorem` | [prefixWeight_cost_le_two_at_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/prefixweight-cost-le-two-at-scale--89c53fc1823671df4d7b8834.md) | 185 | `result-track:89c53fc1823671df4d7b8834d814dbebc58072b0a6b4b9582244529ac2cc5349` |
| 8 | `theorem` | [conductorThreeDiscreteWeightedSum_prefix_at_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/conductorthreediscreteweightedsum-prefix-at-scale--4796e5a14f4eb8a509cc53f7.md) | 228 | `result-track:4796e5a14f4eb8a509cc53f7ace5669abc971b9c150ed2723420601c824fc6b9` |
| 9 | `def` | [ConductorThreeMaximalMomentEstimate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/conductorthreemaximalmomentestimate--4fac1efdd1f4b8873832acd6.md) | 260 | `declaration-track:4fac1efdd1f4b8873832acd61b104b15f658838ff128af5471fefb00eb5e0f74` |
| 10 | `theorem` | [bvPacketEstimate_implies_maximalMomentEstimate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/bvpacketestimate-implies-maximalmomentestimate--eea2a66e0b4f9fe4bd0cd317.md) | 270 | `result-track:eea2a66e0b4f9fe4bd0cd3171c8ed119fc993e1a373ad3b8437f3a3a373cc5de` |
| 11 | `theorem` | [maximalMomentEstimate_implies_bvPacketEstimate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/declarations/maximalmomentestimate-implies-bvpacketestimate--1b02a6f3169ccba63017e2ae.md) | 292 | `result-track:1b02a6f3169ccba63017e2aebc75b40959bb2bfc94d2bef60a5df3ca237d4582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
