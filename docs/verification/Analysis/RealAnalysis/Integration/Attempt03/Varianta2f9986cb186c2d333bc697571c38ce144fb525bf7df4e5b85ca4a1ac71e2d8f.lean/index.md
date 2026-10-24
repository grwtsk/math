# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt03.Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f25eba22a88d6bac6a43bd356afbf6c0b67ef51",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f25eba22a88d6bac6a43bd356afbf6c0b67ef51`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/declarations/normalizedtransform--5fb1e4c9f406642ee8bf6ff1.md) | 33 | `declaration-track:5fb1e4c9f406642ee8bf6ff1c84b78e7a6ac6bc80f95f2c9ef1ca4c4dde515e5` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/declarations/boundarytransform--c1005d80fe7c5277b1541b0f.md) | 38 | `declaration-track:c1005d80fe7c5277b1541b0f50379eddb15ba8a7a378ab0e94a06b7641846e00` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/declarations/normalizedtransform-dictionary--e3072c421080482b2295d737.md) | 41 | `result-track:e3072c421080482b2295d737dfa4fd2d03f2fe4db2213bfee88887be6674d3b4` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/declarations/normalized-integrand-integrable--40e51d50a7d237ce835eed07.md) | 51 | `result-track:40e51d50a7d237ce835eed07960e7782cd353819bb9ac34b2729252b99b35f4a` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/declarations/full-complex-correlation-square--e57958ebc6a41fb1ada4a5fb.md) | 62 | `result-track:e57958ebc6a41fb1ada4a5fb3409908643ad6a80bb511cb766796e7ed23ee0f5` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/declarations/interval-complex-correlation-square--932f22ce5b0a4e58f120f61b.md) | 93 | `result-track:932f22ce5b0a4e58f120f61b96756f93bfd0c06a36d2a2a3990841d534de7fad` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/declarations/critical-complex-ibp--0e690f10658af98bc366403c.md) | 114 | `result-track:0e690f10658af98bc366403c74d02c70c069576cff6d1b7b500f287bc9e4aee8` |
| 8 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Varianta2f9986cb186c2d333bc697571c38ce144fb525bf7df4e5b85ca4a1ac71e2d8f.lean/declarations/boundary-transform-exact--99551906c732d9d58ce1be86.md) | 155 | `result-track:99551906c732d9d58ce1be866224847ab8ccca3023b6c57a6d203f0cf2774d49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
