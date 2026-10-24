# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashing.Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c93e6663c203ac3bcc2b672e4831ab5b68d1f68",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c93e6663c203ac3bcc2b672e4831ab5b68d1f68`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.IO` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 13; external provider; requires a separately pinned dependency.
- `Lake.Build.Trace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HashMemo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/hashmemo--73077580369ba97bf14b72fe.md) | 23 | `declaration-track:73077580369ba97bf14b72fe2f7b98ab73707dcd1739fda270f38bb5eb92aa65` |
| 2 | `def` | [insertDeps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/insertdeps--c03ebe91c8211194e18dd549.md) | 30 | `declaration-track:c03ebe91c8211194e18dd549b50c3c326da9f8b1e5f4aa607a2a9f9867b4c658` |
| 3 | `def` | [HashMemo.filterByFilePaths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/hashmemo-filterbyfilepaths--a39494c81642f4f198bd5bb8.md) | 41 | `declaration-track:a39494c81642f4f198bd5bb8240206af77f2abb8464d59fd9416e4eb85ed0151` |
| 4 | `abbrev` | [HashM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/hashm--d42c388093c644b450e93d22.md) | 50 | `declaration-track:d42c388093c644b450e93d2209f12ba13b41ad7a239500362b2f38a0ffb2b4ca` |
| 5 | `def` | [getFileImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/getfileimports--51080e5f5d3c4565026eb667.md) | 53 | `declaration-track:51080e5f5d3c4565026eb6670801efcca2b61b01a328c00930fb176bcc1d1791` |
| 6 | `def` | [hashFileContents](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/hashfilecontents--8c2f52e3aab3afa29ff944ac.md) | 62 | `declaration-track:8c2f52e3aab3afa29ff944ac9578b6bd3a160afbc55bd0a27a42b10a6670f22c` |
| 7 | `def` | [getRootHash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/getroothash--70dcb4684fd41b9c6d48276f.md) | 73 | `declaration-track:70dcb4684fd41b9c6d48276fcc64c77cc06b1169f9db135b4be1e4c53d45239a` |
| 8 | `def` | [getFileHash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/getfilehash--e864c31c43b69449298b8127.md) | 86 | `declaration-track:e864c31c43b69449298b8127f70d119fc52085911b6431643636f1a07d49b769` |
| 9 | `def` | [roots](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/roots--099105ea84707df73072c6e4.md) | 115 | `declaration-track:099105ea84707df73072c6e482d7730ff825b44ddc45a10855506e3fbb3ae62c` |
| 10 | `def` | [getHashMemo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashing/Variantc26d7d8c0c87d40efaa4632de32a3e2d0320205af733d98c46301e865664f79b.lean/declarations/gethashmemo--6b2bc1cf15fe27f1a19d76ae.md) | 118 | `declaration-track:6b2bc1cf15fe27f1a19d76ae80a994c7c9d4ea74569228f88b4d33e06bb804cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
