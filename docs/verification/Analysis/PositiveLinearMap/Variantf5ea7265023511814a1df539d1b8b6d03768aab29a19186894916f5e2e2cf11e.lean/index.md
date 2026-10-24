# Verification target: GRWTSK.Analysis.PositiveLinearMap.Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cc592d474d152c83c4166400f0cf4373efc7f7e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean/index.md) · [Full source](../../../../mathematics/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cc592d474d152c83c4166400f0cf4373efc7f7e`.

Source path: `GRWTSK/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.PositiveLinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.SpecialFunctions.PosPart` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_isSelfAdjoint](../../../../mathematics/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean/declarations/map-isselfadjoint--c4f00f1b30f204c80f9e6752.md) | 40 | `result-track:c4f00f1b30f204c80f9e67524dd821517538b9e8148263d3997a5b1a8b4154a7` |
| 2 | `lemma` | [apply_le_of_isSelfAdjoint](../../../../mathematics/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean/declarations/apply-le-of-isselfadjoint--a65a7e383da17b5937f6bdcd.md) | 57 | `result-track:a65a7e383da17b5937f6bdcd5dd24641c98a5cc4a9518a2e824a876a0afcf9af` |
| 3 | `lemma` | [norm_apply_le_of_nonneg](../../../../mathematics/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean/declarations/norm-apply-le-of-nonneg--b07802246b4da522b111398d.md) | 62 | `result-track:b07802246b4da522b111398dda32678d935dbf2226475838b75d3b6c5ddf0100` |
| 4 | `lemma` | [exists_norm_apply_le](../../../../mathematics/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean/declarations/exists-norm-apply-le--8c3bdf5515f93462d13cb297.md) | 77 | `result-track:8c3bdf5515f93462d13cb2973e90e906febd3cb5cfc092885503f491610a66bf` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean/declarations/instance--c15d8aa183efc9965bb0295f.md) | 127 | `declaration-track:c15d8aa183efc9965bb0295fcadda2fafc1c9415330063b202dad5f86820935c` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/PositiveLinearMap/Variantf5ea7265023511814a1df539d1b8b6d03768aab29a19186894916f5e2e2cf11e.lean/declarations/instance--d89982f90750fd07d2df46b1.md) | 135 | `declaration-track:d89982f90750fd07d2df46b198bfd8ad2d03c389d582b9973f9acaaedbbebfe2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
