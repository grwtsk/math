# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Factorization.Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c89efb0fda2161c33c9f2b493b0bdd688e070b3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c89efb0fda2161c33c9f2b493b0bdd688e070b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrixFlow.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryLogicMatrixFlowFactorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean/declarations/binarylogicmatrixflowfactorization--a7447dd0ca50328b32d4154a.md) | 6 | `declaration-track:a7447dd0ca50328b32d4154ad139617e1fa62b3067f214dbc02af58ac2747f38` |
| 2 | `def` | [canonicalFlow4Factorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean/declarations/canonicalflow4factorization--3c1deed7bac113713a7859f4.md) | 12 | `declaration-track:3c1deed7bac113713a7859f4af6be5135861decdbc18210cfcefd3f556d85806` |
| 3 | `theorem` | [canonicalFlow4_factorization_checked](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean/declarations/canonicalflow4-factorization-checked--5bd4542ae94bcb9965ba0da3.md) | 18 | `result-track:5bd4542ae94bcb9965ba0da30193079549178e006fcf0b28a103c8b2208ad222` |
| 4 | `theorem` | [flowFactorization_forward_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean/declarations/flowfactorization-forward-bijective--18ec1567c5072929611cfd6d.md) | 22 | `result-track:18ec1567c5072929611cfd6d20946d772196869c763912a3baed67720ff14086` |
| 5 | `theorem` | [flowFactorization_boundary_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean/declarations/flowfactorization-boundary-visible--b976732c075b21d5fe6aa393.md) | 27 | `result-track:b976732c075b21d5fe6aa393097609e927897cfda1110c42dc2effced0b6dfae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
