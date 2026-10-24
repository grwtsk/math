# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Bounds.Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33b8a0a23ee67ad79be222aff0d47b9e64a6b0fd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33b8a0a23ee67ad79be222aff0d47b9e64a6b0fd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsGLB.exists_between_self_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855.lean/declarations/isglb-exists-between-self-add--8b8b2bd73618a089b113f9f2.md) | 17 | `result-track:8b8b2bd73618a089b113f9f2aa9b747d6c9d6d28fdf73eced374d88ccc23af51` |
| 2 | `theorem` | [IsGLB.exists_between_self_add'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855.lean/declarations/isglb-exists-between-self-add--88af6dd6e2c58e0e50204595.md) | 20 | `result-track:88af6dd6e2c58e0e50204595d625b061839cd757c47ae9091f6510c91f81c10f` |
| 3 | `theorem` | [IsLUB.exists_between_sub_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855.lean/declarations/islub-exists-between-sub-self--6665f4cabda1255333ce1d3e.md) | 24 | `result-track:6665f4cabda1255333ce1d3e05d5a7580cc2987dd1d7dd60143643365b89e3a2` |
| 4 | `theorem` | [IsLUB.exists_between_sub_self'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant16705c5d042e3736f72c64ac7e433f9eeef34c72e17d135147df8841ee38d855.lean/declarations/islub-exists-between-sub-self--1950dafee649de639678585c.md) | 27 | `result-track:1950dafee649de639678585cdf616507aad32eaf68c161ce69404d3643b92c97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
