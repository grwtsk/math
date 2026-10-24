# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.KrullDimension.Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aefa68c2c610ab117f01f9a5afac8b4363b73c4c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aefa68c2c610ab117f01f9a5afac8b4363b73c4c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Monotone.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WithBot` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StrictSeries](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/strictseries--494e981f88540910d90d691e.md) | 46 | `declaration-track:494e981f88540910d90d691e9d7f3de5ed2725e3b8ba88777166d38f16876c3e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/instance--9e33f47f78a079b60b312e02.md) | 56 | `declaration-track:9e33f47f78a079b60b312e0241e90c259f220d74de210c62822c5021e0664345` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/instance--5c839d6ff08e6bca539857ab.md) | 59 | `declaration-track:5c839d6ff08e6bca539857abf497c4982e6de05625eba74c440b60a8415061d2` |
| 4 | `lemma` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/le-def--4fb12952fb9f558fadef3b3d.md) | 64 | `result-track:4fb12952fb9f558fadef3b3d3f8070121ec4dd9df03b55bfa08ca81e28e6bd8d` |
| 5 | `lemma` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/lt-def--9657ac373af45faa4e867a71.md) | 67 | `result-track:9657ac373af45faa4e867a719b1e9f53fb6e419ef7fa4fd6a15784913cec1547` |
| 6 | `def` | [singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/singleton--951df38efabc8e834f41d434.md) | 73 | `declaration-track:951df38efabc8e834f41d4349fc5336ae43865c20ef00376c65613d91c1a31b8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/instance--319934129367265967386284.md) | 78 | `declaration-track:31993412936726596738628456ab7d6b6ec7bbedcb64e1d5f1072409b8bc14de` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/instance--865938a1b27ba8353b3d426c.md) | 81 | `declaration-track:865938a1b27ba8353b3d426c6766d5137ad9ac32fcfcf06a87c7e8527bf42f3d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/instance--f45cd3a5349cddee7afe9d43.md) | 84 | `declaration-track:f45cd3a5349cddee7afe9d43ad3c2eadccde754a278011aa868863246d6470b5` |
| 10 | `lemma` | [top_len_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/top-len-unique--23e2c83c3843ecc7831d6a1d.md) | 87 | `result-track:23e2c83c3843ecc7831d6a1df0f22db785cd22f60d61cb460c9b3e9aa9c27ef8` |
| 11 | `lemma` | [top_len_unique'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/top-len-unique--5356f46aef02577c6d2b92ce.md) | 91 | `result-track:5356f46aef02577c6d2b92ce806aa0252c70bbbdc05210d28fdf9b27475ec75b` |
| 12 | `def` | [krullDim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/krulldim--8cbe55308cf1a918e2459148.md) | 102 | `declaration-track:8cbe55308cf1a918e2459148b3c0f1baa514a6adb9652e12541aebac30c3cc7c` |
| 13 | `def` | [height](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/height--9f8ae387bf2646426023f194.md) | 108 | `declaration-track:9f8ae387bf2646426023f1948acccd698bdda42eff8f228ea8d0a92431fc7a58` |
| 14 | `def` | [coheight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KrullDimension/Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa.lean/declarations/coheight--c45f61371acd47d01f2b7e63.md) | 113 | `declaration-track:c45f61371acd47d01f2b7e63eea242dae5919da1f330aee094ef415e230614f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
