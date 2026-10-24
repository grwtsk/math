# Verification target: GRWTSK.Analysis.FunctionalAnalysis.ConductorThreePolarizedPackets.Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed88aa1f162aad9f73c66cd4824de82cd93a4e6f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed88aa1f162aad9f73c66cd4824de82cd93a4e6f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SmoothDyadicWeight](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/smoothdyadicweight--a7c104486933bab3fda3665a.md) | 42 | `declaration-track:a7c104486933bab3fda3665a7ff0bd6354e0cf16dbbdf3ff7981648e6f01e7e6` |
| 2 | `instance` | [instCoeFunSmoothDyadicWeight](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/instcoefunsmoothdyadicweight--443ccabeb34c6e09b3fc5d99.md) | 47 | `declaration-track:443ccabeb34c6e09b3fc5d99f84e270a1dea3fdc2f183d8b8fdffc36d4126a5a` |
| 3 | `def` | [smoothWeightCost](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/smoothweightcost--e0b654a01bb0d58cf8c9926e.md) | 53 | `declaration-track:e0b654a01bb0d58cf8c9926e0040213fadd6c15eafbed989ecfe9e3d5c3f9725` |
| 4 | `def` | [polarizedSmoothedSum](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/polarizedsmoothedsum--bde41675b8b47217b6d8c850.md) | 60 | `declaration-track:bde41675b8b47217b6d8c85026224afe65748a630d80eb8728d84826e87b687b` |
| 5 | `def` | [ConductorThreePolarizedPacketEstimate](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/conductorthreepolarizedpacketestimate--0e034f34b69f8feebc439260.md) | 67 | `declaration-track:0e034f34b69f8feebc4392609c15aded05fbb2f80fd9c771bb26591cc558930e` |
| 6 | `def` | [PrimeCoefficientBlock](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/primecoefficientblock--e9c18b3b4c993f45989e3e77.md) | 79 | `declaration-track:e9c18b3b4c993f45989e3e7759a996d906c30af773f10ff36071fa3354489b17` |
| 7 | `def` | [actualPrimeCoefficientBlock](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/actualprimecoefficientblock--9a1fdd118c22cc52951e9208.md) | 84 | `declaration-track:9a1fdd118c22cc52951e9208f36a9f48989371eefe0606224230de8ce137ea54` |
| 8 | `structure` | [TwistedBilinearBlock](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/twistedbilinearblock--776d7737bb072fb10934bce7.md) | 90 | `declaration-track:776d7737bb072fb10934bce76d7402e1b269bd6912c78c13835174b2c53f346f` |
| 9 | `def` | [TwistedBilinearBlock.sum](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/twistedbilinearblock-sum--008af736c3fedeaaf429a16a.md) | 100 | `declaration-track:008af736c3fedeaaf429a16ab7c77c593c50cce7ff5a4f58521a87540cb67aaa` |
| 10 | `inductive` | [CharacterPolarization](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/characterpolarization--fce7cf7c925a4ed87133c6c8.md) | 108 | `declaration-track:fce7cf7c925a4ed87133c6c8d1a2b75aa8d372d350679a425a1b74857163d0d4` |
| 11 | `def` | [coefficientPolarization](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/coefficientpolarization--e9ea436853c11fe2be447fbf.md) | 118 | `declaration-track:e9ea436853c11fe2be447fbfd91b6f6431c3a3e00fd44814e8e4d0cab5536356` |
| 12 | `structure` | [PolarizedArithmeticPacketConfiguration](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/polarizedarithmeticpacketconfiguration--ff4987f65c3541229b2700bc.md) | 126 | `declaration-track:ff4987f65c3541229b2700bc4dbc168ea9b9bd5c4e7a809e9944b9fa7765b322` |
| 13 | `structure` | [PolarizedPacketGeometry](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/polarizedpacketgeometry--44144c1bf452de65b4c42e54.md) | 139 | `declaration-track:44144c1bf452de65b4c42e5448425ed7730c08bfba16cf53c85466f3c4711700` |
| 14 | `def` | [PolarizedArithmeticPacketConfiguration.WangZahlAdmissible](../../../../../mathematics/Analysis/FunctionalAnalysis/ConductorThreePolarizedPackets/Variantd7a6b6ff5e56824e8ddd94703582cba216df4f45926803a951cbd5bfe9bfa1d6.lean/declarations/polarizedarithmeticpacketconfiguration-wangzahladmissible--3561a9ec11eece715bccf3ee.md) | 157 | `declaration-track:3561a9ec11eece715bccf3eeaa08f2c3f0956449aae37b70c98b8d949184f77a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
