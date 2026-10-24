# Verification target: GRWTSK.Algebra.LinearAlgebra.OrderedSMul.Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9ed9c6ae68c55f380b745c8d81ea32547cf5643",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9ed9c6ae68c55f380b745c8d81ea32547cf5643`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.CoreAttrs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/orderedsmul--20bc849e3f36369e5c4e4447.md) | 47 | `declaration-track:20bc849e3f36369e5c4e4447a99243b1ebc1db24b1b4d31ad0874c96e04cbe33` |
| 2 | `instance` | [OrderedSMul.toPosSMulStrictMono](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/orderedsmul-topossmulstrictmono--489df3373260904c56582929.md) | 61 | `declaration-track:489df3373260904c5658292964b9da881e2389579735b4dd8c9cef81e16ccb31` |
| 3 | `instance` | [OrderedSMul.toPosSMulReflectLT](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/orderedsmul-topossmulreflectlt--f2f156525daa77f16ba56b35.md) | 64 | `declaration-track:f2f156525daa77f16ba56b351d1fe1ab0addd215078f84f1f7444eb5e6a619ee` |
| 4 | `instance` | [OrderDual.instOrderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/orderdual-instorderedsmul--3be44605afdf86ebf571cdeb.md) | 67 | `declaration-track:3be44605afdf86ebf571cdeb43f81c86f8d35d9df3c96f18d075721db8c6858a` |
| 5 | `theorem` | [OrderedSMul.mk''](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/orderedsmul-mk--49cda2142e0fdf8521cb586b.md) | 75 | `result-track:49cda2142e0fdf8521cb586b3c6b8cb2a8c406be8ed50bac47cdb0b0c15511fa` |
| 6 | `instance` | [Nat.orderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/nat-orderedsmul--04ecaaf07fe8a87c3822041a.md) | 81 | `declaration-track:04ecaaf07fe8a87c3822041af6584d20780b40a31e7d6cc243515daf72f4d163` |
| 7 | `instance` | [Int.orderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/int-orderedsmul--9e8411ed17855f749d7c8fb9.md) | 91 | `declaration-track:9e8411ed17855f749d7c8fb9898dad47ec7357b8feb3a4df56424bb81d8cea1c` |
| 8 | `instance` | [LinearOrderedSemiring.toOrderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/linearorderedsemiring-toorderedsmul--9af492636fcd721fa0473636.md) | 103 | `declaration-track:9af492636fcd721fa047363601505b6195be8e1f07abefc4c7937e4528224148` |
| 9 | `theorem` | [OrderedSMul.mk'](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/orderedsmul-mk--fbad06268debb53ec96614e9.md) | 117 | `result-track:fbad06268debb53ec96614e9a8303e7d00cdca57384ff6f40bc4b041e3085419` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/instance--fdbe9ec1705c16105e5dd7ce.md) | 129 | `declaration-track:fdbe9ec1705c16105e5dd7ce40d12c45dfbf0b91862d53a0eb85e7a023756168` |
| 11 | `instance` | [Pi.orderedSMul](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/pi-orderedsmul--f360aa68c03457f95ab97400.md) | 133 | `declaration-track:f360aa68c03457f95ab974008314e2773c69c87d000a08736beb03361aabc2e8` |
| 12 | `lemma` | [inf_eq_half_smul_add_sub_abs_sub](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/inf-eq-half-smul-add-sub-abs-sub--735cd7ce61b63c750f79610a.md) | 144 | `result-track:735cd7ce61b63c750f79610a467ad647b16d4790874ba3c768faca121b452472` |
| 13 | `lemma` | [sup_eq_half_smul_add_add_abs_sub](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/sup-eq-half-smul-add-add-abs-sub--966514d85b85515639f9bcdc.md) | 148 | `result-track:966514d85b85515639f9bcdcd36c810afbd3adeb9af81fa200388d8f9e61c4aa` |
| 14 | `lemma` | [inf_eq_half_smul_add_sub_abs_sub'](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/inf-eq-half-smul-add-sub-abs-sub--8b3f7c0c0914199bffb833e7.md) | 159 | `result-track:8b3f7c0c0914199bffb833e73e8fcf6630a22e0a5f12421ebd6cda117011a281` |
| 15 | `lemma` | [sup_eq_half_smul_add_add_abs_sub'](../../../../../mathematics/Algebra/LinearAlgebra/OrderedSMul/Variant63dd79e9a2a878b834557dfd68f16598b0409ec2958f7a7d165b70124dafec3c.lean/declarations/sup-eq-half-smul-add-add-abs-sub--ac86ecd24e5d3715b63480dd.md) | 163 | `result-track:ac86ecd24e5d3715b63480dd6085d422295f123170f2fec062a1f9b098c712d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
