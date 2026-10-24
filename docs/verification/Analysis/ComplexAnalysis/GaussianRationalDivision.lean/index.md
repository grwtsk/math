# Verification target: GRWTSK.Analysis.Complex.GaussianRationalDivision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1afaf33f1d03b55195aa8f0358a4ec833fd11b6d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/GaussianRationalDivision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalDivision.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalDivision.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1afaf33f1d03b55195aa8f0358a4ec833fd11b6d`.

Source path: `GRWTSK/Analysis/Complex/GaussianRationalDivision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/GaussianRationalDivision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.GaussianRationalArithmetic`](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalArithmetic.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [qinv](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalDivision.lean/declarations/qinv--6675b77031d9be2bdd34e658.md) | 18 | `declaration-track:6675b77031d9be2bdd34e658f7947e20fcbf3084b11f11eca5845d624dc40cd3` |
| 2 | `lemma` | [normSq_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalDivision.lean/declarations/normsq-ne-zero--cd5e8cb17eaadf7007f26066.md) | 20 | `result-track:cd5e8cb17eaadf7007f260666af3d8a29d7ac441a2ac320dd1626f94c8c8e8d4` |
| 3 | `lemma` | [value_qinv](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalDivision.lean/declarations/value-qinv--f2255f68a2bb5de170f0cb19.md) | 26 | `result-track:f2255f68a2bb5de170f0cb19c8e89a99223c4f222d52209f48cebf9a7fd5eda6` |
| 4 | `lemma` | [inverse_norm_le](../../../../mathematics/Analysis/ComplexAnalysis/GaussianRationalDivision.lean/declarations/inverse-norm-le--9a3cca327cd8a790a64db070.md) | 38 | `result-track:9a3cca327cd8a790a64db07010199257d2bb524a67768eba4f611d575880cdf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
