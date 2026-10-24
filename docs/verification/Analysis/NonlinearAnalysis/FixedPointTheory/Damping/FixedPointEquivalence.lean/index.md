# Verification target: GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.Damping.FixedPointEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10fb294d064ed680ad06c22ac7da557c6e923fba",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NonlinearAnalysis/FixedPointTheory/Damping/FixedPointEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/Damping/FixedPointEquivalence.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/Damping/FixedPointEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10fb294d064ed680ad06c22ac7da557c6e923fba`.

Source path: `GRWTSK/Analysis/NonlinearAnalysis/FixedPointTheory/Damping/FixedPointEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NonlinearAnalysis/FixedPointTheory/Damping/FixedPointEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.PeriodicOrbit` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DampingLaw](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/Damping/FixedPointEquivalence.lean/declarations/dampinglaw--562afa4c03e72a0ef79dd341.md) | 38 | `declaration-track:562afa4c03e72a0ef79dd3419f899ba5bd7a810cb20ccd221023c5b016eca4cb` |
| 2 | `def` | [dampedMap](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/Damping/FixedPointEquivalence.lean/declarations/dampedmap--e5759b57e2b0565927b8b1de.md) | 43 | `declaration-track:e5759b57e2b0565927b8b1de3b47d931d2215fb0b1a4ffca752bb51f6712b6d7` |
| 3 | `theorem` | [damping_preserves_fixed_points](../../../../../../mathematics/Analysis/NonlinearAnalysis/FixedPointTheory/Damping/FixedPointEquivalence.lean/declarations/damping-preserves-fixed-points--689ed628b9a8a74d33e44dac.md) | 50 | `result-track:689ed628b9a8a74d33e44dace93346db92a22ef61893646eca1934c138807775` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
