# Verification target: GRWTSK.Analysis.MeasureTheory.WithDensityVec.Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae2e6dabd5ce78df77d591ac5935e114023762df",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae2e6dabd5ce78df77d591ac5935e114023762df`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean.json)

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
| 1 | `def` | [withDensity](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/withdensity--86257946f31a73e3a44e1e95.md) | 42 | `declaration-track:86257946f31a73e3a44e1e950274b7ed57c96a336cd561087d8fcc8b1c671767` |
| 2 | `lemma` | [withDensity_apply](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/withdensity-apply--80907f85ccde20f269042028.md) | 51 | `result-track:80907f85ccde20f2690420284b7510760033afc94b16d112547d5d4f21dc3fac` |
| 3 | `lemma` | [withDensity_apply_univ](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/withdensity-apply-univ--9f573640a3a673f08f21f9c3.md) | 55 | `result-track:9f573640a3a673f08f21f9c35689455f81ae873095f440739e16e07d538263b0` |
| 4 | `lemma` | [withDensity_zero_vectorMeasure](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/withdensity-zero-vectormeasure--ee7b072241fe60ebdd1f6418.md) | 61 | `result-track:ee7b072241fe60ebdd1f641840c2e55c5cd5e55c37b88a2d9bd54d975793a0b2` |
| 5 | `lemma` | [withDensity_zero](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/withdensity-zero--a2c83c0b1441b32744f203da.md) | 66 | `result-track:a2c83c0b1441b32744f203daf292786faa5d423ec5fb667ef8ee78fb635f27ac` |
| 6 | `lemma` | [withDensity_congr](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/withdensity-congr--423f576d5af858501ed0ae80.md) | 70 | `result-track:423f576d5af858501ed0ae800e2e08b6fd8f1ea9d0d4a96088ad2a2b05a64f63` |
| 7 | `lemma` | [restrict_withDensity](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/restrict-withdensity--a27a2223e36e382da35615d1.md) | 80 | `result-track:a27a2223e36e382da35615d15b9d249a25eabe2572e9258608771dce648106e9` |
| 8 | `lemma` | [variation_WithDensity_le](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/variation-withdensity-le--2e249ad7836f7282e91e0d60.md) | 88 | `result-track:2e249ad7836f7282e91e0d60da1a90488491dc7ee8888d279d167ca9057e6024` |
| 9 | `lemma` | [variation_withDensity'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/variation-withdensity--1a81be2af597372a452bd119.md) | 106 | `result-track:1a81be2af597372a452bd1195fc4d96ac9e5bebab1c0b348fa354973c1f58704` |
| 10 | `lemma` | [variation_withDensity](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/variation-withdensity--92501f8ada99b34da15590c8.md) | 354 | `result-track:92501f8ada99b34da15590c837ddacc87cf5127dd3ea5ef1f06eec651ac69b20` |
| 11 | `lemma` | [_root_.MeasureTheory.Measure.variation_withDensityᵥ](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.lean/declarations/root-measuretheory-measure-variation-withdensity--0fc9eb9c644260acf1c1fc72.md) | 366 | `result-track:0fc9eb9c644260acf1c1fc7286f35488ca67c4fe1f555e669a817b7f9747da92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
