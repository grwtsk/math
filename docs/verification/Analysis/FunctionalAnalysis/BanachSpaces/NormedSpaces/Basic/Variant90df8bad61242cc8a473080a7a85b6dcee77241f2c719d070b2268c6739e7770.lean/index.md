# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Basic.Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8d6bf5d9974ba70c398d7a3603a6b84a3380bcd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8d6bf5d9974ba70c398d7a3603a6b84a3380bcd`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Dual` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [WStarAlgebra](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/wstaralgebra--ccfcc6ca1c97d67e7b87bdc3.md) | 49 | `declaration-track:ccfcc6ca1c97d67e7b87bdc37d0d9f3d58cefa19533ac15150cd30496d80c6fb` |
| 2 | `structure` | [VonNeumannAlgebra](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/vonneumannalgebra--9b4059ffe0f7bbb60a489899.md) | 71 | `declaration-track:9b4059ffe0f7bbb60a48989939109100f65fe9dcd0f8237b501003fc3fa8db7b` |
| 3 | `instance` | [instSetLike](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/instsetlike--fb89187d2098f4e95333ca44.md) | 86 | `declaration-track:fb89187d2098f4e95333ca44d5b1ab57ea0ffb71a7e1e3bae4564e3e70ac8ee2` |
| 4 | `instance` | [instStarMemClass](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/inststarmemclass--3620f862ca598b3dcfeb198c.md) | 90 | `declaration-track:3620f862ca598b3dcfeb198cb97a1757a4f25713abb2e10d58ceb6b4a3de10bf` |
| 5 | `instance` | [instSubringClass](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/instsubringclass--203d076ebda8d7c5caa3b1d7.md) | 93 | `declaration-track:203d076ebda8d7c5caa3b1d7fcc8de13e2cd08453b4a973b2d102da9d8e3d75c` |
| 6 | `theorem` | [mem_carrier](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/mem-carrier--ac45821dcd977efa0f1233ac.md) | 101 | `result-track:ac45821dcd977efa0f1233ac361e9654dbc44751388a997c587e42aec73aee69` |
| 7 | `theorem` | [coe_toStarSubalgebra](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/coe-tostarsubalgebra--23f9200283a481a2f287deea.md) | 106 | `result-track:23f9200283a481a2f287deeac4ba1a3bf33d2e83adeb868b61111b8a0e82d85e` |
| 8 | `theorem` | [coe_mk](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/coe-mk--bd07eda23e801adb6adf2210.md) | 111 | `result-track:bd07eda23e801adb6adf2210cb99da516966d4f4986d001d8387c64baaff1db6` |
| 9 | `theorem` | [ext](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/ext--09cfbabf3b64fb67ec5fa4de.md) | 116 | `result-track:09cfbabf3b64fb67ec5fa4debf528b2e487a1e1cddf44a6496f79bb35e54716f` |
| 10 | `theorem` | [centralizer_centralizer](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/centralizer-centralizer--d03d1b3c8739377d94b8c29a.md) | 120 | `result-track:d03d1b3c8739377d94b8c29a5f5b3e5c40ce8b1c4181643d488e0e602e33ca6b` |
| 11 | `def` | [commutant](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/commutant--a0b58815d1f25b3862327973.md) | 125 | `declaration-track:a0b58815d1f25b3862327973fda5c1945252986301c8e5aae690624cd785fde0` |
| 12 | `theorem` | [coe_commutant](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/coe-commutant--44e853699a8b6b9e6003bb12.md) | 130 | `result-track:44e853699a8b6b9e6003bb129a5ec41d2d91b07f4bf7f6a984a454e4f9df7934` |
| 13 | `theorem` | [mem_commutant_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/mem-commutant-iff--26b87c3072d13c8162b3347c.md) | 135 | `result-track:26b87c3072d13c8162b3347c4c983cd52b8a9f5217634f286df078bee1a78c77` |
| 14 | `theorem` | [commutant_commutant](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant90df8bad61242cc8a473080a7a85b6dcee77241f2c719d070b2268c6739e7770.lean/declarations/commutant-commutant--b4256b18cf4b6dfda11c1ad2.md) | 141 | `result-track:b4256b18cf4b6dfda11c1ad2ad02a4bba5fc1921dc7ff895c513d0f5c7145df4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
