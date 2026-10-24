# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bdfb2d15fa560c2802ace236e5fb7135585f651",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bdfb2d15fa560c2802ace236e5fb7135585f651`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Operations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/center--3cef2cbfbb6a38dc76b460e8.md) | 42 | `declaration-track:3cef2cbfbb6a38dc76b460e87b8773b71d6e25c3fa431b5bc022956bcc96efc0` |
| 2 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/mem-center-iff--d449b2fd092c6b000fa358e2.md) | 49 | `result-track:d449b2fd092c6b000fa358e261f525f8275d937c2029207804ad9d913141e997` |
| 3 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/decidablememcenter--2d65d0f1a18d1f4769ec7241.md) | 54 | `declaration-track:2d65d0f1a18d1f4769ec7241e5394e0e867ab4fa8ee8c3599d2bcda51ccbf10a` |
| 4 | `theorem` | [one_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/one-mem-center--43af1b19cde1aed612757fda.md) | 59 | `result-track:43af1b19cde1aed612757fdac40473cb5fce0a3e0404eb908cef85209d140430` |
| 5 | `theorem` | [zero_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/zero-mem-center--00ec10b289c56617423de903.md) | 64 | `result-track:00ec10b289c56617423de903b6a0f35455208cc7389ffeab98374053b6d4d774` |
| 6 | `theorem` | [mul_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/mul-mem-center--a67c87442359710ac12765f3.md) | 70 | `result-track:a67c87442359710ac12765f383d25ad966a809d13085b35cadc4ad0159e73e5a` |
| 7 | `theorem` | [inv_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/inv-mem-center--82aa18cef81a13d94c41ec90.md) | 76 | `result-track:82aa18cef81a13d94c41ec90cff6a50057e3068169760efae393092e7453ec8a` |
| 8 | `theorem` | [add_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/add-mem-center--49754a8b31b32e9e02fbe706.md) | 83 | `result-track:49754a8b31b32e9e02fbe706fbc31f3648d210ea95c448978eae89bd6b5a187c` |
| 9 | `theorem` | [neg_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/neg-mem-center--3723e587c6656d6099510d5b.md) | 88 | `result-track:3723e587c6656d6099510d5b7f60cf1ca95518fa26b44ddb4c934d9059be161e` |
| 10 | `theorem` | [subset_center_units](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/subset-center-units--914cd7757817043003d58007.md) | 94 | `result-track:914cd7757817043003d5800714daa4788e46fb58d1d7e9a80bca470258d206e9` |
| 11 | `theorem` | [center_units_subset](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/center-units-subset--3e3df734cc921a95332bbb5e.md) | 99 | `result-track:3e3df734cc921a95332bbb5eadcdce97743f18593a88a54ddeb6162a5159c0b4` |
| 12 | `theorem` | [center_units_eq](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/center-units-eq--fac954da419c21513f676d2b.md) | 107 | `result-track:fac954da419c21513f676d2bd37a325a65ad39ad19283aed39ab617449244a12` |
| 13 | `theorem` | [inv_mem_center₀](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/inv-mem-center--a31474dfd2a678b930f3e42f.md) | 112 | `result-track:a31474dfd2a678b930f3e42f2d2881f34e2b8ca5389f4d639a9cfdda84fab0f3` |
| 14 | `theorem` | [div_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/div-mem-center--b1a2c62a1d803adca06bbc4f.md) | 122 | `result-track:b1a2c62a1d803adca06bbc4f3ef765386f6c5f4610c01af8cedc385eeba3b5de` |
| 15 | `theorem` | [div_mem_center₀](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/div-mem-center--d2493f9e440b45375d799c46.md) | 130 | `result-track:d2493f9e440b45375d799c4639b9664222be436a6ee3e8b234d87ee34a7e171e` |
| 16 | `theorem` | [center_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/center-eq-univ--f1e03f97efe0f2712817e6ce.md) | 139 | `result-track:f1e03f97efe0f2712817e6cec5973b676865d077a8002a1a5fc9902338174abd` |
| 17 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/center--0c7bcd4ec2daed19d16a2ce4.md) | 155 | `declaration-track:0c7bcd4ec2daed19d16a2ce420c93c43cea6d45557d040c7fd8697013e806016` |
| 18 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/mem-center-iff--0cf28241c30b8c6ddfa46d9a.md) | 168 | `result-track:0cf28241c30b8c6ddfa46d9a786328e9a46251ea4a3e2ab05631e65005c9fb43` |
| 19 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/decidablememcenter--881b4a558da7f6aca8ada550.md) | 174 | `declaration-track:881b4a558da7f6aca8ada550c004dbb2d53bc2cd0c1aa649e8df0b4bf50387bf` |
| 20 | `instance` | [center.commSemigroup](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/center-commsemigroup--15624b88f90c8a903d9eb97e.md) | 181 | `declaration-track:15624b88f90c8a903d9eb97e5904ab0283422680b8e7c3750d2b565a567d454a` |
| 21 | `theorem` | [center_eq_top](../../../../../mathematics/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/declarations/center-eq-top--afcb52d438f15a2100aca3bd.md) | 193 | `result-track:afcb52d438f15a2100aca3bdfede2a9405f9416299e5c374647008a0bd4af01d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
