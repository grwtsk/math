# Verification target: GRWTSK.Algebra.GroupTheory.AnalyticPDE.Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "727ece9fa37a82e6764c7d9b19ededeb8e7061cd",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `727ece9fa37a82e6764c7d9b19ededeb8e7061cd`.

Source path: `GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Heat` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Homology.OrientedFlatness` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.Homology.Coverage` — import line 8; external provider; requires a separately pinned dependency.
- `Surface.Homology.QuasiIsomorphism` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RicciFlowMode](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/ricciflowmode--c6d620533ae0b7a9dbd199fe.md) | 34 | `declaration-track:c6d620533ae0b7a9dbd199feda10bfba4e6fd47515234c1c02b73314e25ac898` |
| 2 | `structure` | [AnalyticHeatFlowCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/analyticheatflowcertificate--9ff1a61f059962ae2767a93f.md) | 48 | `declaration-track:9ff1a61f059962ae2767a93f3d20723aa260088fe43838e52deef362ec08d129` |
| 3 | `def` | [AnalyticHeatFlowCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/analyticheatflowcertificate-certifiedformajorproof--d63ec193247c39b8afb51641.md) | 79 | `declaration-track:d63ec193247c39b8afb516419529214f937fa3922067662b1aa15e0805667d7b` |
| 4 | `theorem` | [AnalyticHeatFlowCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/analyticheatflowcertificate-certifiedformajorproof-of-fields--220a996cc7d6fd84413d62dd.md) | 95 | `result-track:220a996cc7d6fd84413d62dd10b6a135888cad4f12b819cf932560ada56007b1` |
| 5 | `structure` | [RicciFlowTheoremCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/ricciflowtheoremcertificate--f803eb1aa7ed855f4ec0dacb.md) | 119 | `declaration-track:f803eb1aa7ed855f4ec0dacbb86a68af25fa19807321b6c818644591abba5c78` |
| 6 | `def` | [RicciFlowTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/ricciflowtheoremcertificate-certifiedformajorproof--ffa3e93b6fbc606dc7633d25.md) | 158 | `declaration-track:ffa3e93b6fbc606dc7633d25b2534565849cbc4cdbb466bb7a9c10d71d2adbaa` |
| 7 | `theorem` | [RicciFlowTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/ricciflowtheoremcertificate-certifiedformajorproof-of-fields--bc5e943f66bb65fff60ab951.md) | 170 | `result-track:bc5e943f66bb65fff60ab951a38d2ffa968ff93902a0cb3b7042bfd05b16f924` |
| 8 | `structure` | [QuasiIsomorphismTheoremCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/quasiisomorphismtheoremcertificate--8eccddd152f61b4e1df06630.md) | 185 | `declaration-track:8eccddd152f61b4e1df06630e733b7e1cdb3518d77b0908b505ff22e31eb4178` |
| 9 | `def` | [QuasiIsomorphismTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/quasiisomorphismtheoremcertificate-certifiedformajorproof--39f6f4362443c1613df48084.md) | 207 | `declaration-track:39f6f4362443c1613df48084034f0cd4fce916eff68eab0ab6f19115c8020df9` |
| 10 | `theorem` | [QuasiIsomorphismTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/quasiisomorphismtheoremcertificate-certifiedformajorproof-of-fields--5b232ed79aa2ca62aced2106.md) | 215 | `result-track:5b232ed79aa2ca62aced21067924e9dec78fdbb88df50c1f9b6fd019c363f72d` |
| 11 | `structure` | [HomologyStabilityTheoremCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/homologystabilitytheoremcertificate--f80b3639edceed747d4b3055.md) | 226 | `declaration-track:f80b3639edceed747d4b30557ee575a25c51f8eeb1913bd0f1fdd77f2e822392` |
| 12 | `def` | [HomologyStabilityTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/homologystabilitytheoremcertificate-certifiedformajorproof--47f2ef8d6e38525ec525be62.md) | 250 | `declaration-track:47f2ef8d6e38525ec525be62d7977baca862b8f10ba804682734cde6b47d0f39` |
| 13 | `theorem` | [HomologyStabilityTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/homologystabilitytheoremcertificate-certifiedformajorproof-of-fields--601e15a98615d0979d89175d.md) | 259 | `result-track:601e15a98615d0979d89175da14b2ed350712a75d0bb77a5be50251215956324` |
| 14 | `structure` | [AnalyticPDEHomologyStabilityTheoremCertificate](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/analyticpdehomologystabilitytheoremcertificate--9fb62a6f223477ab49bb3791.md) | 276 | `declaration-track:9fb62a6f223477ab49bb3791a24bd0dc0c9cd98fd5fe69506967bbc021ed8b29` |
| 15 | `def` | [AnalyticPDEHomologyStabilityTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/analyticpdehomologystabilitytheoremcertificate-certifiedformajorproof--c8caa3bee1b9d649eb846aba.md) | 316 | `declaration-track:c8caa3bee1b9d649eb846aba3ca0902c4bfd54ae8401f5bab382f09e245c6256` |
| 16 | `theorem` | [AnalyticPDEHomologyStabilityTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/analyticpdehomologystabilitytheoremcertificate-certifiedformajorproof-of--060c147380e5e5921472a9cf.md) | 329 | `result-track:060c147380e5e5921472a9cfdd1073814463f7379aabb0a2b85b9aa6b57ec468` |
| 17 | `theorem` | [analytic_pde_flow_preserves_declared_homology](../../../../../mathematics/Algebra/GroupTheory/AnalyticPDE/Variantcb44650afa71543d122ca1320dfcb8ac131d46f20d0c02b393aba1e39f71b53f.lean/declarations/analytic-pde-flow-preserves-declared-homology--4aefbc2b7988c91b4c61d296.md) | 349 | `result-track:4aefbc2b7988c91b4c61d296c0b7a3cfab9ad136c909cde40f629d13c1952ade` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
