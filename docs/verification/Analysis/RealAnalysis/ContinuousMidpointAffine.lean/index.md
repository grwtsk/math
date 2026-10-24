# Verification target: GRWTSK.Analysis.Real.ContinuousMidpointAffine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4210a126e3342ca11436202c1640b5afdc33df8c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/ContinuousMidpointAffine.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4210a126e3342ca11436202c1640b5afdc33df8c`.

Source path: `GRWTSK/Analysis/Real/ContinuousMidpointAffine.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/ContinuousMidpointAffine.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_midpoint](../../../../mathematics/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/declarations/eq-zero-of-midpoint--cd7bdefe4c8564d76c236de2.md) | 14 | `result-track:cd7bdefe4c8564d76c236de2761810b5d93b53948ce6829965e67e215582a2d5` |
| 2 | `theorem` | [chord_identity](../../../../mathematics/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/declarations/chord-identity--914fc8600a4457941777e106.md) | 48 | `result-track:914fc8600a4457941777e10673dc58af81e8e9741f70076bef1a6c43678aeec5` |
| 3 | `theorem` | [affine_from_two](../../../../mathematics/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/declarations/affine-from-two--81aaebc3aad5171223c96fca.md) | 72 | `result-track:81aaebc3aad5171223c96fcab935a1b694c039f5b48e0d3bab9af984707238b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
