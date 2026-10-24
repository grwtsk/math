# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeLoci.Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de08042e86eee400b63ef5988016f52967302ed1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de08042e86eee400b63ef5988016f52967302ed1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Loci` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Rewrite` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LocusKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/locuskind--553cf029655a180d88e45b3a.md) | 15 | `declaration-track:553cf029655a180d88e45b3a6d18c6f0a033d8a5cf7cd2ea37d006c13ac40500` |
| 2 | `structure` | [DecodedLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/decodedlocus--68434ae33e7120c250d72a32.md) | 23 | `declaration-track:68434ae33e7120c250d72a32a5042be1d94b382e7c5be3896935931ad1d734fb` |
| 3 | `structure` | [SliceLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/slicelocus--b10cf6b42fd41ad9ba4ed121.md) | 27 | `declaration-track:b10cf6b42fd41ad9ba4ed121844c52df7f529cfa1f071dd8fcb5a8d0ead02594` |
| 4 | `structure` | [ResidueLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/residuelocus--837a394c2ccd514a8adb548a.md) | 31 | `declaration-track:837a394c2ccd514a8adb548a4462e1afdddc57e718c89192e5f82f5830eb84a0` |
| 5 | `theorem` | [decodedLocus_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/decodedlocus-ext--988e4f951c87f7592f61a51b.md) | 37 | `result-track:988e4f951c87f7592f61a51b0dab5c0273677875426d4311218f0322ad59e8c4` |
| 6 | `theorem` | [sliceLocus_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/slicelocus-ext--b21d89b55387085f34086997.md) | 46 | `result-track:b21d89b55387085f34086997e18d6fc83447b73cd76c05f520e6d7e3c835c6bb` |
| 7 | `theorem` | [slice_le_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/slice-le-refl--dbc60e65b264f9b9b6e2f976.md) | 55 | `result-track:dbc60e65b264f9b9b6e2f9761e3ac1b2da2c8819b4aad1c08463586ec1e88140` |
| 8 | `theorem` | [slice_le_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/slice-le-trans--b79a36fec1aa65bffecc89d6.md) | 60 | `result-track:b79a36fec1aa65bffecc89d62cb89ef579906db31c93ff2b62f3ac3c10edd971` |
| 9 | `def` | [transportSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/transportslice--c9c5e8bdea4fdd090f6db25c.md) | 73 | `declaration-track:c9c5e8bdea4fdd090f6db25cdcca2a3af50d63d5cd4909b5d47542563e9d4494` |
| 10 | `theorem` | [transportSlice_contains_forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/transportslice-contains-forward--7c3925f93a22c0d79223b97f.md) | 87 | `result-track:7c3925f93a22c0d79223b97fa971496de4243eddb2ccd6e7bbd745d1a43fdb95` |
| 11 | `theorem` | [transportSlice_contains_backward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/transportslice-contains-backward--d60ca6627e9f30830f1854fd.md) | 99 | `result-track:d60ca6627e9f30830f1854fd1e3f7d978b10e399c2187d8ad38fa95a114e7063` |
| 12 | `theorem` | [transportSlice_roundtrip_forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/transportslice-roundtrip-forward--4a36aab9c6f9df33bab4d1e3.md) | 112 | `result-track:4a36aab9c6f9df33bab4d1e3d61107d53b554d4ae8b72fcde49d22c1d9eee9cf` |
| 13 | `theorem` | [transportSlice_roundtrip_backward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/transportslice-roundtrip-backward--a888825491eeef820ce4917f.md) | 121 | `result-track:a888825491eeef820ce4917f494abf95d5a65cac53459a85919deef40e600cee` |
| 14 | `structure` | [PreservesLatticeLoci](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/preserveslatticeloci--9ae7f34eeef9835cb5214a6d.md) | 137 | `declaration-track:9ae7f34eeef9835cb5214a6d790947f87f4fa9faad85d413d2a14077cc5ef608` |
| 15 | `def` | [preservesLatticeLociOfDecodeEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/preserveslatticelociofdecodeeq--db257ac745ed1cd2b5e55f12.md) | 162 | `declaration-track:db257ac745ed1cd2b5e55f12a2a3e475feefdd3118f1ae4903adfbf4dbc930c6` |
| 16 | `def` | [preservesLatticeLoci_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/preserveslatticeloci-refl--02157d7c42e45edc9de94023.md) | 175 | `declaration-track:02157d7c42e45edc9de94023fa86e43e4a0637898189928f0b4aade8f1b4b1ee` |
| 17 | `def` | [preservesLatticeLoci_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/preserveslatticeloci-symm--e17aa7a800a5719a4694d402.md) | 180 | `declaration-track:e17aa7a800a5719a4694d402c1a6148e0d27a823e2f0d0eddaeef3f64844002c` |
| 18 | `def` | [preservesLatticeLoci_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/preserveslatticeloci-trans--b49b54462c7f10ed45721f0a.md) | 209 | `declaration-track:b49b54462c7f10ed45721f0abdf93911ff91b36591ad35505087ec0ce0fc2a4f` |
| 19 | `theorem` | [rewrite_preserves_lattice_loci](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/rewrite-preserves-lattice-loci--f9320c0615ea724d098d6820.md) | 263 | `result-track:f9320c0615ea724d098d6820211ce417bfa9fad4562df02ec103ae77c2bc8074` |
| 20 | `def` | [lookupSection_transport_forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/lookupsection-transport-forward--bde2247d2782886e0ee8421c.md) | 271 | `declaration-track:bde2247d2782886e0ee8421c15f9f41c041fd86d163616cdce0a4d1bf9fe6c0d` |
| 21 | `def` | [lookupSection_transport_backward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89.lean/declarations/lookupsection-transport-backward--8ea9730cf86c6834d7580fdf.md) | 279 | `declaration-track:8ea9730cf86c6834d7580fdfb1eef95e00356ce865dcb72f75d29ac7db59fe42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
