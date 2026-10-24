# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.HarmonicPartialSums.Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad7b997852d88d900a70949e590055cfa77208d4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad7b997852d88d900a70949e590055cfa77208d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicPartial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean/declarations/harmonicpartial--4cccb2ece7a458c13fd3f7aa.md) | 24 | `declaration-track:4cccb2ece7a458c13fd3f7aa7f8edf335d615069d50a1115f4babc4875201325` |
| 2 | `theorem` | [harmonicPartial_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean/declarations/harmonicpartial-nonneg--3adbb5fc78d4dac2121d79a1.md) | 28 | `result-track:3adbb5fc78d4dac2121d79a161c07818b926d250ea86007f8510f3455eb9d0af` |
| 3 | `theorem` | [harmonicPartial_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean/declarations/harmonicpartial-mono--4450ce6ce0fdc26dccebe69c.md) | 36 | `result-track:4450ce6ce0fdc26dccebe69cd094e696e156a7da1f0e12f2c15cd10efeb817ef` |
| 4 | `theorem` | [harmonicPartial_eq_range_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean/declarations/harmonicpartial-eq-range-sum--ff271f1262e5f125eccdbfec.md) | 49 | `result-track:ff271f1262e5f125eccdbfec2933e1b40232e6d7dcb568a2240c65c0e08bf8fb` |
| 5 | `theorem` | [harmonicPartial_unbounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarmonicPartialSums/Variant8bbda6fc773543bde5f9cf65d3a0a56b42c30f97fc08e80548b1e961eee28903.lean/declarations/harmonicpartial-unbounded--3c3375c5397fd14ead74033e.md) | 78 | `result-track:3c3375c5397fd14ead74033eb8a5ba1169d08203a9f967a0fd5d7cee65c27848` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
