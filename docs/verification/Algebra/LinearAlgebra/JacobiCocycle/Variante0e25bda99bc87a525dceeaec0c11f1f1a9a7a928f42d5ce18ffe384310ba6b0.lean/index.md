# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobiCocycle.Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "590a501ee2b0e31bbcab69b9738eeb19ce98486f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `590a501ee2b0e31bbcab69b9738eeb19ce98486f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Spectral.JacobiTransfer` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/orderedproduct--36482d4c93f86a98d3cf89d9.md) | 30 | `declaration-track:36482d4c93f86a98d3cf89d99543316637bdec2198a35cee6d66f12013a6404d` |
| 2 | `theorem` | [orderedProduct_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/orderedproduct-zero--b1c2adea65a8d6cdda20cef1.md) | 35 | `result-track:b1c2adea65a8d6cdda20cef15abe95ed55f53b5203adaec8c84a34d5a4a6ec58` |
| 3 | `theorem` | [orderedProduct_succ](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/orderedproduct-succ--3658dc727da757917b94c8c8.md) | 39 | `result-track:3658dc727da757917b94c8c84b4c014031e924bd3e0c4e8c431d9e1c79d976e9` |
| 4 | `theorem` | [orderedProduct_add](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/orderedproduct-add--b5531652b5dcf450d71a5043.md) | 43 | `result-track:b5531652b5dcf450d71a50431a971647214d26d27b2537fcc183d294c33603a5` |
| 5 | `def` | [orderedTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/orderedtransfer--b632d9a07c102aceac14b2e1.md) | 53 | `declaration-track:b632d9a07c102aceac14b2e1989d35acf041a0243f96f9c2c1481022e1c42f98` |
| 6 | `theorem` | [state_eq_orderedProduct_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/state-eq-orderedproduct-mulvec--7f4ef7703acd90f45ce3bc74.md) | 57 | `result-track:7f4ef7703acd90f45ce3bc748bf8f3a05f4e591470446b1df6e8285095be9b46` |
| 7 | `theorem` | [state_eq_orderedTransfer_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/state-eq-orderedtransfer-mulvec--b44a89550eec3010d5147b80.md) | 68 | `result-track:b44a89550eec3010d5147b80608fb873f53c70fed87c9c2053917708874da0a3` |
| 8 | `theorem` | [det_orderedProduct_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/det-orderedproduct-eq-one--bcca8b8d45edcf4bd0a35bc7.md) | 76 | `result-track:bcca8b8d45edcf4bd0a35bc7b0095e1a8febd55d9d8120593961eae5c5ced2e5` |
| 9 | `theorem` | [det_weightedJacobi_orderedProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/det-weightedjacobi-orderedproduct--ae5461ba61a673630fe56245.md) | 84 | `result-track:ae5461ba61a673630fe56245539b56fec0c2c08c0a5cf360b32d2262a7355c8f` |
| 10 | `def` | [cocycleProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/cocycleproduct--1a4d515a2842d867bd94c202.md) | 90 | `declaration-track:1a4d515a2842d867bd94c20298f84ec8912249dcd7eef922033bb0b4d18947ac` |
| 11 | `theorem` | [cocycleProduct_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/cocycleproduct-zero--8756bf19a86468c95d52e542.md) | 96 | `result-track:8756bf19a86468c95d52e5425449a7d295c3dde8a4b97fdba63bca702f554e1d` |
| 12 | `theorem` | [cocycleProduct_succ](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/cocycleproduct-succ--bb34bdba545325b3e475392f.md) | 100 | `result-track:bb34bdba545325b3e475392f735bdf391d3658885d5e1cf09086953b421f39cf` |
| 13 | `theorem` | [cocycleProduct_eq_orderedProduct](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/cocycleproduct-eq-orderedproduct--74ef91bda0cba17e80c860d6.md) | 105 | `result-track:74ef91bda0cba17e80c860d67746d889fc4e7d5587a08db1d03e1746ee74ebc1` |
| 14 | `theorem` | [cocycleProduct_add](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/cocycleproduct-add--735be5c75521eb2b2172c8d8.md) | 113 | `result-track:735be5c75521eb2b2172c8d8b6c4a3d9f769de95094535a8235f5cf3eee2f810` |
| 15 | `def` | [cocycleGaugeTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/cocyclegaugetransfer--5134e84e199dd85f221511bd.md) | 124 | `declaration-track:5134e84e199dd85f221511bddbfc0c25eeea10f303466ef370e9a838526ee3af` |
| 16 | `theorem` | [cocycleProduct_gauge](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/cocycleproduct-gauge--987e8fa83421d64575875a4f.md) | 128 | `result-track:987e8fa83421d64575875a4f7daa55a46090bb09ce863311a0fa8185a843f188` |
| 17 | `def` | [gaugeTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/gaugetransfer--5cd21f3d13c4d0f17c2ac8e5.md) | 139 | `declaration-track:5cd21f3d13c4d0f17c2ac8e5de267e1ec53c438c01978a70a971aa9a202722b1` |
| 18 | `def` | [gaugeState](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/gaugestate--0aaac265a1fcb0794143d8d2.md) | 143 | `declaration-track:0aaac265a1fcb0794143d8d2297defff215b9a64f64014e6722ebe5237ddc367` |
| 19 | `theorem` | [gaugeState_step_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/gaugestate-step-iff--e302d9c204cbf5560109771e.md) | 148 | `result-track:e302d9c204cbf5560109771eeeca122b3e03c91b08c0107518e4b3f3a66ee5f8` |
| 20 | `theorem` | [orderedProduct_gaugeTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/orderedproduct-gaugetransfer--d8d64bbe748e2e758a4f5ce5.md) | 164 | `result-track:d8d64bbe748e2e758a4f5ce525d14a75cd6fc876b2a16815d9a4660583398dbe` |
| 21 | `theorem` | [orderedProduct_eq_of_gaugeTransfer_eq](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/orderedproduct-eq-of-gaugetransfer-eq--2e67f0f6072041a5989c8085.md) | 175 | `result-track:2e67f0f6072041a5989c8085a1c55735f58cf7d98b2065c9164c0254583312d2` |
| 22 | `def` | [recursiveGauge](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/recursivegauge--7a46dcc398e3ff38279684d6.md) | 185 | `declaration-track:7a46dcc398e3ff38279684d6c6c690c97f3dab800badcdc0ef4eb70de93913f6` |
| 23 | `theorem` | [recursiveGauge_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/recursivegauge-zero--fe497cad4ede5422022b546c.md) | 190 | `result-track:fe497cad4ede5422022b546c33ee59f9e755874ecae512f5b405ab0a13e2516c` |
| 24 | `theorem` | [recursiveGauge_succ](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/recursivegauge-succ--39972aa151cdbcbd9512af08.md) | 194 | `result-track:39972aa151cdbcbd9512af08b4c4ce1c45ff4f1abfd29f58564d1b6f6c7957b9` |
| 25 | `theorem` | [gaugeTransfer_recursiveGauge](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/gaugetransfer-recursivegauge--ea5a69b50e4867032016f318.md) | 199 | `result-track:ea5a69b50e4867032016f318d70cc0e75eb6cbc3ac88d177404427ef3edc4a50` |
| 26 | `theorem` | [unrestricted_oneSided_gauge_exists](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/unrestricted-onesided-gauge-exists--d8561c2dd4be88fb63291ee9.md) | 205 | `result-track:d8561c2dd4be88fb63291ee9eed1f4fde50104e5bdae5ba0080dce4bbe28a430` |
| 27 | `theorem` | [recursiveGauge_const_identity](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/recursivegauge-const-identity--d75184c8735a502d628070f5.md) | 210 | `result-track:d75184c8735a502d628070f570a5c3458732a5a755fa568b51175343bad7ce4d` |
| 28 | `def` | [expandingSL](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/expandingsl--2bf8304c8c1baf6a1fd2ba4b.md) | 217 | `declaration-track:2bf8304c8c1baf6a1fd2ba4b3e76893d316266f516957c2b303de23c13fede60` |
| 29 | `theorem` | [recursiveGauge_expanding_entry](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/recursivegauge-expanding-entry--a12bf90d6d50c2413fbb0423.md) | 221 | `result-track:a12bf90d6d50c2413fbb042316146dfb9520c600368da8a21dde0d1e0bda1116` |
| 30 | `theorem` | [recursiveGauge_expanding_entry_unbounded](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/recursivegauge-expanding-entry-unbounded--111827920d309cf45bebf9e1.md) | 231 | `result-track:111827920d309cf45bebf9e18acda81195b3f39874178d0cc67e91433e30cae6` |
| 31 | `theorem` | [schrodinger_transfer_order_matters](../../../../../mathematics/Algebra/LinearAlgebra/JacobiCocycle/Variante0e25bda99bc87a525dceeaec0c11f1f1a9a7a928f42d5ce18ffe384310ba6b0.lean/declarations/schrodinger-transfer-order-matters--3a2cd33164be6ad03ca85b5a.md) | 243 | `result-track:3a2cd33164be6ad03ca85b5aec0dbfddf9055eadcc8172ca29c21ebbe0d39f84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
