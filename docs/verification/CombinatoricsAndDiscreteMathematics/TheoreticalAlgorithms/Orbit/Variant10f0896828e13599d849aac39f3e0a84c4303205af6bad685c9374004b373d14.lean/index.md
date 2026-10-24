# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Orbit.Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81c3230a7364f35c41b2ecb0d0e5d4e223122e50",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81c3230a7364f35c41b2ecb0d0e5d4e223122e50`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Weight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/weight--e88e1f7b4833bf0c3dca5d71.md) | 21 | `declaration-track:e88e1f7b4833bf0c3dca5d7132e7c26520694f2e3aec542813f630fe926e0471` |
| 2 | `def` | [Weight.difference](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/weight-difference--fb8a3b3a1a83063ad3405a53.md) | 23 | `declaration-track:fb8a3b3a1a83063ad3405a53ea58b8aefafbe77a678cea56c33baa05866fc535` |
| 3 | `structure` | [RelationLatticeCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/relationlatticecertificate--cdadf00e709182403417f35a.md) | 26 | `declaration-track:cdadf00e709182403417f35a1d680bd15581cfe75d562808050420432ef4dcf0` |
| 4 | `structure` | [WeightedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/weightedcomponent--384bcd3112929e5fd7fb8146.md) | 35 | `declaration-track:384bcd3112929e5fd7fb814630e53b86eac25eaa758d1309365e0d238b96bcc0` |
| 5 | `def` | [sameCharacter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/samecharacter--dd9d48fe48e2c8bee3a874e6.md) | 40 | `declaration-track:dd9d48fe48e2c8bee3a874e699844efadc4045e2a6cbce6ea077408db7aa7571` |
| 6 | `def` | [characterProjection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/characterprojection--c6ea8ec191792d34380dea42.md) | 45 | `declaration-track:c6ea8ec191792d34380dea428e6b61c722f6096399691adadc0e07442e1af70e` |
| 7 | `theorem` | [component_mem_own_projection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/component-mem-own-projection--8e0b3923179fdaf6b2a50ef9.md) | 54 | `result-track:8e0b3923179fdaf6b2a50ef91d05526638476b1ec98d222a450398bd0d4a5606` |
| 8 | `structure` | [CharacterCoverageCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/charactercoveragecertificate--6edfb229f15bfa757e26fb72.md) | 64 | `declaration-track:6edfb229f15bfa757e26fb728e8323f7960f0a60554c979ef0eef47d1e6a2038` |
| 9 | `structure` | [AbelReynoldsAgreement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/abelreynoldsagreement--0994f0d596265ae9898f3fd5.md) | 74 | `declaration-track:0994f0d596265ae9898f3fd51abd0f5f15fa6ef48cf2ed34381e2dc2fd1a1130` |
| 10 | `def` | [invariantWeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/invariantweight--51329b667650293f7625e359.md) | 81 | `declaration-track:51329b667650293f7625e3598fa25c8aaee8cd7c183f951dcd57626c292e0a4a` |
| 11 | `def` | [invariantProjection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/invariantprojection--1e3dc9da0397653a96925c8e.md) | 84 | `declaration-track:1e3dc9da0397653a96925c8e47a413749b8bec532c558fe6f18ec16e90b4ba7e` |
| 12 | `theorem` | [nontrivial_component_is_not_detected_by_invariant_projection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Orbit/Variant10f0896828e13599d849aac39f3e0a84c4303205af6bad685c9374004b373d14.lean/declarations/nontrivial-component-is-not-detected-by-invariant-projection--f322bdf540559451ba6bb2d1.md) | 89 | `result-track:f322bdf540559451ba6bb2d1f92997595645d1d58fac467b56f54ac7bb99803b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
