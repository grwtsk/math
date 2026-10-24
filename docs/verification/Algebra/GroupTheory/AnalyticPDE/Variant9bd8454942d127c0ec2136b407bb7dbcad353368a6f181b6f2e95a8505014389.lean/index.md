# Verification target: GRWTSK.Algebra.GroupTheory.AnalyticPDE.Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "544b2e06cbfea51980476e61127977bc285dd504",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `544b2e06cbfea51980476e61127977bc285dd504`.

Source path: `GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Heat` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Homology.OrientedFlatness` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.Homology.Coverage` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.Homology.QuasiIsomorphism` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RicciFlowMode](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/ricciflowmode--e8152e3d8271be6ad59425d5.md) | 26 | `declaration-track:e8152e3d8271be6ad59425d55a2b20c1ad4746b9bde34f3dca920e80ee00497c` |
| 2 | `structure` | [AnalyticHeatFlowCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/analyticheatflowcertificate--045337d211c2a4755c7f802e.md) | 40 | `declaration-track:045337d211c2a4755c7f802ea68d168cfaf555defcf050326f707fd6d3780c79` |
| 3 | `def` | [AnalyticHeatFlowCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/analyticheatflowcertificate-certifiedformajorproof--2fce395750206471ac8ee57d.md) | 71 | `declaration-track:2fce395750206471ac8ee57ddeba6bd4d1ded6442430046a27860830b5723004` |
| 4 | `theorem` | [AnalyticHeatFlowCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/analyticheatflowcertificate-certifiedformajorproof-of-fields--b7c2e8f8630d490c0a4cb04c.md) | 87 | `result-track:b7c2e8f8630d490c0a4cb04cae40fad2b114ea1a0a296ab8fbc01664d6cd2d8e` |
| 5 | `structure` | [RicciFlowTheoremCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/ricciflowtheoremcertificate--e7172014727407ef0001d20a.md) | 111 | `declaration-track:e7172014727407ef0001d20a8dc8c0e18e649ff1d579ad2dbcce542901d19ead` |
| 6 | `def` | [RicciFlowTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/ricciflowtheoremcertificate-certifiedformajorproof--0a5b6932b16f0852d70f6463.md) | 150 | `declaration-track:0a5b6932b16f0852d70f646397ab6c4a493156c06ffed42a0084f5812fb138b4` |
| 7 | `theorem` | [RicciFlowTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/ricciflowtheoremcertificate-certifiedformajorproof-of-fields--86fb5a3573689c9859578860.md) | 162 | `result-track:86fb5a3573689c9859578860f0e452a1a9ab2a7b52a2fc26d91709942f7659f1` |
| 8 | `structure` | [QuasiIsomorphismTheoremCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/quasiisomorphismtheoremcertificate--7117b0882b31c534a041b3b6.md) | 177 | `declaration-track:7117b0882b31c534a041b3b69681edb937b0c6baea107c47612082fed154960d` |
| 9 | `def` | [QuasiIsomorphismTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/quasiisomorphismtheoremcertificate-certifiedformajorproof--4e14b1eb0580da402c6cbf31.md) | 199 | `declaration-track:4e14b1eb0580da402c6cbf3135106cc064ec9a7c64e89025069ab15ab8d140c6` |
| 10 | `theorem` | [QuasiIsomorphismTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/quasiisomorphismtheoremcertificate-certifiedformajorproof-of-fields--ef1979dd0063eea8e7ff9bff.md) | 207 | `result-track:ef1979dd0063eea8e7ff9bff3964ee89763ffa9531573e08380145d0b7904527` |
| 11 | `structure` | [HomologyStabilityTheoremCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/homologystabilitytheoremcertificate--355bec66520fc9bb85b79a52.md) | 218 | `declaration-track:355bec66520fc9bb85b79a52d7bd80eab3a721ca1217ca6c1b5cdc6c76068421` |
| 12 | `def` | [HomologyStabilityTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/homologystabilitytheoremcertificate-certifiedformajorproof--06763484a3b5dc975a9da5bb.md) | 242 | `declaration-track:06763484a3b5dc975a9da5bb6b3139ba0a8f84abd9438a991107be74da4c3ea7` |
| 13 | `theorem` | [HomologyStabilityTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/homologystabilitytheoremcertificate-certifiedformajorproof-of-fields--72015d4178d410594823a57e.md) | 251 | `result-track:72015d4178d410594823a57e89fad40ae35a1f8308043d92d605b1c59da15273` |
| 14 | `structure` | [AnalyticPDEHomologyStabilityTheoremCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/analyticpdehomologystabilitytheoremcertificate--f9da56622b735b9b731f28be.md) | 268 | `declaration-track:f9da56622b735b9b731f28be7e368144420edec2668d0cb992c531108e519607` |
| 15 | `def` | [AnalyticPDEHomologyStabilityTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/analyticpdehomologystabilitytheoremcertificate-certifiedformajorproof--9b7576dce32475e1c6c4fdd6.md) | 308 | `declaration-track:9b7576dce32475e1c6c4fdd60a1019dc569ad823858a5211520ee30544ea810d` |
| 16 | `theorem` | [AnalyticPDEHomologyStabilityTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/analyticpdehomologystabilitytheoremcertificate-certifiedformajorproof-of--c279d91c46acf0f8a7a032e6.md) | 321 | `result-track:c279d91c46acf0f8a7a032e605efabab8cf8790ffd40274b17f829ae56d3cfdb` |
| 17 | `theorem` | [analytic_pde_flow_preserves_declared_homology](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean/declarations/analytic-pde-flow-preserves-declared-homology--11366b3ecb97cb209dc49b27.md) | 341 | `result-track:11366b3ecb97cb209dc49b275e00e76aab7e2adf72631205340a6a33cffcc671` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
