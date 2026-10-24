# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.HarmonicPartialSums.Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f167680ccea32222ca2214be2a611f05d9cf27ff",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f167680ccea32222ca2214be2a611f05d9cf27ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicPartial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean/declarations/harmonicpartial--c4ba5d80bead62da1c375220.md) | 16 | `declaration-track:c4ba5d80bead62da1c375220e5afb49506d377aa2f1ebf00baca4e815bffd0c6` |
| 2 | `theorem` | [harmonicPartial_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean/declarations/harmonicpartial-nonneg--fdb55ddb5d641c54d2dbb198.md) | 20 | `result-track:fdb55ddb5d641c54d2dbb1983f23c9abe497913d77264be2880dc30ea30abe2f` |
| 3 | `theorem` | [harmonicPartial_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean/declarations/harmonicpartial-mono--b3057190815f3f7b3611db9d.md) | 28 | `result-track:b3057190815f3f7b3611db9db8b8ae85651e8343989c4b7c9cbc577e626c5116` |
| 4 | `theorem` | [harmonicPartial_eq_range_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean/declarations/harmonicpartial-eq-range-sum--4eca15ff945f3188d52141cf.md) | 41 | `result-track:4eca15ff945f3188d52141cfb9ddac304e39581589667c8b4ee246fd0f62f0e5` |
| 5 | `theorem` | [harmonicPartial_unbounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variantc41a96cc7beb0919a17142ed802beac5b3c3eb065d7a5ba4ada5cd2caf728393.lean/declarations/harmonicpartial-unbounded--f6733f30ee98fd93b0696ac2.md) | 70 | `result-track:f6733f30ee98fd93b0696ac2cdc861034dcfe63c671f53832c5d66f287cbea3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
