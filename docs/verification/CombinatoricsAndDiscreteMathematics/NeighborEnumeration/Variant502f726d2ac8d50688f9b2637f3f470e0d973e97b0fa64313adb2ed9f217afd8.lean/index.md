# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NeighborEnumeration.Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b5ff74ee0dfe690d78dd4d0e17d81a58543c21b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b5ff74ee0dfe690d78dd4d0e17d81a58543c21b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Admissibility` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EligibleArc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/eligiblearc--0f6e9521f2d32d2f213a1066.md) | 22 | `declaration-track:0f6e9521f2d32d2f213a1066b924fe49dae46c4be722cb6bed52bc294c38df2c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/instance--7dac759e358604dd5bc14d2d.md) | 32 | `declaration-track:7dac759e358604dd5bc14d2d5f2745fb2262093864c884be9f907e2def763b4e` |
| 3 | `def` | [canonicalNeighborSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/canonicalneighborset--30eb24db078ce27060d021b9.md) | 43 | `declaration-track:30eb24db078ce27060d021b9c43a262a10f1892f73e632e2ba626a2db1e84e4d` |
| 4 | `def` | [canonicalNeighborList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/canonicalneighborlist--117eafab9e2a807bf5fa1dee.md) | 51 | `declaration-track:117eafab9e2a807bf5fa1dee7ecd85df6992ce5c7d372b051f2757e98256a17c` |
| 5 | `theorem` | [mem_canonicalNeighborList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/mem-canonicalneighborlist--3d53d222d4de8fa9ae041a85.md) | 59 | `result-track:3d53d222d4de8fa9ae041a85328e0af3dab83a87c7fdec6b47ea09f6bbcdc989` |
| 6 | `theorem` | [canonicalNeighborList_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/canonicalneighborlist-nodup--46cc43229f0592d875ddad04.md) | 69 | `result-track:46cc43229f0592d875ddad04b04ab3c84ee6792a06a7d8541a57ca7d76ca949f` |
| 7 | `theorem` | [canonicalNeighborList_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/canonicalneighborlist-sorted--53a3a1c535cdadb2c740fc23.md) | 77 | `result-track:53a3a1c535cdadb2c740fc236e9de59466415a38e1f27839328e912fb9c3cb17` |
| 8 | `structure` | [NeighborEnumeration](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/neighborenumeration--de92a64d161971ba35cfc3c3.md) | 90 | `declaration-track:de92a64d161971ba35cfc3c324fd0fa74da9e03c1055ab74d0e46ae2fcced7ac` |
| 9 | `theorem` | [mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/mem-iff--7f6943f35daea5206968053c.md) | 110 | `result-track:7f6943f35daea5206968053c0c28e5f7b54fc335a4756e3895a2814fd846a716` |
| 10 | `theorem` | [eq_canonical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/eq-canonical--e01a88d72bf22f43c02b0009.md) | 123 | `result-track:e01a88d72bf22f43c02b0009221688f6e04ebc74c617daed8f0ea1b8b7d04e63` |
| 11 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/ext--9eb392051fb815aa1c611563.md) | 139 | `result-track:9eb392051fb815aa1c611563de89b34c54df6b9554e1168cb737fab949558543` |
| 12 | `def` | [canonical](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeighborEnumeration/Variant502f726d2ac8d50688f9b2637f3f470e0d973e97b0fa64313adb2ed9f217afd8.lean/declarations/canonical--bccca7383428c6130a4386df.md) | 150 | `declaration-track:bccca7383428c6130a4386dfa496f01b99360dc74cf221b63c6f349a0f3c85cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
