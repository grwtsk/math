# Verification target: GRWTSK.Analysis.AsymptoticCone.Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6d3cca76862e8debf7ae8fae84ba2c926f2aa2e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6d3cca76862e8debf7ae8fae84ba2c926f2aa2e`.

Source path: `GRWTSK/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AffineSpace.asymptoticNhds_le_cobounded](../../../../mathematics/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean/declarations/affinespace-asymptoticnhds-le-cobounded--7771ca9de7cb4b3c0bafdfc6.md) | 35 | `result-track:7771ca9de7cb4b3c0bafdfc67e90883e8c9093ee5aeb21dc6210f3ef857c657d` |
| 2 | `theorem` | [asymptoticCone_subset_singleton_of_bounded](../../../../mathematics/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean/declarations/asymptoticcone-subset-singleton-of-bounded--3a17c71f92d9d0d660099420.md) | 47 | `result-track:3a17c71f92d9d0d66009942068d40d44e25a940538095d6c38099f863ee080fe` |
| 3 | `theorem` | [AffineSpace.cobounded_eq_iSup_sphere_asymptoticNhds](../../../../mathematics/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean/declarations/affinespace-cobounded-eq-isup-sphere-asymptoticnhds--45ecbf43dc201ee4eb63e773.md) | 55 | `result-track:45ecbf43dc201ee4eb63e773294639a4dc753d049eb97133754e831177cf7aa4` |
| 4 | `theorem` | [isBounded_iff_asymptoticCone_subset_singleton](../../../../mathematics/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean/declarations/isbounded-iff-asymptoticcone-subset-singleton--a9f3be8d4738fc2cbd5a7fcb.md) | 77 | `result-track:a9f3be8d4738fc2cbd5a7fcbec5fa96a4a59a39ab88b0f4abbc5d71887540232` |
| 5 | `theorem` | [not_bounded_iff_exists_ne_zero_mem_asymptoticCone](../../../../mathematics/Analysis/AsymptoticCone/Variant4cdbf7232a750ac105e54d72d4df17abf646f7ea9495377e1b272ce952ae002a.lean/declarations/not-bounded-iff-exists-ne-zero-mem-asymptoticcone--f56f6b0920afa83ad092ac51.md) | 87 | `result-track:f56f6b0920afa83ad092ac516a0790a79c335602148e76a198eb8e4b91c3fa7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
