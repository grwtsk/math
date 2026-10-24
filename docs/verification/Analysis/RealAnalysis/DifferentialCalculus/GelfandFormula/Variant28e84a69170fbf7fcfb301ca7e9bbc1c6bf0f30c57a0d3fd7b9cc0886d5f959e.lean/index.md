# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GelfandFormula.Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1eccbf5bc656f2a48b9cf9849d04afb95443b02",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1eccbf5bc656f2a48b9cf9849d04afb95443b02`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.RadiusLiminf` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_resolvent_const_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/hasderivat-resolvent-const-left--4f1cbb3b4a6b4d00a87a5bcb.md) | 53 | `result-track:4f1cbb3b4a6b4d00a87a5bcb5f2bf6e31c244f809b51c5a49dd9744edacaf353` |
| 2 | `theorem` | [hasFDerivAt_resolvent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/hasfderivat-resolvent--e3dbbdf4ab090e31412a09ee.md) | 64 | `result-track:e3dbbdf4ab090e31412a09ee51e74cb558678eeec811bf1f53052709de43748e` |
| 3 | `theorem` | [hasDerivAt_resolvent_const_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/hasderivat-resolvent-const-right--a7f32ce2bbe3e632971f9426.md) | 75 | `result-track:a7f32ce2bbe3e632971f94266eafab953bb07a456d688b596fe6fc6232845699` |
| 4 | `theorem` | [differentiableOn_inverse_one_sub_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/differentiableon-inverse-one-sub-smul--1c515f0e2ad3ad87f7fccb28.md) | 84 | `result-track:1c515f0e2ad3ad87f7fccb2899b3714b7883a8ec2e4e60addc2df4cf4eebad97` |
| 5 | `theorem` | [limsup_pow_nnnorm_pow_one_div_le_spectralRadius](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/limsup-pow-nnnorm-pow-one-div-le-spectralradius--43bd7428af26c3c9be9019d6.md) | 103 | `result-track:43bd7428af26c3c9be9019d6b7415456ba8adfda82cf70cbfebbf80767c6dd55` |
| 6 | `theorem` | [pow_nnnorm_pow_one_div_tendsto_nhds_spectralRadius](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/pow-nnnorm-pow-one-div-tendsto-nhds-spectralradius--604610579d8196702fd52c59.md) | 122 | `result-track:604610579d8196702fd52c59311e718c47cc43db1ea1912f809ee9eb05b16b50` |
| 7 | `theorem` | [pow_norm_pow_one_div_tendsto_nhds_spectralRadius](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/pow-norm-pow-one-div-tendsto-nhds-spectralradius--ecfe17a9ac26ac6fbb333193.md) | 133 | `result-track:ecfe17a9ac26ac6fbb333193ee230892f948788bd734bcf81656aca1c3f5abef` |
| 8 | `theorem` | [nonempty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/nonempty--1d9ba4613ac064b3026a7b8a.md) | 146 | `result-track:1d9ba4613ac064b3026a7b8aa8493b8519730724e509fc5a740824d0a942269e` |
| 9 | `theorem` | [exists_nnnorm_eq_spectralRadius](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/exists-nnnorm-eq-spectralradius--3ed7b4e66c9ac241538a80f6.md) | 162 | `result-track:3ed7b4e66c9ac241538a80f6f97c2123605181fa25d072598436c90367059e3f` |
| 10 | `theorem` | [spectralRadius_lt_of_forall_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/spectralradius-lt-of-forall-lt--6764ab15d81f5e89ad7beaf1.md) | 168 | `result-track:6764ab15d81f5e89ad7beaf1c8731afe0fc932dd4c9ecff3ee7470c3e1c1a1b6` |
| 11 | `theorem` | [map_polynomial_aeval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/map-polynomial-aeval--a06f878c24a744b410dbfbeb.md) | 175 | `result-track:a06f878c24a744b410dbfbeb837036666f20202fa87fbbab5c8288d9b9e237cf` |
| 12 | `theorem` | [map_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/map-pow--2f1728b81f6dc78568e13db5.md) | 182 | `result-track:2f1728b81f6dc78568e13db559178ab25072a74e89bb2f8bfa1ad534ec57bd45` |
| 13 | `theorem` | [algebraMap_eq_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/algebramap-eq-of-mem--41e519cf21e6170e1e71b7ff.md) | 189 | `result-track:41e519cf21e6170e1e71b7ffede7cc1ebb0b7b23c726e3cc102a30d851450f79` |
| 14 | `def` | [_root_.NormedRing.algEquivComplexOfComplete](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/GelfandFormula/Variant28e84a69170fbf7fcfb301ca7e9bbc1c6bf0f30c57a0d3fd7b9cc0886d5f959e.lean/declarations/root-normedring-algequivcomplexofcomplete--a78c16f3fc4a52215f751ba8.md) | 203 | `declaration-track:a78c16f3fc4a52215f751ba858a01df1ece723f2ff4082f32bad5735d2be17a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
