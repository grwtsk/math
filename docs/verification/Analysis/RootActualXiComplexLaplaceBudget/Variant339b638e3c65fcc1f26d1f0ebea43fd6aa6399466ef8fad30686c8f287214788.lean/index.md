# Verification target: GRWTSK.Analysis.RootActualXiComplexLaplaceBudget.Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f903dd770834fdbccfd7ebbe4769a406c2f21eb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/index.md) · [Full source](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f903dd770834fdbccfd7ebbe4769a406c2f21eb`.

Source path: `GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiComplexLaplace](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/declarations/actualxicomplexlaplace--7fe74aa9a9a5c787b5e428a8.md) | 20 | `declaration-track:7fe74aa9a9a5c787b5e428a8c31a8362ba713da4132d62a8ff8a5a1f40399d11` |
| 2 | `theorem` | [coefficient_nonneg](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/declarations/coefficient-nonneg--802a1589f55cd58d807dbc60.md) | 24 | `result-track:802a1589f55cd58d807dbc6098791328fdd13fc61ede9e4e361c73a680f2105d` |
| 3 | `theorem` | [primitive_continuousOn_Ici](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/declarations/primitive-continuouson-ici--474a29f1336692ca9b2f1e92.md) | 28 | `result-track:474a29f1336692ca9b2f1e92bb95e7294fdb0cf261e7d26ec0081d65bda55209` |
| 4 | `theorem` | [actualXiComplexLaplaceKernel_norm_le](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/declarations/actualxicomplexlaplacekernel-norm-le--71432a6c5d1e34cce6d6853d.md) | 41 | `result-track:71432a6c5d1e34cce6d6853db094bfc29f7ebba12f9f51b15c56f79a451bd8bf` |
| 5 | `theorem` | [actualXiComplexLaplace_integrableOn](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/declarations/actualxicomplexlaplace-integrableon--96967ea981e847b0c429596f.md) | 56 | `result-track:96967ea981e847b0c429596ffb9536f257930953aec33035ae9fca395435cbac` |
| 6 | `theorem` | [actualXiComplexLaplace_norm_le](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant339b638e3c65fcc1f26d1f0ebea43fd6aa6399466ef8fad30686c8f287214788.lean/declarations/actualxicomplexlaplace-norm-le--91eeb2f8190cbd8e1a9a795c.md) | 72 | `result-track:91eeb2f8190cbd8e1a9a795ce91be9059a5b348cba35f2bbc1f2a067cc624a3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
