# Verification target: GRWTSK.Analysis.ComplexAnalysis.Exp.Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ea22ffd81427c2e81b0aa67c28a1e08c06165e9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ea22ffd81427c2e81b0aa67c28a1e08c06165e9`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Periodic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Function.Periodic.im_invQParam_pos_of_norm_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean/declarations/function-periodic-im-invqparam-pos-of-norm-lt-one--80d97b299a61e98a05cd64e2.md) | 29 | `result-track:80d97b299a61e98a05cd64e2d752783df279985968fa4c947fadbc642e240c33` |
| 2 | `lemma` | [Function.Periodic.norm_qParam_le_of_one_half_le_im](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean/declarations/function-periodic-norm-qparam-le-of-one-half-le-im--47bef8ffb2baa95cd12d9aa3.md) | 36 | `result-track:47bef8ffb2baa95cd12d9aa38cd3afdc7abe37b0b4f69f8ea044ea234e35be74` |
| 3 | `theorem` | [UpperHalfPlane.norm_qParam_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean/declarations/upperhalfplane-norm-qparam-lt-one--a0ac565ded4e88101964a1aa.md) | 42 | `result-track:a0ac565ded4e88101964a1aa68496a985a3bd2514e3466bd5dc78db64df12f58` |
| 4 | `theorem` | [UpperHalfPlane.norm_exp_two_pi_I_lt_one](../../../../../mathematics/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean/declarations/upperhalfplane-norm-exp-two-pi-i-lt-one--7fcc9343b1e4025e4232d081.md) | 47 | `result-track:7fcc9343b1e4025e4232d081902606ccc56a44951891724b6ddad48ed81a936c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
