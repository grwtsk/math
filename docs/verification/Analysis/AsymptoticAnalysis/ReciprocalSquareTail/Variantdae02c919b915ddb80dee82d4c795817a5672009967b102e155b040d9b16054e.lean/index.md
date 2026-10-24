# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ReciprocalSquareTail.Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcd6d90786a6f2ea47ee0829784ac2f361653204",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcd6d90786a6f2ea47ee0829784ac2f361653204`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocal_square_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean/declarations/reciprocal-square-tail-le--c32c6fd83d462db22cd85e3a.md) | 27 | `result-track:c32c6fd83d462db22cd85e3ad02183f9cae79f4fd2394abec0be2299b87069e4` |
| 2 | `theorem` | [sqrt_cutoff_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean/declarations/sqrt-cutoff-tail-le--11a748f3af8426e82f009dc1.md) | 34 | `result-track:11a748f3af8426e82f009dc11266c6383d37d028da199e1782418b7812976835` |
| 3 | `theorem` | [floor_sqrt_cutoff_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdae02c919b915ddb80dee82d4c795817a5672009967b102e155b040d9b16054e.lean/declarations/floor-sqrt-cutoff-tail-le--deebd6b7c5e6ae302d4bc9a1.md) | 56 | `result-track:deebd6b7c5e6ae302d4bc9a17027b5f2bcc06361bff1624cbe911cb4ed1edade` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
