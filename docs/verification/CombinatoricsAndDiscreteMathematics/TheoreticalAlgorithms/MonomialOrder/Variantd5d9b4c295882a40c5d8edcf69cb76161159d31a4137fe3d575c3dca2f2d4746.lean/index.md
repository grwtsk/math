# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MonomialOrder.Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "150917a2f329f2bd4bab822c7a2e85d5d5a3f380",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `150917a2f329f2bd4bab822c7a2e85d5d5a3f380`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.WellFounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonomialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/monomialorder--d4c592e4f22d621d9c2361a4.md) | 65 | `declaration-track:d4c592e4f22d621d9c2361a49afb33f26a1460a166dec6379e56eaad6bbe3c8c` |
| 2 | `lemma` | [le_add_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/le-add-right--2ea7992c26e8955d01c4686a.md) | 87 | `result-track:2ea7992c26e8955d01c4686a68ca85db61b6f8be49916c7c47b2d5bf28dbdb14` |
| 3 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/orderbot--5205f121f689871a220aacc7.md) | 92 | `declaration-track:5205f121f689871a220aacc78716430594367d30408437b9c8a9d5667f832eef` |
| 4 | `theorem` | [bot_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/bot-eq-zero--acce7ffd9ec97630d04f7541.md) | 99 | `result-track:acce7ffd9ec97630d04f75412becef39507cddf8bce4c12409fb242dd1cf9ee9` |
| 5 | `theorem` | [eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/eq-zero-iff--361043573fa60636ad92ab13.md) | 101 | `result-track:361043573fa60636ad92ab136580b3334d109192f247fbb1faf72fead5155f2e` |
| 6 | `lemma` | [toSyn_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/tosyn-strictmono--9d8203b87ea810b6ae2ad7b0.md) | 103 | `result-track:9d8203b87ea810b6ae2ad7b0360818fc3292e3d744affd6df38f013d854e16d0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/instance--3ffdbab61598ef5c5dc4682d.md) | 123 | `declaration-track:3ffdbab61598ef5c5dc4682d8fb7e330a200d3074b2b5b53e8e23e7c3ce73edb` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/example--efd65126b543d35f2b2322e7.md) | 130 | `declaration-track:efd65126b543d35f2b2322e7784e540bf2b8f7caf99c0d2a59c7a3d7ee6f4a90` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/example--311e724326be21d3865b0d5a.md) | 134 | `declaration-track:311e724326be21d3865b0d5ae4765c75204cb656146cf267233897660ae77ff9` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/example--bfe14718bb5fff2ae9d70921.md) | 138 | `declaration-track:bfe14718bb5fff2ae9d7092115c537872c41cd9df2c19642cbc7befbfa0db2ce` |
| 11 | `def` | [MonomialOrder.lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/monomialorder-lex--929f99e9e81722f2b61e20a4.md) | 144 | `declaration-track:929f99e9e81722f2b61e20a4bb5c9b8545906e92257f0abae6ad7475a4c950b0` |
| 12 | `theorem` | [MonomialOrder.lex_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/monomialorder-lex-le-iff--08ff3140431828af9bce4d8b.md) | 152 | `result-track:08ff3140431828af9bce4d8ba2d0e8c3c22ec5da293389b8cc1393ebee955b3b` |
| 13 | `theorem` | [MonomialOrder.lex_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/monomialorder-lex-lt-iff--a8e7b9870c28d191f49ef584.md) | 155 | `result-track:a8e7b9870c28d191f49ef584a1f99af8bdf1d25f4ab816093b5fdc6765893634` |
| 14 | `theorem` | [MonomialOrder.lex_lt_iff_of_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/monomialorder-lex-lt-iff-of-unique--05aa8c213dbc704e56cd7d2e.md) | 158 | `result-track:05aa8c213dbc704e56cd7d2e8699670436e144b8a7e47b793d11a4ad7f34dae7` |
| 15 | `theorem` | [MonomialOrder.lex_le_iff_of_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/declarations/monomialorder-lex-le-iff-of-unique--925c4ba95b2aa4e61dd09f20.md) | 162 | `result-track:925c4ba95b2aa4e61dd09f20035ec6c95576ad5bb7cdfb7466b1d2f754400cd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
