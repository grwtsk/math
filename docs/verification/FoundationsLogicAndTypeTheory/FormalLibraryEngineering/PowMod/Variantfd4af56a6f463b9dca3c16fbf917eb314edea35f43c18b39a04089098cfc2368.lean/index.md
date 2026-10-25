# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PowMod.Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdb8ef3dd4cb4dcc2f4e51a0c211c9ea703ee680",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdb8ef3dd4cb4dcc2f4e51a0c211c9ea703ee680`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Pow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsNatPowModT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/isnatpowmodt--860132094dbd138c0dc392d7.md) | 36 | `declaration-track:860132094dbd138c0dc392d79228fd069be06937664a083d14830c0d18bae83b` |
| 2 | `theorem` | [IsNatPowModT.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/isnatpowmodt-run--fdd62b4c750ed1077c956f4f.md) | 39 | `result-track:fdd62b4c750ed1077c956f4f59ac95821711b1f8d9280e684d4c6d6b3c3d9acb` |
| 3 | `theorem` | [IsNatPowModT.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/isnatpowmodt-trans--edeb0eb5d32e41911551256b.md) | 43 | `result-track:edeb0eb5d32e41911551256b3011d8cd952044ecf6d2b897db4fef0d1cd8685b` |
| 4 | `theorem` | [IsNatPowModT.bit0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/isnatpowmodt-bit0--3949885f089550bd12a3bff3.md) | 47 | `result-track:3949885f089550bd12a3bff315f1afdc4b7ef363b5d86b3a1b3a6f49190055d2` |
| 5 | `theorem` | [natPow_zero_natMod_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/natpow-zero-natmod-zero--d52ed1ba0ec5ebba09ab13de.md) | 51 | `result-track:d52ed1ba0ec5ebba09ab13de1fb4751023d64fcfc1e06f9eb594a0a43ca38cb7` |
| 6 | `theorem` | [natPow_zero_natMod_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/natpow-zero-natmod-one--c0aa462df5cb64a3ae5c51e9.md) | 54 | `result-track:c0aa462df5cb64a3ae5c51e982436adb9b79b3aefcd5d2486c2de6f285c33ef5` |
| 7 | `theorem` | [natPow_zero_natMod_succ_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/natpow-zero-natmod-succ-succ--33e01d7e7076a70c7b411644.md) | 57 | `result-track:33e01d7e7076a70c7b411644951c64d54b6570eb4c8e114d9a4d5d81c8526341` |
| 8 | `theorem` | [natPow_one_natMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/natpow-one-natmod--8aa6b5630ed871704d92eed1.md) | 62 | `result-track:8aa6b5630ed871704d92eed10d9a2d4c77e1220faed08b68205720919b8ffaf4` |
| 9 | `theorem` | [IsNatPowModT.bit1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/isnatpowmodt-bit1--f3a2baf0745f2bff3042c015.md) | 64 | `result-track:f3a2baf0745f2bff3042c015d6131759410be82b4e7d203fb339359825af41d3` |
| 10 | `def` | [evalNatPowMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantfd4af56a6f463b9dca3c16fbf917eb314edea35f43c18b39a04089098cfc2368.lean/declarations/evalnatpowmod--3f47866f110e9d3d88c0e6bd.md) | 74 | `declaration-track:3f47866f110e9d3d88c0e6bddd346d9f7752e9dde9d9b38f258d9aa7542a8c67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
