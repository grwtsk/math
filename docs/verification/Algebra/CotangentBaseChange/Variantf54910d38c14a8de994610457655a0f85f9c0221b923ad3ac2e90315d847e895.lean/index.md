# Verification target: GRWTSK.Algebra.CotangentBaseChange.Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ae7a45c4b2c1c6238ad67816baf722cb8570a57",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/index.md) · [Full source](../../../../mathematics/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ae7a45c4b2c1c6238ad67816baf722cb8570a57`.

Source path: `GRWTSK/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean.json)

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
| 1 | `def` | [tensorCotangentHom](../../../../mathematics/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/declarations/tensorcotangenthom--d00bb204cec1d3dcc652fd2b.md) | 51 | `declaration-track:d00bb204cec1d3dcc652fd2b78286b90fbfc6b4e4700d2fde737e320311150ab` |
| 2 | `lemma` | [tensorCotangentHom_tmul](../../../../mathematics/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/declarations/tensorcotangenthom-tmul--0cc447716bfba86d72b70fc1.md) | 66 | `result-track:0cc447716bfba86d72b70fc1b1362fcd081f48572fe85b2eb7db1689ac7bfa13` |
| 3 | `lemma` | [tensorCotangentHom_surjective](../../../../mathematics/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/declarations/tensorcotangenthom-surjective--2e4cc02812968217c85c21ff.md) | 73 | `result-track:2e4cc02812968217c85c21ff74b3df8b92049f71e95a4738590d9de1df82e1a5` |
| 4 | `lemma` | [tensorCotangentHom_injective_of_flat](../../../../mathematics/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/declarations/tensorcotangenthom-injective-of-flat--fd8c349bd2a020e3133bd1d8.md) | 94 | `result-track:fd8c349bd2a020e3133bd1d8c9db89bb5dbf00fc0b41f43ff4b1d805fc95136f` |
| 5 | `def` | [tensorCotangentEquiv](../../../../mathematics/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/declarations/tensorcotangentequiv--8b109ac407a10c43b857276f.md) | 119 | `declaration-track:8b109ac407a10c43b857276f38231619b0b820f4ec91a0c534870fda263a2651` |
| 6 | `lemma` | [tensorCotangentEquiv_tmul](../../../../mathematics/Algebra/CotangentBaseChange/Variantf54910d38c14a8de994610457655a0f85f9c0221b923ad3ac2e90315d847e895.lean/declarations/tensorcotangentequiv-tmul--5fd14d66ed30483b4692af1a.md) | 126 | `result-track:5fd14d66ed30483b4692af1a4b8896ef8352ec94afedd079ef511d185a817a2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
