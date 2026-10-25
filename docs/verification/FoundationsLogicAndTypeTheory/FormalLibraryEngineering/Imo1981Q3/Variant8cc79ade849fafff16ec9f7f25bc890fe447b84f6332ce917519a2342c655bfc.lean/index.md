# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo1981Q3.Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4806f854df0df836c861cf6308086a5f7f2af93",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4806f854df0df836c861cf6308086a5f7f2af93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProblemPredicate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/problempredicate--e25ff1d683b19b13a403062e.md) | 43 | `declaration-track:e25ff1d683b19b13a403062e8f7634a1f335f6be2d10c2849ddb2f44e7a918f2` |
| 2 | `def` | [specifiedSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/specifiedset--25c7943ad1ba85d737aed1ab.md) | 48 | `declaration-track:25c7943ad1ba85d737aed1ab850228f3afd055100e39e4cbede0f1ea4526c187` |
| 3 | `theorem` | [m_le_n](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/m-le-n--5aa23024ec2d790c27ff8c7e.md) | 60 | `result-track:5aa23024ec2d790c27ff8c7e7cc95c2ff1d766c8d70dd2a752966fdf44501213` |
| 4 | `theorem` | [eq_imp_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/eq-imp-1--462e4388d8ec56b00b4b4ac9.md) | 67 | `result-track:462e4388d8ec56b00b4b4ac961e78172fe3fca1f2c63951264cc644ef77d4bed` |
| 5 | `theorem` | [reduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/reduction--9d3aef416002b341d3279007.md) | 71 | `result-track:9d3aef416002b341d3279007a59742294f5af8a38cc491643483798a6b0e1670` |
| 6 | `def` | [NatPredicate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/natpredicate--023a8b4c589e14592a97e3e6.md) | 93 | `declaration-track:023a8b4c589e14592a97e3e6a11d4863997d05ddb00dd2aa6cd6aaddb1db5c9d` |
| 7 | `theorem` | [m_le_n](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/m-le-n--2163a5aaa40f2f7056120b01.md) | 100 | `result-track:2163a5aaa40f2f7056120b0181fe01c0846cec7455d4d2dab62c7d29ca0d6be6` |
| 8 | `theorem` | [eq_imp_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/eq-imp-1--4ac6b85953df56e034982895.md) | 102 | `result-track:4ac6b85953df56e0349828954d04046efda298824f452c32c73bce3d5b493048` |
| 9 | `theorem` | [reduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/reduction--1942c90a39ce080088bd3803.md) | 104 | `result-track:1942c90a39ce080088bd380303e11ad299cada85ca8434c3c8e626db3f691df8` |
| 10 | `theorem` | [n_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/n-pos--aa2aa306fe037214ead160b4.md) | 109 | `result-track:aa2aa306fe037214ead160b414f4ce2e6074f48d442ac5738bea3d5f472a2151` |
| 11 | `theorem` | [m_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/m-pos--4805f5e4bb7263a362ad6d70.md) | 111 | `result-track:4805f5e4bb7263a362ad6d70cf29d43cad6e983d5e01c8305f524fdc1cc07957` |
| 12 | `theorem` | [n_le_N](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/n-le-n--af0a1d5e58ec1bc5f805cd1d.md) | 113 | `result-track:af0a1d5e58ec1bc5f805cd1d039fa91b90f667c414ea11ad5363b5e163fc3882` |
| 13 | `theorem` | [imp_fib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/imp-fib--7eafa87336a40f01bc97d265.md) | 118 | `result-track:7eafa87336a40f01bc97d26527d7bed48bf62d302d23a48b03f85572fa3422ce` |
| 14 | `theorem` | [m_n_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/m-n-bounds--2e0c405b30bea5968ebe6fd9.md) | 142 | `result-track:2e0c405b30bea5968ebe6fd95e6d8ee86b7b065560f5be615883a42130fbadc1` |
| 15 | `theorem` | [k_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/k-bound--15860e6734ec50a7b1c936eb.md) | 170 | `result-track:15860e6734ec50a7b1c936eb2802785dbf54e8528a4c9ba406fc6808db11841e` |
| 16 | `theorem` | [solution_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/solution-bound--0a4d64a6ca8e4837ab47737d.md) | 179 | `result-track:0a4d64a6ca8e4837ab47737d47cee25d652f3e2edd2adf6d718ac91d6afd5dc6` |
| 17 | `theorem` | [solution_greatest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/solution-greatest--35150f538ba33bdc2db24bc7.md) | 182 | `result-track:35150f538ba33bdc2db24bc7c821e513d8a9c784a1c3eba5a427ba3cb4c0f484` |
| 18 | `theorem` | [imo1981_q3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Imo1981Q3/Variant8cc79ade849fafff16ec9f7f25bc890fe447b84f6332ce917519a2342c655bfc.lean/declarations/imo1981-q3--f250d2922850e68e7e9c2fba.md) | 194 | `result-track:f250d2922850e68e7e9c2fba8bec3e706a698a1e347d6123dfc16ef318c65b8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
