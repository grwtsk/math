# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Zorn.Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e91b70b99bd1b1d750f3dc010aaf04a6e6c6f5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Chain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximal_of_chains_bounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/exists-maximal-of-chains-bounded--0ea83306428a4f64e87e3188.md) | 76 | `result-track:0ea83306428a4f64e87e3188d81f188a1f8c472d6880235542ebdce78f34bbb1` |
| 2 | `theorem` | [exists_maximal_of_nonempty_chains_bounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/exists-maximal-of-nonempty-chains-bounded--40714809cb58d58dd4cfc70d.md) | 91 | `result-track:40714809cb58d58dd4cfc70db6d3fef361a122ab7312dda045fbdb17d35ddffd` |
| 3 | `theorem` | [zorn_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-preorder--1f4ae248c8ec88973c55493d.md) | 105 | `result-track:1f4ae248c8ec88973c55493d98e92c3f2bfbf05c2a87f2d34a2a602392260853` |
| 4 | `theorem` | [zorn_nonempty_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-nonempty-preorder--1acd206006a813a6127411f5.md) | 110 | `result-track:1acd206006a813a6127411f51a2dd34977c84ec184d8a0c8f57bf2adfbfa5301` |
| 5 | `theorem` | [zorn_preorder₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-preorder--748fa13136e423b8e40797d2.md) | 115 | `result-track:748fa13136e423b8e40797d23f83cc0367b852791a33c52f64c26d1b43ef2655` |
| 6 | `theorem` | [zorn_nonempty_preorder₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-nonempty-preorder--6885baf16184502a7c5dfad9.md) | 129 | `result-track:6885baf16184502a7c5dfad95c613b039c84832d7f8ff6b261ab5f55543b20ca` |
| 7 | `theorem` | [zorn_nonempty_Ici₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-nonempty-ici--6cd76c8a7717f37c357a81c3.md) | 145 | `result-track:6cd76c8a7717f37c357a81c3958956e41e821f7fd0cde5fa25eff0c992ab5de9` |
| 8 | `theorem` | [zorn_partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-partialorder--34c7eeb3c93536f57a5bd4b6.md) | 158 | `result-track:34c7eeb3c93536f57a5bd4b66823bc7f4276dbe3ae35e8d16a1d525669f0c410` |
| 9 | `theorem` | [zorn_nonempty_partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-nonempty-partialorder--1f92d0d4214a16cf17091d3a.md) | 164 | `result-track:1f92d0d4214a16cf17091d3a49791a187c24fa8b60ba9f491cae10704d4b0357` |
| 10 | `theorem` | [zorn_partialOrder₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-partialorder--b135e25b0fbafe493b7f6f5a.md) | 170 | `result-track:b135e25b0fbafe493b7f6f5a17e49cb4b259f5c01a69675e7212d907f5c2fba0` |
| 11 | `theorem` | [zorn_nonempty_partialOrder₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-nonempty-partialorder--5afb481adbf7cf1dc6b3edaf.md) | 177 | `result-track:5afb481adbf7cf1dc6b3edaf5b059e8c68ca2cb3ded3bcce0beb1782212e0a11` |
| 12 | `theorem` | [zorn_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-subset--ac3dbc594e71a3e6313a49e7.md) | 186 | `result-track:ac3dbc594e71a3e6313a49e7a2143b290b86f5b233bcc7d0eba797b6fa8aa8bc` |
| 13 | `theorem` | [zorn_subset_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-subset-nonempty--bc1cbc352ff99ec5e66088d8.md) | 192 | `result-track:bc1cbc352ff99ec5e66088d8d0a40b30d8d7c5c15b542e0b8ecbab1f84840e4b` |
| 14 | `theorem` | [zorn_superset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-superset--2f68274fb19e52469f342fbf.md) | 198 | `result-track:2f68274fb19e52469f342fbf151b915a0224ae521788a79661f7748516b25c86` |
| 15 | `theorem` | [zorn_superset_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/zorn-superset-nonempty--67588a69e3b7c0e17621d4d0.md) | 204 | `result-track:67588a69e3b7c0e17621d4d005ad5aea68c9df35d854f28ea4acfa59fbabc8b2` |
| 16 | `theorem` | [IsChain.exists_maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant004b6aa85b3f12888e9c9a8722a0288fab74b8b4a9df18e17d82b1dca529b1a3.lean/declarations/ischain-exists-maxchain--b7aeea11358dbb47d46a3180.md) | 212 | `result-track:b7aeea11358dbb47d46a3180ebe42a34cbc19f8ec80d8ab2102e78e5126e576f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
