# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeLoci.Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d52c06d09db7318c08fc1913ab63c887d6e8050e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d52c06d09db7318c08fc1913ab63c887d6e8050e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Loci` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Rewrite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LocusKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/locuskind--33233bb294dcfe9b93b50cd4.md) | 23 | `declaration-track:33233bb294dcfe9b93b50cd4004ee027f0f9e54f0f40275a90955de0234a315e` |
| 2 | `structure` | [DecodedLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/decodedlocus--ac852abaf186ad333fce7e27.md) | 31 | `declaration-track:ac852abaf186ad333fce7e27213088c29cd8f52e1811478372e2b04cafb60494` |
| 3 | `structure` | [SliceLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/slicelocus--a3be35e425c364705f042747.md) | 35 | `declaration-track:a3be35e425c364705f0427470926ddc83d7e2b1f3fcdc4bacf07fa49c9c625ba` |
| 4 | `structure` | [ResidueLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/residuelocus--8c14cecd3d70cfc1a4bc33ac.md) | 39 | `declaration-track:8c14cecd3d70cfc1a4bc33ac04867ca0e287bc3a5d28804b61641036a8217e79` |
| 5 | `theorem` | [decodedLocus_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/decodedlocus-ext--01c4bc71cfc6523f9ea5a24e.md) | 45 | `result-track:01c4bc71cfc6523f9ea5a24e167bc16fcdc761e2da463838b486a97614daa41e` |
| 6 | `theorem` | [sliceLocus_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/slicelocus-ext--5e7ce4d735eda4d5769df5a6.md) | 54 | `result-track:5e7ce4d735eda4d5769df5a6c435008c71091c408e9d779d1aee6a779b1c43c7` |
| 7 | `theorem` | [slice_le_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/slice-le-refl--60c44021fa02a9a08441859a.md) | 63 | `result-track:60c44021fa02a9a08441859a7552765d59cfa236e6487e1e6d69858f8b3da17a` |
| 8 | `theorem` | [slice_le_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/slice-le-trans--4da521b1851f6f9df5746a08.md) | 68 | `result-track:4da521b1851f6f9df5746a08b90b380923b8cb0d2854ed9cad349e058786273b` |
| 9 | `def` | [transportSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/transportslice--ea576af7dcec17102094c00e.md) | 81 | `declaration-track:ea576af7dcec17102094c00e002160de28780607bce9c8b450fb2894e45dbe47` |
| 10 | `theorem` | [transportSlice_contains_forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/transportslice-contains-forward--2a3af5f7149ed29cf3df48ff.md) | 95 | `result-track:2a3af5f7149ed29cf3df48ff7e8a5ceeba9160f4dca96f78cbaafb309914e1d0` |
| 11 | `theorem` | [transportSlice_contains_backward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/transportslice-contains-backward--651d612cf6cbe472dc005290.md) | 107 | `result-track:651d612cf6cbe472dc005290f0ff979e95be923eeb46aaeaa7a858870da609b3` |
| 12 | `theorem` | [transportSlice_roundtrip_forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/transportslice-roundtrip-forward--dccb481704293e43d0b198b4.md) | 120 | `result-track:dccb481704293e43d0b198b45570c04325f0306b5445841fd08b5cf788ab0b3c` |
| 13 | `theorem` | [transportSlice_roundtrip_backward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/transportslice-roundtrip-backward--99c513c7e9a3ff74598cbba9.md) | 129 | `result-track:99c513c7e9a3ff74598cbba95169e48348eb49baf1ed481db82e272c4f407a2d` |
| 14 | `structure` | [PreservesLatticeLoci](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/preserveslatticeloci--27ce792258b12591e51ae2a7.md) | 145 | `declaration-track:27ce792258b12591e51ae2a7f50cdf6a79f7b487f6119b6c964b634bc343bc4a` |
| 15 | `def` | [preservesLatticeLociOfDecodeEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/preserveslatticelociofdecodeeq--bda0c416da0402a9f07c2472.md) | 170 | `declaration-track:bda0c416da0402a9f07c2472763d8001e880f0f802f32a9121046e4b20fb7ca7` |
| 16 | `def` | [preservesLatticeLoci_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/preserveslatticeloci-refl--b2f4f6fe1d73292320dc759b.md) | 183 | `declaration-track:b2f4f6fe1d73292320dc759b93ce28fe45128edbfab7f3e463cca2be6f3633ee` |
| 17 | `def` | [preservesLatticeLoci_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/preserveslatticeloci-symm--9a70f28dddf71298b34ce4d7.md) | 188 | `declaration-track:9a70f28dddf71298b34ce4d79f3859cc2372c758e8243e04b5b670b4380198a7` |
| 18 | `def` | [preservesLatticeLoci_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/preserveslatticeloci-trans--bef7365068d3a7117ed00e93.md) | 217 | `declaration-track:bef7365068d3a7117ed00e93b5ffdcea4d0a37f45e5cbec1c73f867e09ec7fdf` |
| 19 | `theorem` | [rewrite_preserves_lattice_loci](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/rewrite-preserves-lattice-loci--69ca8242707425b5f05d7e2a.md) | 271 | `result-track:69ca8242707425b5f05d7e2a168efd4816e22e566b282c138813dbea5742e2f5` |
| 20 | `def` | [lookupSection_transport_forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/lookupsection-transport-forward--40b29a04587db622df87f25f.md) | 279 | `declaration-track:40b29a04587db622df87f25f3fdd9d1ceab379058e1a58a0dd9e68657aa80e48` |
| 21 | `def` | [lookupSection_transport_backward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeLoci/Variant8d3b8e7c66d151c7e1ae07d348d69448fcf5c21db6884323b752ad84e7e13dc2.lean/declarations/lookupsection-transport-backward--45351ef1bc9065735297adf3.md) | 287 | `declaration-track:45351ef1bc9065735297adf3d23b8e2dca28ebb1ccc50564365c1b02d3dce39b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
