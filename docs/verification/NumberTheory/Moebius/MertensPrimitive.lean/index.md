# Verification target: GRWTSK.NumberTheory.Moebius.MertensPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45e06c371d67bcf8c939d20a95fcbc63570546fa",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45e06c371d67bcf8c939d20a95fcbc63570546fa`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moebiusReal](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/moebiusreal--e77d31199341e137447b2a2c.md) | 31 | `declaration-track:e77d31199341e137447b2a2c52b63a1ace6f8f0ce0353bc9120e7c9ad2005b87` |
| 2 | `def` | [mertensPrefix](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/mertensprefix--f6c8d43e726587d40fb15a01.md) | 33 | `declaration-track:f6c8d43e726587d40fb15a012294f9235fb6732a088a77e63955e5cfe4e30f7b` |
| 3 | `def` | [pickupVelocity](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupvelocity--f8f940115d6be0e1c92fa02d.md) | 36 | `declaration-track:f8f940115d6be0e1c92fa02d296d2fca2e934f8bcd207df564f708358c6c4f25` |
| 4 | `def` | [wholePickup](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/wholepickup--4dcf4b744f62c9e2617a1b79.md) | 38 | `declaration-track:4dcf4b744f62c9e2617a1b79258e6f8f0aa23b39f257080699ce97c537b8d479` |
| 5 | `def` | [pickupResponse](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupresponse--f1f1ef7d25689d80c476c699.md) | 40 | `declaration-track:f1f1ef7d25689d80c476c6991460011250a20451f1042217202294467ed6df03` |
| 6 | `def` | [pickupResponseGram](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupresponsegram--bc545e094e4b9c47023c787e.md) | 43 | `declaration-track:bc545e094e4b9c47023c787e6c353baed436a00fbe3fe91b711020b4ccbc3758` |
| 7 | `def` | [pickupEnergy](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupenergy--71ecce6fe8a4afb61593f9b9.md) | 46 | `declaration-track:71ecce6fe8a4afb61593f9b937c9e085055adfd2813c29777e267b5d12b5cf5e` |
| 8 | `def` | [pickupLocalEnergy](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickuplocalenergy--4b2ad9c8b11ea8dda7cc5e02.md) | 48 | `declaration-track:4b2ad9c8b11ea8dda7cc5e025b8f4f6b6c52c671098a2079e5bef0db94a29cf9` |
| 9 | `def` | [pickupDiagonal](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupdiagonal--318e0db16b35893d39becbfb.md) | 51 | `declaration-track:318e0db16b35893d39becbfb3f02bc91f2cb44d131ba07a7a20a72098d64d7f7` |
| 10 | `def` | [pickupCross](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupcross--ffe3d90784d296e677f82070.md) | 55 | `declaration-track:ffe3d90784d296e677f8207063f0fa3c6ce4d5d50ed24f50dde8b2d45390f2b4` |
| 11 | `def` | [pickupFullGram](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupfullgram--51655a2928450801eefe25bb.md) | 60 | `declaration-track:51655a2928450801eefe25bbb8ed1c23ac78c51fecd251b432b60b7fc2b74779` |
| 12 | `def` | [PickupCrossPoly](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupcrosspoly--536c83d2b1b52d23ec7c8985.md) | 65 | `declaration-track:536c83d2b1b52d23ec7c8985883f3e8016efe6f3d9f43546b2ab65bc44648834` |
| 13 | `def` | [PickupEnergyPoly](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupenergypoly--783ade71031cf292bd10f727.md) | 69 | `declaration-track:783ade71031cf292bd10f7279cbda469d89ace5a73b893341fbdc3a9aa396097` |
| 14 | `def` | [PickupReturnPoly](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickupreturnpoly--7acf61b131962ec672c3fbd6.md) | 73 | `declaration-track:7acf61b131962ec672c3fbd6407250464ac4f597fb5f0bf780b4fb6219ef9094` |
| 15 | `def` | [WholePickupPoly](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/wholepickuppoly--852ba3f87b5ca1cce1fc79c6.md) | 77 | `declaration-track:852ba3f87b5ca1cce1fc79c697e76bf2b967e89cbe61ccbfd571a6f64e145baa` |
| 16 | `theorem` | [complete_gram_split](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/complete-gram-split--f791427a8e67859fb0f14db1.md) | 82 | `result-track:f791427a8e67859fb0f14db15933f134ae6579cb9c9ab6cefee198ca7a9c830e` |
| 17 | `theorem` | [pickup_full_gram_split](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/pickup-full-gram-split--1b51b9f7d227fec872e8932f.md) | 99 | `result-track:1b51b9f7d227fec872e8932f94ee6fdc89758d0e00649bb4bcc66aee5393d928` |
| 18 | `theorem` | [cross_poly_iff_energy_poly](../../../../mathematics/NumberTheory/Moebius/MertensPrimitive.lean/declarations/cross-poly-iff-energy-poly--22aeb6b46c25ecc309623428.md) | 104 | `result-track:22aeb6b46c25ecc309623428d077baf3597cbb6760d748ca38c9ae719aec06f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
