# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt04.Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faf5901006206a028b9fd81123067e9dd54e5ff1",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faf5901006206a028b9fd81123067e9dd54e5ff1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean.json)

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
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/positivemeasure--4898d08bd04451c96601faa4.md) | 15 | `declaration-track:4898d08bd04451c96601faa472b525b8662393449d9ccf1b0f40f615e5694c3a` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/positivel2--16284c02a28c34eb089ef60c.md) | 16 | `declaration-track:16284c02a28c34eb089ef60c12b9ca6ca39797e9c5d596fe82bb48e498610ccb` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilatefunc--53a14ea061b08f8395f62a2a.md) | 18 | `declaration-track:53a14ea061b08f8395f62a2ac84cc730c30516d5bcbc6285e83f078e35814069` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/positivemeasure-map-mul--e23eacb2682cf182b7dc0b5a.md) | 20 | `result-track:e23eacb2682cf182b7dc0b5a46b38475a7238a6c4ec6d0da7812a92c191128f9` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/positive-mul-quasi--cb45aa656206511ab167b517.md) | 29 | `result-track:cb45aa656206511ab167b517c5c6a79461fe2908d500044bc32670e7bf21c5e9` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilatefunc-memlp--804d24e625fa712494e97cef.md) | 35 | `result-track:804d24e625fa712494e97cef618af3ac0e102cd74eebb07f3a2bd3d98f798208` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilate--6daa8222d477c19e0c1e260c.md) | 42 | `declaration-track:6daa8222d477c19e0c1e260cd4b3cff2b01d9743054e53b02997fba652a5b671` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilate-ae--5c21669c3b755da81f71cb95.md) | 45 | `result-track:5c21669c3b755da81f71cb954d1f86325131bce8dbf89fb402215d3dc55919ea` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/norm-sq-integral--e65b7e1065b38705df69c0f9.md) | 49 | `result-track:e65b7e1065b38705df69c0f9fb873b3c4727959e87b60ea726efb1ea3094b351` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilate-norm-sq--8875ecf4c1a295759abc6564.md) | 64 | `result-track:8875ecf4c1a295759abc6564fed8f79d21b3ebc919d9ec843991e6c671127d84` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilate-norm--270f76b92da898514049ff5a.md) | 78 | `result-track:270f76b92da898514049ff5ab0cb78218fe7fa53ff708b8be39aaaf0f0603751` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilate-one--9a44d4e986f3aefb2f139544.md) | 81 | `result-track:9a44d4e986f3aefb2f1395446da79a4d56d70250080e6253e1a5ad233ab7e523` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilate-comp--ec1fc67e7e2125a19b6d6d3a.md) | 86 | `result-track:ec1fc67e7e2125a19b6d6d3a7655fa1b9d152523043b520857c1016b51837094` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilate-inverse--6fc5f8515bc89a0a05d8f4a8.md) | 98 | `result-track:6fc5f8515bc89a0a05d8f4a81e0b55a8e7dc9b5def0f5470f422b099a4fa6b03` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilate-add--982943601d7a8fe9012da030.md) | 103 | `result-track:982943601d7a8fe9012da0303a142d1bbd0d865b40082acf67e796b468bc223f` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilate-smul--24fb460593b085d31bde9413.md) | 113 | `result-track:24fb460593b085d31bde9413e5c02c55f9fe52afc3f560cab1297acb88982189` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilationisometry--ec06be0981b78084f9ded384.md) | 124 | `declaration-track:ec06be0981b78084f9ded384fe111560cc930e79fc33c07072d2b9e3324d61e2` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt04/Variante1bc823b58db2308c4384c1dd80d5eb82fcc9311c8cb43a40dc8c30866c906bb.lean/declarations/dilationequiv--359503e1f6fea6fb5c82980f.md) | 130 | `declaration-track:359503e1f6fea6fb5c82980f676c09541fe4cb949cdba73977e5a76b367bda72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
