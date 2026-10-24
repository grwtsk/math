# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Grammar.Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af66034684837646c20bad37e4fe114e65fb923f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af66034684837646c20bad37e4fe114e65fb923f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Boolean.NAND` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Catalan.Tree` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Expansion` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryGrammar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/declarations/binarygrammar--139e6c70e441d6ae0dd9b814.md) | 21 | `declaration-track:139e6c70e441d6ae0dd9b814362d13cdb771018bfa4b44b31c9166f1ee49c5ea` |
| 2 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/declarations/eval--40a7ae7e0238a58dc89a4279.md) | 27 | `declaration-track:40a7ae7e0238a58dc89a427928c5bac7f84eefad560492b8cdfa2a0c66bd90e6` |
| 3 | `theorem` | [eval_leaf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/declarations/eval-leaf--a868556c24389c9e3d8e77b7.md) | 32 | `result-track:a868556c24389c9e3d8e77b7f79bfd7de62b3e46e9a0eaaf94cf976c84a823d9` |
| 4 | `theorem` | [eval_node](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/declarations/eval-node--20d5dfe26304382b074098f1.md) | 37 | `result-track:20d5dfe26304382b074098f1e9088629376aa19fd07b573a8d6ccf70d5f55a24` |
| 5 | `def` | [nandGrammar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/declarations/nandgrammar--0b2a8c0bd16f69e68a8cabc6.md) | 44 | `declaration-track:0b2a8c0bd16f69e68a8cabc62ab2c633be823feee9375bd5885f51ef9fd965b3` |
| 6 | `structure` | [SpectralShellExpansionSignature](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/declarations/spectralshellexpansionsignature--59ec4724dc0e35daa53811e1.md) | 48 | `declaration-track:59ec4724dc0e35daa53811e12db612b33d1f87e06961ac06a2fea09c460365dd` |
| 7 | `def` | [SpectralShellExpansionSignature.toGrammar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/declarations/spectralshellexpansionsignature-togrammar--9530752dbf909eb6b059e81f.md) | 53 | `declaration-track:9530752dbf909eb6b059e81f0e91ff1d7ba13834db1c9080dfbddb3e52d4b6fa` |
| 8 | `structure` | [EMLSignature](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/declarations/emlsignature--a78e02a2c3ab6b9fc2c90410.md) | 59 | `declaration-track:a78e02a2c3ab6b9fc2c904106b5ca0b4de1d9cf194475fa210b1fdf20d9c2ce3` |
| 9 | `def` | [EMLSignature.toGrammar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Grammar/Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112.lean/declarations/emlsignature-togrammar--08a01a2a9bf35327224a9078.md) | 64 | `declaration-track:08a01a2a9bf35327224a90783dde7e5468034adfdde3739f85b4264bdd5b5ffa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
