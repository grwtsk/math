# Verification target: GRWTSK.Algebra.LinearAlgebra.Invariant.Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "627d1078dd86d3deea4c297f3a1af3fae37585d2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `627d1078dd86d3deea4c297f3a1af3fae37585d2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Map` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Sublattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/invtsubmodule--0e19d2f741b6728a3105e7b1.md) | 30 | `declaration-track:0e19d2f741b6728a3105e7b109b5e2f337bd55db9ef521c3b92e129dc1792529` |
| 2 | `lemma` | [mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/mem-invtsubmodule--5eb4bdffed0bd1e93f4c8a77.md) | 39 | `result-track:5eb4bdffed0bd1e93f4c8a775075dbf5ee81f4236e3b428d75de1e79c82d7878` |
| 3 | `lemma` | [inf_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/inf-mem--1b41e4187e15d252c86dfe0d.md) | 47 | `result-track:1b41e4187e15d252c86dfe0dd7a492520887f1ade92d51717440b90283e66211` |
| 4 | `lemma` | [sup_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/sup-mem--bc48103910f05a3e183f95c1.md) | 51 | `result-track:bc48103910f05a3e183f95c196c00fba9c01b94d6c13a8e079ce5689c4f6a9e6` |
| 5 | `lemma` | [top_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/top-mem--c860ccd66276099bc369ea1b.md) | 58 | `result-track:c860ccd66276099bc369ea1bddcf116adad9b02009e1a444cfd669f915f24721` |
| 6 | `lemma` | [bot_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/bot-mem--9eb3d2039700469eb921587e.md) | 61 | `result-track:9eb3d2039700469eb921587e001f15733b675e5b88507c99c6ad2a27a2e886fa` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/instance--e52ae0c17e42e54d0f1907ff.md) | 63 | `declaration-track:e52ae0c17e42e54d0f1907ff11e4c2dbab769372dc5b2d3a5004b5a6bdcfa819` |
| 8 | `lemma` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/zero--b572245e57bcc490ea178d88.md) | 70 | `result-track:b572245e57bcc490ea178d88bdb6a47abffeab4f2bce81b3a324915b5c860892` |
| 9 | `lemma` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/id--e8d20c519d23ac5fc5252161.md) | 75 | `result-track:e8d20c519d23ac5fc525216160c090f8553a9b08928efbbd9d34ae5ab04606d0` |
| 10 | `lemma` | [one](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/one--024a592b23d613b946086c97.md) | 80 | `result-track:024a592b23d613b946086c97d9aa7099474678eff79ed0064e784d44aa3c32fb` |
| 11 | `lemma` | [mk_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/mk-eq-bot-iff--84b4cb7a3158782c624928d2.md) | 84 | `result-track:84b4cb7a3158782c624928d260a71e01f827fff379a421b7d8eccd70bc5c5e75` |
| 12 | `lemma` | [mk_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/mk-eq-top-iff--a911042913ddbb613b8d1344.md) | 88 | `result-track:a911042913ddbb613b8d1344bc7bc830354d8c01aa8d2d306d400219874696f8` |
| 13 | `lemma` | [disjoint_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/disjoint-mk-iff--a59ec896d77d55dbc548c457.md) | 93 | `result-track:a59ec896d77d55dbc548c457391a1a38a29164ed439858f912b66746e82cfcf7` |
| 14 | `lemma` | [disjoint_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/disjoint-iff--d3350ef4e88f60b558d8ff90.md) | 99 | `result-track:d3350ef4e88f60b558d8ff90338848b19a66e3dcea66732ca1c83371c2ad0fbd` |
| 15 | `lemma` | [codisjoint_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/codisjoint-mk-iff--b81a24e66976c92d52a28f26.md) | 106 | `result-track:b81a24e66976c92d52a28f267aec0a04b7de8a64c6c4425524fd7f784eda8f8b` |
| 16 | `lemma` | [codisjoint_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/codisjoint-iff--7023631d8b2873b0fabf3d42.md) | 112 | `result-track:7023631d8b2873b0fabf3d427329b01ca928fc86c73d1b0ec94c43ca5060f44c` |
| 17 | `lemma` | [isCompl_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/iscompl-mk-iff--5efff3d2e0d1530faf403901.md) | 119 | `result-track:5efff3d2e0d1530faf403901b0acfde990e6eda0014802309edf35225c8c7829` |
| 18 | `lemma` | [isCompl_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/iscompl-iff--a97cd6136f5f085dc87ee940.md) | 124 | `result-track:a97cd6136f5f085dc87ee94066158b40def8a56aca82c12691e8503f5419af6d` |
| 19 | `lemma` | [map_subtype_mem_of_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/map-subtype-mem-of-mem-invtsubmodule--8a186f5aabcb0d7dbf74be00.md) | 130 | `result-track:8a186f5aabcb0d7dbf74be00286a4d7eacd575ca1185c5e6ee319bedfa9505e7` |
| 20 | `lemma` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/comp--33444b46a8a328a628eef44a.md) | 138 | `result-track:33444b46a8a328a628eef44a7dfae7757c8d5ce6602333b95b9a9b3767049365` |
| 21 | `lemma` | [_root_.LinearEquiv.map_mem_invtSubmodule_conj_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/root-linearequiv-map-mem-invtsubmodule-conj-iff--7ae5d6e923b0421dbea9e828.md) | 143 | `result-track:7ae5d6e923b0421dbea9e8281a9b31c65d2f77d7e9fe2ce45371390a6ea79710` |
| 22 | `lemma` | [_root_.LinearEquiv.map_mem_invtSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/root-linearequiv-map-mem-invtsubmodule-iff--cfcecc880b5c4b8d24605ba1.md) | 152 | `result-track:cfcecc880b5c4b8d24605ba1d726cbd4c067f02b79603e7091f06283ab2f5c07` |
| 23 | `lemma` | [span_orbit_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variantf7b64c2ebfb76a0633aab7c83ab2567fbe5a348e2937285698d5ffc183af5c63.lean/declarations/span-orbit-mem-invtsubmodule--e70108c787894e70dc7c4bfe.md) | 161 | `result-track:e70108c787894e70dc7c4bfe1d99975fb29fd2380239a0ccb9fa63aa7ff0ffae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
