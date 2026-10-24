# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeGroup.Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43784eeedb9c053f376ce45b2eec6faf1b952f14",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43784eeedb9c053f376ce45b2eec6faf1b952f14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Groups` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderEmbeddingSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/orderembeddingslice--b776678932b4d032df40774e.md) | 13 | `declaration-track:b776678932b4d032df40774ef9156e94450bb989a384a9981b0568305623edb9` |
| 2 | `structure` | [OrderAutomorphismSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/orderautomorphismslice--e5af37e172871d69aa22831a.md) | 19 | `declaration-track:e5af37e172871d69aa22831a7347d552be0b168ba17b35872481f7b8b33e6418` |
| 3 | `def` | [orderAutomorphism_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/orderautomorphism-refl--e458bec1f6ac6197812c91ea.md) | 33 | `declaration-track:e458bec1f6ac6197812c91eae70b7bc25b5e7fadc5812305cd298c47b7e31aab` |
| 4 | `def` | [orderAutomorphism_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/orderautomorphism-symm--8bbade3f22af84e31186bbc9.md) | 50 | `declaration-track:8bbade3f22af84e31186bbc9592018709302c06d7528c112138ff00374e04547` |
| 5 | `def` | [orderAutomorphism_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/orderautomorphism-trans--39ef040ed8d0f3ac637b655f.md) | 60 | `declaration-track:39ef040ed8d0f3ac637b655f4ff3ffdccf0a828839819d338d8b3a4a2302770c` |
| 6 | `structure` | [SliceAction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/sliceaction--04d610d942931e7a6f60a330.md) | 78 | `declaration-track:04d610d942931e7a6f60a3309b0b8a383f25556d39a6f674c3dfaf53d9e5efa3` |
| 7 | `theorem` | [sliceAction_preserves_contains_transport](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/sliceaction-preserves-contains-transport--45f3d673bb6c990afbc76d88.md) | 95 | `result-track:45f3d673bb6c990afbc76d88827763ddd4eff9ae7f4575c71a87433916cc2131` |
| 8 | `structure` | [LookupPreservingLatticeAction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/lookuppreservinglatticeaction--868cc5ae964ae763e2323f91.md) | 110 | `declaration-track:868cc5ae964ae763e2323f916eb0176f7a8c01dca556f2f0fedc9a839296ed87` |
| 9 | `theorem` | [lookupPreservingLatticeAction_preserves_decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/lookuppreservinglatticeaction-preserves-decode--71043a570a60fade01aa2947.md) | 119 | `result-track:71043a570a60fade01aa2947082e9638b2ccb3e63d44b1f256a7bf29467b73f1` |
| 10 | `theorem` | [lookupPreservingLatticeAction_preserves_lookup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/lookuppreservinglatticeaction-preserves-lookup--696461878331fc83ddc9035a.md) | 126 | `result-track:696461878331fc83ddc9035a7f4a675eff2821f9a059f9ed796b27662221d33f` |
| 11 | `theorem` | [lookupPreservingLatticeAction_preserves_slice_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/lookuppreservinglatticeaction-preserves-slice-le--d8e1a14bed5d954ac426f585.md) | 133 | `result-track:d8e1a14bed5d954ac426f58518b686578553ba756c0eef031f9ce447e5c0b2f4` |
| 12 | `structure` | [PartialSliceGroupoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/partialslicegroupoid--03b1f67dc90f843186224f70.md) | 145 | `declaration-track:03b1f67dc90f843186224f70c2c9292d14e59aaf8aae154f32901c63ece42463` |
| 13 | `theorem` | [reducing_move_not_lattice_group_action](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant6574b6a6f2d503db790265c1c61d198bcd6d67c25d1333b1619dc15b0fd8ea5f.lean/declarations/reducing-move-not-lattice-group-action--a3639d11fd879e7719a81c99.md) | 168 | `result-track:a3639d11fd879e7719a81c995229d4abd9d6b8c25fd7b80644c7b65a1325370c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
