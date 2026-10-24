# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DyadicBlocks.Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b294c29763f539c0dfc7f8b272ed1fcac98ba8f0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b294c29763f539c0dfc7f8b272ed1fcac98ba8f0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicLowerEndpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/dyadiclowerendpoint--fbe006ba0abb531063bfdf72.md) | 31 | `declaration-track:fbe006ba0abb531063bfdf7258efb5b6c9fb55c4ce202cecd09b277fbe6a37b4` |
| 2 | `theorem` | [dyadicLowerEndpoint_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/dyadiclowerendpoint-pos--a2ee6b85cabca3c9e8ea20a6.md) | 35 | `result-track:a2ee6b85cabca3c9e8ea20a683a6d2b11950af5bbde47a88ec7f876bc617a75a` |
| 3 | `theorem` | [dyadicLowerEndpoint_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/dyadiclowerendpoint-lt--910ce67900111dc5fc82babb.md) | 41 | `result-track:910ce67900111dc5fc82babb31d830f7ef6e75b0f52f4d2bfa9f0672d919434e` |
| 4 | `theorem` | [le_twice_dyadicLowerEndpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/le-twice-dyadiclowerendpoint--ae7a5501a35260eb8c3708d5.md) | 52 | `result-track:ae7a5501a35260eb8c3708d5db9f75b17c2c1cd3b1ffe0752663a3b5cef4aaf8` |
| 5 | `theorem` | [dyadicLowerEndpoint_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/dyadiclowerendpoint-eq-of-mem--3678965f3d1cd41bcdfb7490.md) | 66 | `result-track:3678965f3d1cd41bcdfb7490461114a34a06a06a931eec7314c0269920f26577` |
| 6 | `structure` | [TypeIIDyadicBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/typeiidyadicblock--6a6138c8b9b75d54738eae99.md) | 86 | `declaration-track:6a6138c8b9b75d54738eae999ba09e2c815e3c1fe668631d599f76b8177e6564` |
| 7 | `theorem` | [TypeIIDyadicBlock.ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/typeiidyadicblock-ext--731372ca9fce44a08b78b67b.md) | 104 | `result-track:731372ca9fce44a08b78b67b3d34a04978a218d94ca6dfc9dc3c1d8e2b8a2aaf` |
| 8 | `abbrev` | [TypeIIDyadicBlock.Left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/typeiidyadicblock-left--450e6538453ca1dab66c1a07.md) | 112 | `declaration-track:450e6538453ca1dab66c1a07460f1b72ca67c836bb0a94fcdd6b531e659cf8fd` |
| 9 | `abbrev` | [TypeIIDyadicBlock.Right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/typeiidyadicblock-right--85dbd9f6977b85392c4d2e6c.md) | 116 | `declaration-track:85dbd9f6977b85392c4d2e6cb293d39110fb7684791bd5d03a23754fef10b7d5` |
| 10 | `def` | [typeIIFactorDyadicBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/typeiifactordyadicblock--e81ea863aee899d69385875a.md) | 122 | `declaration-track:e81ea863aee899d69385875a3dc88f0c36033cf8078a32bc8596c0f553595eb2` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/instance--235db8232435ba77d94aed6d.md) | 167 | `declaration-track:235db8232435ba77d94aed6d74beacb7818b6a015c750a299bb86b5080a279ad` |
| 12 | `def` | [conductorThreeTypeIIBlocks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/conductorthreetypeiiblocks--b1de95da26ef126ef8191d15.md) | 175 | `declaration-track:b1de95da26ef126ef8191d151aa43ae5c924d21773b5424d6726172c046b312e` |
| 13 | `theorem` | [typeIIFactorDyadicBlock_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/typeiifactordyadicblock-mem--c6735298cda8993e18cfbd54.md) | 180 | `result-track:c6735298cda8993e18cfbd54fe4fffc3b1abbc61eea32b24abdc6d95dcff2652` |
| 14 | `def` | [typeIIFactorLeftInBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/typeiifactorleftinblock--9e802bb32bb0f26c6d68891c.md) | 189 | `declaration-track:9e802bb32bb0f26c6d68891c89bf1d417713cc6ead9e05c5a9b1c91dc34d1526` |
| 15 | `def` | [typeIIFactorRightInBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/declarations/typeiifactorrightinblock--903cdff3fc6fbd84570604c4.md) | 201 | `declaration-track:903cdff3fc6fbd84570604c47cd3b71c0f2e0d92f1b15a915fa83b15842b8224` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
