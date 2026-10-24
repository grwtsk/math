# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt08.Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e6fc46e1088004d93a3b18b2aaf907e9edb426e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e6fc46e1088004d93a3b18b2aaf907e9edb426e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/positivemeasure--0bae83bda1aaa6aebdb7f2dd.md) | 14 | `declaration-track:0bae83bda1aaa6aebdb7f2ddbf595404b50b9f4e1a9fc94b4fffbed436088811` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/positivel2--763fc1c398c0c01808e43b5f.md) | 15 | `declaration-track:763fc1c398c0c01808e43b5f3920506417d38981c796c879800b66d98c97f0b3` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilatefunc--6e28e447bce20f085901130f.md) | 17 | `declaration-track:6e28e447bce20f085901130f8d948762234625f332716d15cc8f21a77d18f809` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/positivemeasure-map-mul--ace7008c34297aae63ef1728.md) | 19 | `result-track:ace7008c34297aae63ef17287ac983ccaaa701eefb7e90f5bdb8133cc8fbe166` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/positive-mul-quasi--2735d79ea2ff0574288c8ad8.md) | 28 | `result-track:2735d79ea2ff0574288c8ad809f644fe70888fadb28bff1f59b1d4093be932dc` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilatefunc-memlp--aaffe2f0af595ba825bc2454.md) | 34 | `result-track:aaffe2f0af595ba825bc2454dfc0f1909ce67f3223af4004cabf34f27f15bd68` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilate--db75e1af7ab2515be7860010.md) | 41 | `declaration-track:db75e1af7ab2515be78600108de9ccb360cfb003dd7a47059f1cc43984d9b99f` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilate-ae--9dbba393b98561f1b6de3420.md) | 44 | `result-track:9dbba393b98561f1b6de34208031b2a87894cdd7b4d94ecc61f531f3da8f2ce2` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/norm-sq-integral--af8c14072946150effdc5bd1.md) | 48 | `result-track:af8c14072946150effdc5bd1bc5d049c43bff588cb7432910b8724baf59e4f7d` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilate-norm-sq--b366bcbd897a54253798af0f.md) | 64 | `result-track:b366bcbd897a54253798af0ff4321f312e339cff35a89639e03d18188117be9e` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilate-norm--a78ebfc30597440a9526fdd6.md) | 78 | `result-track:a78ebfc30597440a9526fdd6bfb6f0ff5b6b35fad6d0c73d8f94560ea205f8b6` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilate-one--b0fac70a5a8280d4bef3caec.md) | 81 | `result-track:b0fac70a5a8280d4bef3caecbf4b8f71081ae31d054c56ea38b95361245627c2` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilate-comp--e3db915d18f15266ec0e3dca.md) | 86 | `result-track:e3db915d18f15266ec0e3dca213cc20a204fbeacc22d8d7385db38d903fd0c24` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilate-inverse--3d1e73d38ffba199f635e59e.md) | 98 | `result-track:3d1e73d38ffba199f635e59eb6750b2226530061bbe7fc3fc1551f66a459891a` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilate-add--b11191c389c9bd153f57dc25.md) | 103 | `result-track:b11191c389c9bd153f57dc253f5bc37bbc99278ce7c3d979fda2efb72cdfba1d` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilate-smul--aa6ad984dd01a0ab0a4c2613.md) | 113 | `result-track:aa6ad984dd01a0ab0a4c2613b2f02d2bdc330c2a91234b07bdb5659763683a3d` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilationisometry--663509f481f1ed6d74fa1f1d.md) | 124 | `declaration-track:663509f481f1ed6d74fa1f1d03ee1572380c9c24fd59372b293802830375caad` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant826d9f1ed77e012f8008745582a4e30b86620901465b74a037b4d0838e11475d.lean/declarations/dilationequiv--faa591eb2056e2bd9fa5bfd9.md) | 130 | `declaration-track:faa591eb2056e2bd9fa5bfd97d0c711d323c6fcb34651b006f4bebb132c4eebb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
