# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15c736288bf04651ee2fbc3521b33bf5f590240e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15c736288bf04651ee2fbc3521b33bf5f590240e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OrderIso.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/declarations/orderiso-inv--75d88e14fa53e35bb4d23641.md) | 43 | `declaration-track:75d88e14fa53e35bb4d236413155278bf71a8cb11e7b7f9d98a481f1e911fc67` |
| 2 | `theorem` | [inv_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/declarations/inv-le--74abb0b95d1553773e6b0a43.md) | 50 | `result-track:74abb0b95d1553773e6b0a43e269301263f1cff19297bbc3b5f42a230a1a9998` |
| 3 | `theorem` | [le_inv'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/declarations/le-inv--5cab13c7214f7cbf55ec6f9a.md) | 58 | `result-track:5cab13c7214f7cbf55ec6f9a823e83beaff232416d27f6470372bd12258a8a6c` |
| 4 | `def` | [OrderIso.divLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/declarations/orderiso-divleft--ed9fe38681168cde04d2fb02.md) | 63 | `declaration-track:ed9fe38681168cde04d2fb02e671a03b72b6e84c428610cda666241c1362c088` |
| 5 | `def` | [OrderIso.mulRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/declarations/orderiso-mulright--4df97fb26d58b08874bc470f.md) | 86 | `declaration-track:4df97fb26d58b08874bc470fd2869c103bbce48b259cb044e7a7b0a09b7f7802` |
| 6 | `theorem` | [OrderIso.mulRight_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/declarations/orderiso-mulright-symm--5adbbf4d45dcff884bee389c.md) | 91 | `result-track:5adbbf4d45dcff884bee389c4a9f6d6f29e39085141a15fb468f1eee24dd13f2` |
| 7 | `def` | [OrderIso.divRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/declarations/orderiso-divright--1405c12c2410455184852265.md) | 97 | `declaration-track:1405c12c24104551848522658810d3d974b48f2a5dcc04414260e8b71bec3430` |
| 8 | `def` | [OrderIso.mulLeft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/declarations/orderiso-mulleft--7d4bafd532101d8e246fe22a.md) | 110 | `declaration-track:7d4bafd532101d8e246fe22a25a945462997d9a5918a9be18e8915ac7ed91f50` |
| 9 | `theorem` | [OrderIso.mulLeft_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIso/Variant0ce87682609a837cfb3ad62de84f064eebf7128439b4150c2f3c6e7bf189e1b4.lean/declarations/orderiso-mulleft-symm--e03b9ff5e2a1727f38be6d1e.md) | 115 | `result-track:e03b9ff5e2a1727f38be6d1edf31b819f64f549e8ec3cf77030425c2dbae5142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
