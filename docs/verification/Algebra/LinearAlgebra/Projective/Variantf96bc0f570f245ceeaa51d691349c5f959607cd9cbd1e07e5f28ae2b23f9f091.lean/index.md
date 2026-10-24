# Verification target: GRWTSK.Algebra.LinearAlgebra.Projective.Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "517a9997a3e5ed3a27654dc80e53166fbeac165c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `517a9997a3e5ed3a27654dc80e53166fbeac165c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [ModuleCat.projective_of_categoryTheory_projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/declarations/modulecat-projective-of-categorytheory-projective--4e7e976e238d34170a074995.md) | 25 | `declaration-track:4e7e976e238d34170a0749955138b0c6834cd3f823c3c19cb3779cceef69e203` |
| 2 | `instance` | [ModuleCat.projective_of_module_projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/declarations/modulecat-projective-of-module-projective--7c3dbde9438881d67cb02c37.md) | 32 | `declaration-track:7c3dbde9438881d67cb02c37f056146247aa1aeb07eabfab50726f9db75e36d4` |
| 3 | `theorem` | [IsProjective.iff_projective](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/declarations/isprojective-iff-projective--aba5f747fce80e8eced37a18.md) | 41 | `result-track:aba5f747fce80e8eced37a1806f0125ae53d4ea10e4dd729f76d6f3b57602cd4` |
| 4 | `theorem` | [projective_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/declarations/projective-of-free--fd6e5ca60b29ee553e0719fd.md) | 52 | `result-track:fd6e5ca60b29ee553e0719fdccf078d0212cff8bcfc66ff8b9779ecb5b272b14` |
| 5 | `instance` | [enoughProjectives](../../../../../mathematics/Algebra/LinearAlgebra/Projective/Variantf96bc0f570f245ceeaa51d691349c5f959607cd9cbd1e07e5f28ae2b23f9f091.lean/declarations/enoughprojectives--8e1839424741a4beaeb09a48.md) | 58 | `declaration-track:8e1839424741a4beaeb09a48a3bfce165a37db5928a9afc7b7c261ce00db321f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
