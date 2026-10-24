# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PoleGreenArithmetic.Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4542eb0b4186a5eaebfb61486e77f54a792ee7e2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4542eb0b4186a5eaebfb61486e77f54a792ee7e2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleGreenWeakIdentity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pole_squared_operator_eq_zero_of_not_mem_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/pole-squared-operator-eq-zero-of-not-mem-tsupport--4d761d8796cf73a802ae5976.md) | 35 | `result-track:4d761d8796cf73a802ae5976a260a0ab98d3fda3e07f275c7547db9e362f34e4` |
| 2 | `theorem` | [pole_squared_operator_has_compact_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/pole-squared-operator-has-compact-support--0fc3b348a23602a3bb8d3174.md) | 42 | `result-track:0fc3b348a23602a3bb8d3174674f6181c51de89b7bee105bf2750bd728e79af8` |
| 3 | `theorem` | [translated_green_operator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/translated-green-operator-integrable--15e723e9bef0b8bbed515680.md) | 50 | `result-track:15e723e9bef0b8bbed5156803fffcedea5dea2b2d13ae5dd31560730736b12b3` |
| 4 | `theorem` | [translated_green_operator_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/translated-green-operator-integral--9536543d1dc7823e02514a15.md) | 60 | `result-track:9536543d1dc7823e02514a15aa9ba782d5e1b785934faf8d56c95220e4cfa887` |
| 5 | `theorem` | [continuum_green_operator_joint_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/continuum-green-operator-joint-integrable--af8d94fae0f3b2f6c3e8bb73.md) | 73 | `result-track:af8d94fae0f3b2f6c3e8bb735fdb7ba48499c3a9c1c961ae3013198a6e2b8839` |
| 6 | `theorem` | [continuum_green_operator_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/continuum-green-operator-integral--2433575f21e1d6d72ef3b0ec.md) | 103 | `result-track:2433575f21e1d6d72ef3b0ec9e4181e3e465df4911605952c72d08d55c33d6d8` |
| 7 | `theorem` | [continuum_green_operator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/continuum-green-operator-integrable--ae4958068970b18a98d22d33.md) | 130 | `result-track:ae4958068970b18a98d22d335a0f3ebcffc777968f503e41504bf4d4e4a3e9cd` |
| 8 | `theorem` | [prime_square_green_operator_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/prime-square-green-operator-integrable--be8c76585973e93ea866e9dc.md) | 142 | `result-track:be8c76585973e93ea866e9dceaa8d72e3c76fee66ad2224790486704c95d796e` |
| 9 | `theorem` | [prime_square_green_weak_discrepancy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/prime-square-green-weak-discrepancy--786758d39a8b4aecab01f4f3.md) | 155 | `result-track:786758d39a8b4aecab01f4f387fdfafd8e637820377f57fbafdad29a5ba09cac` |
| 10 | `theorem` | [prime_square_green_source_correlation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/prime-square-green-source-correlation-integrable--5834a5e0fce704e605bcdd94.md) | 179 | `result-track:5834a5e0fce704e605bcdd94ef46c9273626f96b9fc88ee82f7098b33f93dc78` |
| 11 | `theorem` | [prime_square_green_source_correlation_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/declarations/prime-square-green-source-correlation-pairing--759e81d5eac7e2e517ac71dd.md) | 188 | `result-track:759e81d5eac7e2e517ac71dd7423fcf69581c6584bccb3832df0355cc02243cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
