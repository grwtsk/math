# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Analytic.Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d4425b4de63ada131243cbee2b89776438451db",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d4425b4de63ada131243cbee2b89776438451db`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiffDef` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFPowerSeriesAt.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesat-hasstrictfderivat--c001adf86653bbbc9b6dc8a1.md) | 36 | `result-track:c001adf86653bbbc9b6dc8a1f69cf49ed5735d94a0a5dfea56c5fdfe098ff058` |
| 2 | `theorem` | [HasFPowerSeriesAt.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesat-hasfderivat--ca13f4a7cbd411da474dccba.md) | 44 | `result-track:ca13f4a7cbd411da474dccba78558ea48255afcdfb7b97a14e2ced3a911b28c4` |
| 3 | `theorem` | [HasFPowerSeriesAt.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesat-differentiableat--a7e648ee78fae67888235f00.md) | 49 | `result-track:a7e648ee78fae67888235f0060cd2c343922c48ecf3638a542d9bd3ca2f1c1e0` |
| 4 | `theorem` | [AnalyticAt.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/analyticat-differentiableat--aa512b5b74f72df01e216875.md) | 53 | `result-track:aa512b5b74f72df01e216875854c99a1ecdb1967c9fd97e74a9929833671b064` |
| 5 | `theorem` | [AnalyticAt.differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/analyticat-differentiablewithinat--e304077ee1224e9b1294ffb9.md) | 57 | `result-track:e304077ee1224e9b1294ffb9992b1e35b076f4fd420d39818cf561e17fc4eb02` |
| 6 | `theorem` | [HasFPowerSeriesAt.fderiv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesat-fderiv-eq--a884b883582766015e728235.md) | 61 | `result-track:a884b883582766015e72823568782642903074ced23bf568cd88764969124192` |
| 7 | `theorem` | [HasFPowerSeriesOnBall.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesonball-differentiableon--efbdd6a4f9e0dcf8b72fb8c9.md) | 66 | `result-track:efbdd6a4f9e0dcf8b72fb8c98f47d685dcd810489a0626dca62d55fa4fea2a0b` |
| 8 | `theorem` | [AnalyticOn.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/analyticon-differentiableon--9fe4024daf31dc155de2a27e.md) | 71 | `result-track:9fe4024daf31dc155de2a27ead21052379f4893e564599d876b553b235eb27b0` |
| 9 | `theorem` | [HasFPowerSeriesOnBall.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesonball-hasfderivat--6f06ec530f57aca9807d54af.md) | 75 | `result-track:6f06ec530f57aca9807d54af2510fddcea02b7bc82877bb708879bf5aa3317cf` |
| 10 | `theorem` | [HasFPowerSeriesOnBall.fderiv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesonball-fderiv-eq--ced3ab8275deebb0f377476d.md) | 81 | `result-track:ced3ab8275deebb0f377476df0ecf1dbe50095e3dc6a8db234ca864155a81bb6` |
| 11 | `theorem` | [HasFPowerSeriesOnBall.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesonball-fderiv--ba7e8799cd5436da4c94f6cf.md) | 88 | `result-track:ba7e8799cd5436da4c94f6cfa089e2b74ee11e7574062241f48b9a6ce1bafc87` |
| 12 | `theorem` | [AnalyticOn.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/analyticon-fderiv--effdd56c882400b9083b706d.md) | 119 | `result-track:effdd56c882400b9083b706d207b1a93566c7627dea98cb5b1840d0641f4e55e` |
| 13 | `theorem` | [AnalyticOn.iteratedFDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/analyticon-iteratedfderiv--f27493249bec6053b6f990ed.md) | 127 | `result-track:f27493249bec6053b6f990ed5bdd86bbe6513da6d5f0f36096a9ac5244603644` |
| 14 | `theorem` | [AnalyticOn.contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/analyticon-contdiffon--952e097d843b8653357bd3b2.md) | 144 | `result-track:952e097d843b8653357bd3b2f394c0d09cba7cb87f9214ae681d23ca400a2c3f` |
| 15 | `theorem` | [AnalyticAt.contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/analyticat-contdiffat--6820e27ecdabfe84d7ee0ec4.md) | 161 | `result-track:6820e27ecdabfe84d7ee0ec4f505b10208118bcaa4017afb086c874a15d91229` |
| 16 | `theorem` | [HasFPowerSeriesAt.hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesat-hasstrictderivat--c98e91e2e90361f20b2fafa9.md) | 174 | `result-track:c98e91e2e90361f20b2fafa9e2bb7e6ea64c377dae1319d8c4ffdba4ab332f0d` |
| 17 | `theorem` | [HasFPowerSeriesAt.hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesat-hasderivat--c312e22d624389f719a8592c.md) | 179 | `result-track:c312e22d624389f719a8592c7686bccffb651f2b9814fe1e450c63b0ac88a118` |
| 18 | `theorem` | [HasFPowerSeriesAt.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/hasfpowerseriesat-deriv--9c5ec0357eff16e84b7cb83a.md) | 184 | `result-track:9c5ec0357eff16e84b7cb83a73b479d749bb3ded71494d90d82910fa8b17d0d0` |
| 19 | `theorem` | [AnalyticOn.deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/analyticon-deriv--9360ff5a817407a5c00bf979.md) | 190 | `result-track:9360ff5a817407a5c00bf97945454a2d2cbaf78555cd10636d95d187445a3486` |
| 20 | `theorem` | [AnalyticOn.iterated_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant199ca98ba94f8ae89d93b7b71d5389f06ae29ac3553100d373d15bc5781d3b78.lean/declarations/analyticon-iterated-deriv--cca8c597e598b2a0c6d3d9f7.md) | 195 | `result-track:cca8c597e598b2a0c6d3d9f7884cfd8d5371fee6eb3b9b1469ecdf030fda06a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
