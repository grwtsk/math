# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Catalan.Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7180a338c2149b9b98ec92fd61f58c375d7a79f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7180a338c2149b9b98ec92fd61f58c375d7a79f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Central` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/catalan--30b3918e75df7e5ff8d0cc1b.md) | 60 | `declaration-track:30b3918e75df7e5ff8d0cc1b8b8787c8fc684dfbfb7c91a7d316a2af636c6b9c` |
| 2 | `theorem` | [catalan_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/catalan-zero--9b73453034c5b7fb0806fac8.md) | 67 | `result-track:9b73453034c5b7fb0806fac8692b8d9543a8d4742ff9cec4a7aa8adffcaabac5` |
| 3 | `theorem` | [catalan_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/catalan-succ--58b84427d286aa260289eda1.md) | 69 | `result-track:58b84427d286aa260289eda17a1e0f740d18905918797c60d97c65e17f1c79c3` |
| 4 | `theorem` | [catalan_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/catalan-succ--6a2b370724c5459c8c9712f7.md) | 72 | `result-track:6a2b370724c5459c8c9712f7dfb382880ef1415f9660a62eb3e2b0eb354380a7` |
| 5 | `theorem` | [catalan_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/catalan-one--284969ae2247fbdb76c73670.md) | 78 | `result-track:284969ae2247fbdb76c7367092c2c3b1c3a627671d76a0e18776931618c67432` |
| 6 | `def` | [gosperCatalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/gospercatalan--0d56bb6b7eff295c60521172.md) | 82 | `declaration-track:0d56bb6b7eff295c60521172011600a1965475c23a57f29fa840c4fd955f0277` |
| 7 | `theorem` | [gosper_trick](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/gosper-trick--e890bb1c758b1d61a45bc515.md) | 85 | `result-track:e890bb1c758b1d61a45bc515b658e667f4fe454c0685cd78f7b7c1d6ef542d61` |
| 8 | `theorem` | [gosper_catalan_sub_eq_central_binom_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/gosper-catalan-sub-eq-central-binom-div--1d7d9327fd1e0b42cd90d339.md) | 105 | `result-track:1d7d9327fd1e0b42cd90d339b45781c7157995d12d21f11a3e19c7eaf9c9989e` |
| 9 | `theorem` | [catalan_eq_centralBinom_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/catalan-eq-centralbinom-div--25b414434cc47544291516a6.md) | 114 | `result-track:25b414434cc47544291516a6e50418a0d3d80453abfaedacb7cac94ae9654eef` |
| 10 | `theorem` | [succ_mul_catalan_eq_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/succ-mul-catalan-eq-centralbinom--1c11ee62b43126b2ef272ab3.md) | 138 | `result-track:1c11ee62b43126b2ef272ab3f855e2a4ef132182799c1e02c915d5e20f17da82` |
| 11 | `theorem` | [catalan_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/catalan-two--41a1111b4346df6a137a83a2.md) | 141 | `result-track:41a1111b4346df6a137a83a2012f3c91a5c64fb58568384e314f676ac0e6ec55` |
| 12 | `theorem` | [catalan_three](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/catalan-three--b7f14dd6e706d4d8f647ded9.md) | 144 | `result-track:b7f14dd6e706d4d8f647ded95ce0e3f2e927ee5aaa8d04f02f57adfd81a09954` |
| 13 | `abbrev` | [pairwiseNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/pairwisenode--c57b745a8eff67e7ece9ffc7.md) | 151 | `declaration-track:c57b745a8eff67e7ece9ffc72d133358719bf6d75b9dadaa2480ff97bff68f6f` |
| 14 | `def` | [treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/treesofnumnodeseq--54a9615e8dff267933ce1395.md) | 155 | `declaration-track:54a9615e8dff267933ce1395acaceaf27d3148db9dd6b72588d840cf9e043e17` |
| 15 | `theorem` | [treesOfNumNodesEq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/treesofnumnodeseq-zero--86be027ae6617797e98637a5.md) | 165 | `result-track:86be027ae6617797e98637a5b1bfce5c750fe2512a016adfaadb9a7ca1741239` |
| 16 | `theorem` | [treesOfNumNodesEq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/treesofnumnodeseq-succ--881bc9d785889e3660da021e.md) | 167 | `result-track:881bc9d785889e3660da021e2fb1a14bb5fd8e2a5ed4a0ef154f6da834dccc1b` |
| 17 | `theorem` | [mem_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/mem-treesofnumnodeseq--189176bc9e375a722f667f9c.md) | 176 | `result-track:189176bc9e375a722f667f9c69669f4083fd57fad237e74a34a204c38a34ec51` |
| 18 | `theorem` | [mem_treesOfNumNodesEq_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/mem-treesofnumnodeseq-numnodes--ca0835a4075a5ed1c5671fa8.md) | 181 | `result-track:ca0835a4075a5ed1c5671fa811fa053365e765055b16e2863949ed034c7fb5ae` |
| 19 | `theorem` | [coe_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/coe-treesofnumnodeseq--a1d978480f9ed2c397b99bc4.md) | 185 | `result-track:a1d978480f9ed2c397b99bc4c61888495c923a13d736d5a7487d1140e26db92e` |
| 20 | `theorem` | [treesOfNumNodesEq_card_eq_catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variantdb1394a05f8858643e09b269b4cc6cab3f4ac1ed89a36b2e1ee3557a67dc5e38.lean/declarations/treesofnumnodeseq-card-eq-catalan--1d80c563fecdd57ea71bed55.md) | 189 | `result-track:1d80c563fecdd57ea71bed55554bf20e749d9fb41545c3ce6b1701b86792d97e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
