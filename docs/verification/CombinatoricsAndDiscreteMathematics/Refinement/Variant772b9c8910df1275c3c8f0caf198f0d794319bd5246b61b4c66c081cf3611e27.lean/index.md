# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Refinement.Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cc90b3d99445e94d9654b1d79f619beec3c322e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cc90b3d99445e94d9654b1d79f619beec3c322e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.UniqueZero` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CellPartitionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean/declarations/cellpartitioncertificate--ff4e408c4845caf30e661fcd.md) | 26 | `declaration-track:ff4e408c4845caf30e661fcd20ae0a08466a2b2142634727d11db061023ace10` |
| 2 | `structure` | [CountPreservingRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean/declarations/countpreservingrefinement--095f05f50382bec570c7b4bf.md) | 50 | `declaration-track:095f05f50382bec570c7b4bf636f85733211497f50d349ece1903248e946c27d` |
| 3 | `inductive` | [RefinementDisposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean/declarations/refinementdisposition--2ea289c9bc948abf556ba7e9.md) | 79 | `declaration-track:2ea289c9bc948abf556ba7e9d4762265d0c7e113fd0f8e77f965f413cd121c2d` |
| 4 | `theorem` | [countPreservingRefinement_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean/declarations/countpreservingrefinement-sound--5babe4749ace4aee69d268ed.md) | 93 | `result-track:5babe4749ace4aee69d268ed9e90212929a2243d7319d939a256099b95a99bf3` |
| 5 | `theorem` | [countPreservingRefinement_preserves_totalMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean/declarations/countpreservingrefinement-preserves-totalmass--35f7a435c957e6153ab69180.md) | 106 | `result-track:35f7a435c957e6153ab691805c12348835d2430af39a5080f2f631568197c129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
