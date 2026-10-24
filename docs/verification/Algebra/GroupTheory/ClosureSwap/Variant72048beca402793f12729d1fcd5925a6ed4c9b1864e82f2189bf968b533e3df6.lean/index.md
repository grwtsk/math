# Verification target: GRWTSK.Algebra.GroupTheory.ClosureSwap.Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32b57f5199973f4b6823460da74539da2fd4910d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32b57f5199973f4b6823460da74539da2fd4910d`.

Source path: `GRWTSK/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.FixedPoints` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_compl_fixedBy_closure_iff](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/finite-compl-fixedby-closure-iff--706f8ee56afb6e5f1de685a6.md) | 41 | `result-track:706f8ee56afb6e5f1de685a6ab7b9ed8613de3371601443f6fe66a99eb2f7716` |
| 2 | `theorem` | [exists_smul_notMem_of_subset_orbit_closure](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/exists-smul-notmem-of-subset-orbit-closure--974398912e740febd7388c91.md) | 50 | `result-track:974398912e740febd7388c912bdc1ad4364e7773085bd6fd871513ebcc632179` |
| 3 | `theorem` | [finite_compl_fixedBy_swap](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/finite-compl-fixedby-swap--40632b11e40329b317e3a5b7.md) | 68 | `result-track:40632b11e40329b317e3a5b7c811016d23ec06a605d5104c798fec66b13a9b29` |
| 4 | `theorem` | [Equiv.Perm.IsSwap.finite_compl_fixedBy](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/equiv-perm-isswap-finite-compl-fixedby--95571ab9fdf4864f09d22292.md) | 72 | `result-track:95571ab9fdf4864f09d22292294cf275487551e5b8601533f00bcc5349a4b207` |
| 5 | `theorem` | [SubmonoidClass.swap_mem_trans](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/submonoidclass-swap-mem-trans--8a4cafc83b281300180d4801.md) | 78 | `result-track:8a4cafc83b281300180d4801d528d562e13d88e4f2c8aedbedc6eeeb2a3b4e55` |
| 6 | `theorem` | [swap_mem_closure_isSwap](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/swap-mem-closure-isswap--ea1dfbd08e73297ca3417156.md) | 90 | `result-track:ea1dfbd08e73297ca34171562eeced6a61b76afcb34f6a54d755ed4378accf67` |
| 7 | `theorem` | [mem_closure_isSwap](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/mem-closure-isswap--eab7ea4587295f711fbc95d5.md) | 108 | `result-track:eab7ea4587295f711fbc95d5bd9a6c7724c933ce2ed1400bfc504a65fd45a485` |
| 8 | `theorem` | [mem_closure_isSwap'](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/mem-closure-isswap--37a8c5fe49b7c7b17f3e42dd.md) | 133 | `result-track:37a8c5fe49b7c7b17f3e42dd06719554bfac592faf18a6cd94c69a47749da89d` |
| 9 | `theorem` | [closure_of_isSwap_of_isPretransitive](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/closure-of-isswap-of-ispretransitive--a63521fcd8951159cfac5ac2.md) | 143 | `result-track:a63521fcd8951159cfac5ac2bae66be4589b09857860360a7efa3d0658d193cd` |
| 10 | `theorem` | [surjective_of_isSwap_of_isPretransitive](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variant72048beca402793f12729d1fcd5925a6ed4c9b1864e82f2189bf968b533e3df6.lean/declarations/surjective-of-isswap-of-ispretransitive--15b2d578e07ebb1cc80836f6.md) | 148 | `result-track:15b2d578e07ebb1cc80836f609bcb535615e50db1d469e2666ff8f89c0ff5867` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
