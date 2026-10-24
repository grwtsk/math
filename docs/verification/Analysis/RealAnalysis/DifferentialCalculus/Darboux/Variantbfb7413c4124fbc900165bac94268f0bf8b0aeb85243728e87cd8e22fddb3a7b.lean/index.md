# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Darboux.Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b30c4c4c85d81f5ae1e15ed98521362068d6646a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b30c4c4c85d81f5ae1e15ed98521362068d6646a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_hasDerivWithinAt_eq_of_gt_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/exists-hasderivwithinat-eq-of-gt-of-lt--86dc4e8127ce6baf3c4647c3.md) | 38 | `result-track:86dc4e8127ce6baf3c4647c39cbdbcfd6c03f4e17135b8794e93a40a3dbe14e7` |
| 2 | `theorem` | [exists_hasDerivWithinAt_eq_of_lt_of_gt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/exists-hasderivwithinat-eq-of-lt-of-gt--a828780f820e04c9dfa1feeb.md) | 74 | `result-track:a828780f820e04c9dfa1feebd7e5289a1e426ebbf2f042338348aa49deef69c1` |
| 3 | `theorem` | [Set.OrdConnected.image_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/set-ordconnected-image-hasderivwithinat--ed0b9c2eb8100aa24ae18848.md) | 84 | `result-track:ed0b9c2eb8100aa24ae18848f921f8f9081b1d4ea83eea7eca07f9bc17ecec41` |
| 4 | `theorem` | [Set.OrdConnected.image_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/set-ordconnected-image-derivwithin--186db367464059648ab096c8.md) | 102 | `result-track:186db367464059648ab096c8d38a516e39e0599274684568b9eeb59cf353077c` |
| 5 | `theorem` | [Set.OrdConnected.image_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/set-ordconnected-image-deriv--7c99d5e97fa19d363959387d.md) | 108 | `result-track:7c99d5e97fa19d363959387d8de63bfbe885f897d6c7ca746d6696b3ba444723` |
| 6 | `theorem` | [Convex.image_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/convex-image-hasderivwithinat--b5d2078ca7a59d01f1003223.md) | 114 | `result-track:b5d2078ca7a59d01f1003223830f6369f210b706c3c7e2b22570317a4b6427a9` |
| 7 | `theorem` | [Convex.image_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/convex-image-derivwithin--2ba20c181057b67d07505fce.md) | 120 | `result-track:2ba20c181057b67d07505fcecff8d2ed26c2c4e41f37fb6c5ab130af1ae6a502` |
| 8 | `theorem` | [Convex.image_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/convex-image-deriv--a53280f782005e0bfc7fac17.md) | 126 | `result-track:a53280f782005e0bfc7fac17666f0191b6f477875b8cc374f9dc3e2da2728bdf` |
| 9 | `theorem` | [exists_hasDerivWithinAt_eq_of_ge_of_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/exists-hasderivwithinat-eq-of-ge-of-le--b5bdbffa5fe6cc74c18ba978.md) | 132 | `result-track:b5bdbffa5fe6cc74c18ba978740734151f1d65bbbd837cbf9d601dfbf0f33be2` |
| 10 | `theorem` | [exists_hasDerivWithinAt_eq_of_le_of_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/exists-hasderivwithinat-eq-of-le-of-ge--5f1895449931f01229ae2103.md) | 140 | `result-track:5f1895449931f01229ae2103527c1356dfdea6abb00a0570a72bd37d1a34b72c` |
| 11 | `theorem` | [hasDerivWithinAt_forall_lt_or_forall_gt_of_forall_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variantbfb7413c4124fbc900165bac94268f0bf8b0aeb85243728e87cd8e22fddb3a7b.lean/declarations/hasderivwithinat-forall-lt-or-forall-gt-of-forall-ne--92629fbc092a068c2cb6056b.md) | 148 | `result-track:92629fbc092a068c2cb6056bc8d6ea6754680c281bfa892437591676c465a3a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
