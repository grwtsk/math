# Verification target: GRWTSK.Topology.GeneralTopology.DesignatedCantor.Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db76e875edbb15d76590db6ff2a08ed47cc14282",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db76e875edbb15d76590db6ff2a08ed47cc14282`.

Source path: `GRWTSK/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.CantorSet` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [designatedTernaryExpansion](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/designatedternaryexpansion--90533a31b97fe89a6c00f0bb.md) | 18 | `declaration-track:90533a31b97fe89a6c00f0bbb546fe22e4b06f6cc1e4e42e3bef3e00f2ff4aa4` |
| 2 | `theorem` | [designatedTernaryExpansion_ne_one](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/designatedternaryexpansion-ne-one--8c3c80bca0d15f8d16805692.md) | 22 | `result-track:8c3c80bca0d15f8d1680569231e4bf7dde7ab6fb4a5026c40853d42856fe07d7` |
| 3 | `theorem` | [designatedTernaryExpansion_value](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/designatedternaryexpansion-value--0683dccaa03c2e3195f88050.md) | 28 | `result-track:0683dccaa03c2e3195f880501ba5d671be177725efabc4f03bac0a424b8fc560` |
| 4 | `def` | [designatedCantorScalar](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/designatedcantorscalar--40e6c46d589a6e1dadec4937.md) | 36 | `declaration-track:40e6c46d589a6e1dadec49371b915ce62ef294308acbd1c2d78258aba5115b01` |
| 5 | `theorem` | [designatedCantorScalar_series](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/designatedcantorscalar-series--0bb9b1bac4abdbb2454be24f.md) | 40 | `result-track:0bb9b1bac4abdbb2454be24f033b3346de6872c75e92a3622165735e630dbb1b` |
| 6 | `theorem` | [designatedCantorScalar_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/designatedcantorscalar-mem-cantorset--8f9d44556fefdb533ed50395.md) | 51 | `result-track:8f9d44556fefdb533ed50395ec59a6b8fc390a150c268f477fb0b3ead81ccd0d` |
| 7 | `theorem` | [designatedCantorScalar_injective](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/designatedcantorscalar-injective--cd7512fde2fd674462cc2955.md) | 57 | `result-track:cd7512fde2fd674462cc29551202383e87982b8efc4c8e3549f4abb85359240a` |
| 8 | `abbrev` | [ExactCantorScalar](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/exactcantorscalar--093ede47191606cce85c093b.md) | 70 | `declaration-track:093ede47191606cce85c093bf9fa890bdd757ece1a3c9569e80a1423df86322b` |
| 9 | `def` | [analyticCantorRepresentation](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/analyticcantorrepresentation--6f167599da8fa4b745e2a8a9.md) | 73 | `declaration-track:6f167599da8fa4b745e2a8a9edc0ac26e2e8e1a7431264917b7f016fa57dbe94` |
| 10 | `theorem` | [analyticCantorRepresentation_theta_val](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/analyticcantorrepresentation-theta-val--b4e0fd5eec5f5758760f6b0e.md) | 79 | `result-track:b4e0fd5eec5f5758760f6b0ed2a66699efadb0ae0aa8e59b747558d37e868978` |
| 11 | `theorem` | [analyticCantorRepresentation_digits_theta](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/analyticcantorrepresentation-digits-theta--b19290398562d8b37677d69b.md) | 92 | `result-track:b19290398562d8b37677d69b63dba400e714958a349c5413d00ece6e9100fd98` |
| 12 | `theorem` | [analyticCantorRepresentation_theta_digits](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/analyticcantorrepresentation-theta-digits--8089b36b865ab5693f82cb6d.md) | 99 | `result-track:8089b36b865ab5693f82cb6d4f732e200e3ea871cc7870c2264549102c102889` |
| 13 | `theorem` | [analyticCantorRepresentation_unique](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/analyticcantorrepresentation-unique--54bfba145bcbc24de46d6c97.md) | 105 | `result-track:54bfba145bcbc24de46d6c97479dace9aa8d4dbe4d0907a6fcd17aca52cc665b` |
| 14 | `def` | [analyticCantorHomeomorphism](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/analyticcantorhomeomorphism--e9de1d1d52b6a6a41462dca1.md) | 116 | `declaration-track:e9de1d1d52b6a6a41462dca176f3370aa4cb2ba036361da0d0454d7124e1babc` |
| 15 | `theorem` | [analyticCantorHomeomorphism_toEquiv](../../../../../mathematics/Topology/GeneralTopology/DesignatedCantor/Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc.lean/declarations/analyticcantorhomeomorphism-toequiv--c352488d7e80f6e87b327918.md) | 120 | `result-track:c352488d7e80f6e87b327918ca72856d150bf76e8e3753aa3c1ab6f96948f5df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
