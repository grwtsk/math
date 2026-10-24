# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Loci.Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39f5894521a90970e82f67c2843a3a2271a8b23d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39f5894521a90970e82f67c2843a3a2271a8b23d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompressedObject](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/compressedobject--664d3437a798ba59cbfdfd97.md) | 23 | `declaration-track:664d3437a798ba59cbfdfd9739ed7cec811556d2dd7c0fe8ec67605611596471` |
| 2 | `def` | [decode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/decode--66f47164cead71eba6d39510.md) | 30 | `declaration-track:66f47164cead71eba6d3951002dcc42c06afcb95c7088e2c11743b4f95d1489e` |
| 3 | `theorem` | [decode_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/decode-mk--9fadf8effd257621e41fef36.md) | 33 | `result-track:9fadf8effd257621e41fef364f3b462d5799e4a83956d4f7b26bbf422b3b83b6` |
| 4 | `theorem` | [decode_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/decode-mk--d3a8884151a8918d70c683d4.md) | 39 | `result-track:d3a8884151a8918d70c683d4bcdd1ea11732186cdf33d507675cd06f0c040002` |
| 5 | `inductive` | [LocusKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/locuskind--18b9ff70848e4d2dec3a5baa.md) | 44 | `declaration-track:18b9ff70848e4d2dec3a5baa096a8d33a8931acec7385f77715b1843542daa10` |
| 6 | `structure` | [Locus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/locus--46fe559056dc5994785ec05c.md) | 58 | `declaration-track:46fe559056dc5994785ec05c18c102726dd2e52acb9b4fa7c7a74531ba871e8a` |
| 7 | `structure` | [DecodedLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/decodedlocus--1383551a97c2d3acdcb1b0b5.md) | 66 | `declaration-track:1383551a97c2d3acdcb1b0b59b6d8b61246b2eb8beecf9fa00d072d897f16f54` |
| 8 | `structure` | [SourceLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/sourcelocus--ba6389e07455198846af0ac0.md) | 70 | `declaration-track:ba6389e07455198846af0ac0e4c9186f557a3421f19623d07d368806ef37785e` |
| 9 | `structure` | [SliceLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/slicelocus--8adfe0714937ec41a208e57e.md) | 74 | `declaration-track:8adfe0714937ec41a208e57e96c0b06431fe9d766245576699f93354c0250da4` |
| 10 | `structure` | [MacroLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/macrolocus--db70dd9bb5d2fc29a47b4d10.md) | 78 | `declaration-track:db70dd9bb5d2fc29a47b4d1013985c9ec8779974c8360a07ab53dc7665075bcf` |
| 11 | `structure` | [ResidueLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/residuelocus--b20f5b471168d6ce48361ce0.md) | 83 | `declaration-track:b20f5b471168d6ce48361ce0f139e2e32f34bffcd19b80cf6a38e7fecf44d26e` |
| 12 | `theorem` | [decodedLocus_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/decodedlocus-ext--c4aa3a9ce248a2a801e5f6ca.md) | 89 | `result-track:c4aa3a9ce248a2a801e5f6caff85b3b1bf15abfb32edce4058afb34620856c5d` |
| 13 | `def` | [lookupMacroList?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/lookupmacrolist--7fc3945289d10108ab978b05.md) | 104 | `declaration-track:7fc3945289d10108ab978b05887074fb8860fb701051b6a3cb88fa4fc504f11b` |
| 14 | `def` | [lookupMacro?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/lookupmacro--cf7daeb3d90f9a4c962dca2e.md) | 113 | `declaration-track:cf7daeb3d90f9a4c962dca2e4ce3b4d713971b3995ceb2739fc204a13427fb21` |
| 15 | `inductive` | [MacroLookupResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/macrolookupresidue--ba4db3a80500083876c2305f.md) | 117 | `declaration-track:ba4db3a80500083876c2305f44447cc7c114287c00f35ca78ffcf44caf2d40c0` |
| 16 | `def` | [toResidueLocus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/toresiduelocus--e2b4091d6f822dd2b004b588.md) | 123 | `declaration-track:e2b4091d6f822dd2b004b5881a77d306fafd73cd8d391b83b92449fc797f1989` |
| 17 | `theorem` | [lookupMacroList?_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/lookupmacrolist-sound--4956dd42331203db17550358.md) | 131 | `result-track:4956dd42331203db175503588ad612c50c5931a1b07626ca0a3a32dacd1ce57c` |
| 18 | `theorem` | [lookupMacro?_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/lookupmacro-sound--ce7479838c99ebee3a1a68ed.md) | 153 | `result-track:ce7479838c99ebee3a1a68eda951f8e94d1aa53803383ae76034a7c8cc035a69` |
| 19 | `theorem` | [lookupMacro?_none_is_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/lookupmacro-none-is-residue--1f407b1be3ff9a58e39e4a1d.md) | 159 | `result-track:1f407b1be3ff9a58e39e4a1d7ed68b75549f338cd76b1dcbb4d13cfd30ab62cd` |
| 20 | `structure` | [PreservesLoci](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/preservesloci--2d8f37652302ea4d48e1744f.md) | 173 | `declaration-track:2d8f37652302ea4d48e1744f11d3dcb5d363056d63ee29356ba9c9e2c68eacde` |
| 21 | `def` | [preservesLoci_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/preservesloci-refl--fa0b41002df1f104adfda1fa.md) | 186 | `declaration-track:fa0b41002df1f104adfda1fa1ec2df08adf8fb982608aff0d75eff54ed412d59` |
| 22 | `def` | [preservesLoci_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/preservesloci-symm--cac959289716af721fec80b1.md) | 199 | `declaration-track:cac959289716af721fec80b113ecdf64917a4dc5a85774da12e46631889decd8` |
| 23 | `def` | [preservesLoci_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87.lean/declarations/preservesloci-trans--5968e283f9e2ee16239db720.md) | 209 | `declaration-track:5968e283f9e2ee16239db720593250bc446dde19cfe7002b29af2fda9e80301e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
