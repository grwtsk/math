# Verification target: GRWTSK.Algebra.GroupTheory.MulOpposite.Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca38dd8c1e9cc0fa505af8287ec8d0ca47d3afcd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca38dd8c1e9cc0fa505af8287ec8d0ca47d3afcd`.

Source path: `GRWTSK/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.MulOpposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/op--2178291584b4fdee955095da.md) | 24 | `declaration-track:2178291584b4fdee955095da87b569ae565939d5d9d9608ff2560338d1074f4c` |
| 2 | `theorem` | [mem_op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/mem-op--820df31a1336386912541909.md) | 31 | `result-track:820df31a13363869125419091dd0560529a3f4321683eaa950eccd1975d79a49` |
| 3 | `lemma` | [op_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/op-tosubmonoid--7a7b6e0879f82f89c37ee90d.md) | 33 | `result-track:7a7b6e0879f82f89c37ee90d3a09acebf7186225b43e714a816dcfc344073d62` |
| 4 | `def` | [unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/unop--a180536eb673d22027736e21.md) | 40 | `declaration-track:a180536eb673d22027736e218fae85e0e0b3409feb89d35036880e2703af7932` |
| 5 | `theorem` | [mem_unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/mem-unop--9504eca6cba6452a18471c1d.md) | 47 | `result-track:9504eca6cba6452a18471c1d17c27da57d7e422fa36fdf32fdc3d1f6595b9376` |
| 6 | `lemma` | [unop_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/unop-tosubmonoid--c61d89489bda817491492004.md) | 49 | `result-track:c61d89489bda817491492004822b498250d31f3a0901e5d9ab4046b897bde805` |
| 7 | `theorem` | [unop_op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/unop-op--f2f5ab963a9124b40f5ca21b.md) | 54 | `result-track:f2f5ab963a9124b40f5ca21b57883499850b6e7a4ef981a2949e45e2d31fed5b` |
| 8 | `theorem` | [op_unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/op-unop--07f607ee627e50c96595ba70.md) | 57 | `result-track:07f607ee627e50c96595ba70276573377802400887ef56f85b914c72c07af42a` |
| 9 | `theorem` | [op_le_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/op-le-iff--62e5e6f1bf2b5d0c86664f1a.md) | 62 | `result-track:62e5e6f1bf2b5d0c86664f1a5295c03b071a847f651e5fbf8717f0d1596a6fc8` |
| 10 | `theorem` | [le_op_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/le-op-iff--f7a2abd7a28ed4902a6e2f24.md) | 66 | `result-track:f7a2abd7a28ed4902a6e2f2410113cc1fafa283961c15e5e23a1506a12e09c20` |
| 11 | `theorem` | [op_le_op_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/op-le-op-iff--a9e0b18a72e310bfc3d98596.md) | 70 | `result-track:a9e0b18a72e310bfc3d985963701074cbf940a5417c5f877b4a46a948823d7fb` |
| 12 | `theorem` | [unop_le_unop_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/unop-le-unop-iff--f33dbebd5152434b9db26180.md) | 74 | `result-track:f33dbebd5152434b9db26180ca90b1ebd3ffb43b89687d1d50c7468b488edc04` |
| 13 | `def` | [opEquiv](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/opequiv--f4517a3c7e1263c18097e6e8.md) | 80 | `declaration-track:f4517a3c7e1263c18097e6e8c6f0621f5fee3d0738b399fd43f6bf268298a5f3` |
| 14 | `theorem` | [op_injective](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/op-injective--d6e0b1997a71501f9f7c8f33.md) | 88 | `result-track:d6e0b1997a71501f9f7c8f33acaa5dc62604a91116e6f018e3534476c11daf97` |
| 15 | `theorem` | [unop_injective](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/unop-injective--7cabc0149b05b08756f0d355.md) | 91 | `result-track:7cabc0149b05b08756f0d355258b923c19e74510a28d402b1eaaaf57f41a25f9` |
| 16 | `theorem` | [op_inj](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/op-inj--8001268f3b4560b13cc0a83a.md) | 94 | `result-track:8001268f3b4560b13cc0a83a48b6e6e62acfb5d3c2121f06347c7376e4b17f4a` |
| 17 | `theorem` | [unop_inj](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/unop-inj--b480c5e2bd8d01796135061e.md) | 97 | `result-track:b480c5e2bd8d01796135061e4c1f23aaf92e56f943c0f510d6735a77d0d9dd8b` |
| 18 | `def` | [equivOp](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/equivop--c0638e4d42f5668a4bb9dc3b.md) | 101 | `declaration-track:c0638e4d42f5668a4bb9dc3b68bd00da77376fb69d91f2bd189470a4af83f7f2` |
| 19 | `theorem` | [op_normalizer](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/op-normalizer--87227e434d18b3b73536ab61.md) | 105 | `result-track:87227e434d18b3b73536ab619b193a25450fcbbec66856575cb9d4f3dd3dc364` |
| 20 | `theorem` | [unop_normalizer](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variant30c9317123187003f229753940974bed4960707ceb221d0ae77957c02eca5af0.lean/declarations/unop-normalizer--e74c6c0b850744b00564b255.md) | 110 | `result-track:e74c6c0b850744b00564b255ec7c9518d7f014531297459b62a6b192e78719a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
