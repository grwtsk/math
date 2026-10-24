# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BVMaximalDuality.Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83f618174e81c6a2bc2e39c37f8c196e71baf41b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83f618174e81c6a2bc2e39c37f8c196e71baf41b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Module` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxPrefixNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/maxprefixnorm--e54b60b279fcbdd13c8d88b1.md) | 33 | `declaration-track:e54b60b279fcbdd13c8d88b18941af63aa0732a592dda1311c10d727e16a9075` |
| 2 | `theorem` | [abs_conductorThreePsi_le_maxPrefixNorm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/abs-conductorthreepsi-le-maxprefixnorm--8b798ffa80e0982c9fbb53f8.md) | 39 | `result-track:8b798ffa80e0982c9fbb53f83069bb569784bedbbc6a7ec2d5a7d5520327dc11` |
| 3 | `theorem` | [maxPrefixNorm_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/maxprefixnorm-nonneg--bb39805f0be88520b5c9b688.md) | 49 | `result-track:bb39805f0be88520b5c9b68865a48ae9bef1e24a6b64973947da6b48616d2da2` |
| 4 | `theorem` | [discrete_summationByParts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/discrete-summationbyparts--4f38c9a3b9175f4731520721.md) | 56 | `result-track:4f38c9a3b9175f4731520721118522237872965ace250c2739c03a3c632d7baf` |
| 5 | `theorem` | [abs_weight_terminal_le_cost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/abs-weight-terminal-le-cost--aedbda42e4e27ea302fd438b.md) | 95 | `result-track:aedbda42e4e27ea302fd438b95ef5272f830456b975927d10f6203785d58ce83` |
| 6 | `theorem` | [weightedSum_le_two_mul_variation_mul_maxPrefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/weightedsum-le-two-mul-variation-mul-maxprefix--94576b4b903e9b3052be7ec0.md) | 116 | `result-track:94576b4b903e9b3052be7ec0bd6666413a0bf743e296d23f0cf585db9ff84a67` |
| 7 | `theorem` | [prefixWeight_cost_le_two_at_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/prefixweight-cost-le-two-at-scale--0dfa6469603864f34783031b.md) | 177 | `result-track:0dfa6469603864f34783031b50b47441ba12a2539b63ec0505693b7309a57a1a` |
| 8 | `theorem` | [conductorThreeDiscreteWeightedSum_prefix_at_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/conductorthreediscreteweightedsum-prefix-at-scale--8ee613b6ca76f69169032dfd.md) | 220 | `result-track:8ee613b6ca76f69169032dfdfef47a3aae24fbe0fb71aa1ecdb69ce54aa2598c` |
| 9 | `def` | [ConductorThreeMaximalMomentEstimate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/conductorthreemaximalmomentestimate--43e71f458a22f5f86ffd6ef7.md) | 252 | `declaration-track:43e71f458a22f5f86ffd6ef795a7ce69b1108b11d2b09aa2defb433c909f85a2` |
| 10 | `theorem` | [bvPacketEstimate_implies_maximalMomentEstimate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/bvpacketestimate-implies-maximalmomentestimate--3e5301b4a1da270b85491d44.md) | 262 | `result-track:3e5301b4a1da270b85491d44fd685d1e251a922c6fb839e9e56860b4a1103788` |
| 11 | `theorem` | [maximalMomentEstimate_implies_bvPacketEstimate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantfb1c7c7a616a2f48645afebd514581cf26358ab30cf0d9487a1de8e51e6571a7.lean/declarations/maximalmomentestimate-implies-bvpacketestimate--ae1418b0acae8abac3d22f25.md) | 284 | `result-track:ae1418b0acae8abac3d22f252776f76b6733b56ce9d326751c1414f07d655113` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
