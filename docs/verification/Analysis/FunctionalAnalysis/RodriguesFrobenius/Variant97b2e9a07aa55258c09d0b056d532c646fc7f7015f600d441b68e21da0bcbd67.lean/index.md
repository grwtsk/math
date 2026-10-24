# Verification target: GRWTSK.Analysis.FunctionalAnalysis.RodriguesFrobenius.Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bedeb4fcdaf7fff645e3aeb1625cfe8c915b6da0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bedeb4fcdaf7fff645e3aeb1625cfe8c915b6da0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Core.SemanticIdentity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SkewAdjointGenerator](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/skewadjointgenerator--664768aad4fd04b4b27bca69.md) | 35 | `declaration-track:664768aad4fd04b4b27bca69b0d23d4a485c4e7ac0c0b2fb89c1867a1cea9ba7` |
| 2 | `structure` | [GeneralizedRodrigues](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/generalizedrodrigues--57cb552cef62d97e2dd1953c.md) | 48 | `declaration-track:57cb552cef62d97e2dd1953c53dba1f13dd6637c57aada88e980135b22751e4c` |
| 3 | `def` | [generalizedRodrigues](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/generalizedrodrigues--53c3fd962e7233882c35e44d.md) | 57 | `declaration-track:53c3fd962e7233882c35e44d52d5ca77904ed9a5e24cd665f9250fdbcc850279` |
| 4 | `theorem` | [generalizedRodrigues_isometry](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/generalizedrodrigues-isometry--8405f824d6257fb6078c5bb0.md) | 63 | `result-track:8405f824d6257fb6078c5bb04c8a30f8018446d4c4354103e1d974f4c4aa4cbb` |
| 5 | `structure` | [FrobeniusSemilinear](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/frobeniussemilinear--971d214f09f6e546cbb94a22.md) | 70 | `declaration-track:971d214f09f6e546cbb94a222672d73943f9d075af4801cff0d8708db8a620b5` |
| 6 | `structure` | [FrobeniusPairing](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/frobeniuspairing--8a504fc83ddc245901b16d86.md) | 87 | `declaration-track:8a504fc83ddc245901b16d86bc9fe233b12bcd3b0e3530fb8c1cda99fe347712` |
| 7 | `structure` | [RodriguesFrobenius](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/rodriguesfrobenius--b5ef26c2d25f0c488d867616.md) | 96 | `declaration-track:b5ef26c2d25f0c488d867616444d5d15ca7a8cf27218edde507a3ccbaa13b2ce` |
| 8 | `def` | [frobeniusPullback](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/frobeniuspullback--a3199911c1a99191f364deaf.md) | 107 | `declaration-track:a3199911c1a99191f364deaf13f5d2121994d3dcfc65755c3c55fd7ff7e102cf` |
| 9 | `def` | [rodriguesFrobenius](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/rodriguesfrobenius--7f76c0a9b407973cd83de574.md) | 113 | `declaration-track:7f76c0a9b407973cd83de574275b41ef83e8c80c90da439e5b484d326bc5264e` |
| 10 | `theorem` | [rodriguesFrobenius_semilinear](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/rodriguesfrobenius-semilinear--39269884e3229d4952e026b1.md) | 121 | `result-track:39269884e3229d4952e026b1b3c5702802dde24b6a6a4392c884427254664334` |
| 11 | `theorem` | [tensorRepresentation_preserves_frobenius](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/tensorrepresentation-preserves-frobenius--f6262bdba7df655ac57eb6e3.md) | 133 | `result-track:f6262bdba7df655ac57eb6e3d9acdf97cdd461c9e283a08362f0b5e9091798a2` |
| 12 | `structure` | [RodriguesFrobeniusNaturality](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/rodriguesfrobeniusnaturality--29338761b3d406d262f513c1.md) | 146 | `declaration-track:29338761b3d406d262f513c12ba945e3649e7c17f90929a34d3a61811e9c192b` |
| 13 | `theorem` | [rodriguesFrobenius_natural](../../../../../mathematics/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant97b2e9a07aa55258c09d0b056d532c646fc7f7015f600d441b68e21da0bcbd67.lean/declarations/rodriguesfrobenius-natural--a952dc5a333986ff3f36dbb1.md) | 162 | `result-track:a952dc5a333986ff3f36dbb107537c16491e0efd2b3274495d7aa512132a59ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
