# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Periods.Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "650b69126001d078176620c3167af06dd98d5ab2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `650b69126001d078176620c3167af06dd98d5ab2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.TaylorGerm` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeadingTermConventionData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/leadingtermconventiondata--461b15f84809dc84ea151ffb.md) | 47 | `declaration-track:461b15f84809dc84ea151ffb9936470b7f5d9147511e472f80e01a4907153147` |
| 2 | `structure` | [LeadingCoefficientAnalyticNormalizationCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/leadingcoefficientanalyticnormalizationcertificate--f315f644d3b0f294d2a7ac29.md) | 62 | `declaration-track:f315f644d3b0f294d2a7ac2955302ce882c30927b2046b7d3cfaab7d302ca23a` |
| 3 | `def` | [LeadingCoefficientAnalyticNormalizationCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/leadingcoefficientanalyticnormalizationcertificate-certifiedforbsd--fe3bcb6cc4dabbff93567bf0.md) | 104 | `declaration-track:fe3bcb6cc4dabbff93567bf0e6dfa39be9e9740dac21d3a84d181a3848178625` |
| 4 | `theorem` | [LeadingCoefficientAnalyticNormalizationCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/leadingcoefficientanalyticnormalizationcertificate-certifiedforbsd-of-fi--250be71262c32b43201b7c54.md) | 127 | `result-track:250be71262c32b43201b7c54c768832518f871430659473a0fb4f18471cdf574` |
| 5 | `inductive` | [ArchimedeanPlaceKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/archimedeanplacekind--18df6edcdfd8ec9212e8252d.md) | 155 | `declaration-track:18df6edcdfd8ec9212e8252daa05431bb21e10d509f33df806daf013c5f136f4` |
| 6 | `structure` | [ArchimedeanPlaceDescriptor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/archimedeanplacedescriptor--3f21caed0161a9f25d7f0c76.md) | 167 | `declaration-track:3f21caed0161a9f25d7f0c76dd54b93b281380558b6ad1d7954e00704a834c07` |
| 7 | `def` | [ArchimedeanPlaceDescriptor.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/archimedeanplacedescriptor-certifiedforbsd--c3ceeda4151295d3a7302ec2.md) | 187 | `declaration-track:c3ceeda4151295d3a7302ec24e494f618f86bde58fd415d5fb6efc9e39eff926` |
| 8 | `theorem` | [ArchimedeanPlaceDescriptor.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/archimedeanplacedescriptor-certifiedforbsd-of-fields--6a9654cbfb4e2ab0be23e05f.md) | 197 | `result-track:6a9654cbfb4e2ab0be23e05fd768f947d138bee2dfff46aabf07b5be391d231f` |
| 9 | `structure` | [InvariantDifferentialCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/invariantdifferentialcertificate--939ab1a2eb0fee98d49eae38.md) | 219 | `declaration-track:939ab1a2eb0fee98d49eae38e4cb8861c859d34c32ca2746122f786c03a4f5c5` |
| 10 | `def` | [InvariantDifferentialCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/invariantdifferentialcertificate-certifiedforbsd--73692b790b3788967b9c9615.md) | 238 | `declaration-track:73692b790b3788967b9c961570676e655333b8122e201326f9c62c3f2ce3c140` |
| 11 | `theorem` | [InvariantDifferentialCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/invariantdifferentialcertificate-certifiedforbsd-of-fields--7b27acff75c0bd8d738597ac.md) | 249 | `result-track:7b27acff75c0bd8d738597ac4b61ef0bcc01874399d8b100b6f0e7272259246b` |
| 12 | `structure` | [LocalPeriodCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/localperiodcertificate--f82639ed85100f4422d1c6e0.md) | 273 | `declaration-track:f82639ed85100f4422d1c6e09996a267228bcdbe6d7cc2ba1bd33d6604351f49` |
| 13 | `def` | [LocalPeriodCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/localperiodcertificate-certifiedforbsd--0eb21fe28833e973697c5b65.md) | 297 | `declaration-track:0eb21fe28833e973697c5b65382e14f1b5bcc1b6a85bfabec560291f276f4156` |
| 14 | `theorem` | [LocalPeriodCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/localperiodcertificate-certifiedforbsd-of-fields--ec34968cf1cc50a20757306d.md) | 311 | `result-track:ec34968cf1cc50a20757306d14c1c7bd6e24a577c47fdb390e10c0850418bbb3` |
| 15 | `structure` | [PeriodProductCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/periodproductcertificate--2593dab10d8ac25917936d72.md) | 339 | `declaration-track:2593dab10d8ac25917936d72961e07a3120423578b72c64fc9ff17af808c3aa7` |
| 16 | `def` | [PeriodProductCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/periodproductcertificate-certifiedforbsd--c4379f3751e36ebe2d54fd69.md) | 373 | `declaration-track:c4379f3751e36ebe2d54fd69395bf6d5d88bebaa0b8c220807d3e1439b296e1b` |
| 17 | `theorem` | [PeriodProductCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Periods/Variant14ac1f2171ad0f8bf6766d44a5881297d45b3243e68c44b0227f241e4ec84d18.lean/declarations/periodproductcertificate-certifiedforbsd-of-fields--e4fc268d1a5aa4587eaae3d2.md) | 391 | `result-track:e4fc268d1a5aa4587eaae3d2d34526ede3ee624fda6b3155ba36ecf58f113918` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
