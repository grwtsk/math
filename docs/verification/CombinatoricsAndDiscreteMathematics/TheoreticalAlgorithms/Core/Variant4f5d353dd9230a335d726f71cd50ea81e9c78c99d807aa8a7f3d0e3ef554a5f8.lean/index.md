# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d933cfeea0b4e67996148a2cf6e657a99ceae89",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d933cfeea0b4e67996148a2cf6e657a99ceae89`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.AffineTopos.Site` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/affinecoefficient--d511a197b6de6d647d93a431.md) | 15 | `declaration-track:d511a197b6de6d647d93a431a7bc764ee2de10dfe28f37c3adac5087bd15a0fc` |
| 2 | `structure` | [AffineLocalData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/affinelocaldata--11313d66a8523ca4fda8bad2.md) | 19 | `declaration-track:11313d66a8523ca4fda8bad272420baf33713c2dcf903b15fa2208312eeba2d4` |
| 3 | `structure` | [ReductionPayload](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/reductionpayload--a61d658b5b3067388a9e7f76.md) | 24 | `declaration-track:a61d658b5b3067388a9e7f76d1fda47594d26617fd313b06abf4dcf210be6c83` |
| 4 | `structure` | [PascalReduction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/pascalreduction--3b387437be8489c128423f4e.md) | 30 | `declaration-track:3b387437be8489c128423f4ed7696282cf702b564a9e0cd133b6158bfd397501` |
| 5 | `inductive` | [GeneralizedPascalTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/generalizedpascaltree--780bac7a4dfc78929c8a6570.md) | 36 | `declaration-track:780bac7a4dfc78929c8a6570d8c01a66ea658f88ed40758133b7cd73a54b47e0` |
| 6 | `def` | [combineReductions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/combinereductions--81f5167f884ea664e31219b7.md) | 40 | `declaration-track:81f5167f884ea664e31219b7ddd21b5330b1bcf24736dbd77c51db635fd7a8d2` |
| 7 | `def` | [leafLocalData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/leaflocaldata--2468b460315b92d10891416a.md) | 53 | `declaration-track:2468b460315b92d10891416abff9a6b720eb7e0e15ded1b89db731b4e7bdd605` |
| 8 | `def` | [reduce](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/reduce--76600d5671c38b81c18e78d2.md) | 58 | `declaration-track:76600d5671c38b81c18e78d2ab13443e2be92939b7efe7fc03f022dc411cea83` |
| 9 | `theorem` | [pascalTree_reducer_wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/pascaltree-reducer-wellfounded--26012964af01949b89e52384.md) | 68 | `result-track:26012964af01949b89e52384ba284cfcad170f1852e55b292a1867f9d7703b52` |
| 10 | `theorem` | [pascalTree_reducer_affine_local](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant4f5d353dd9230a335d726f71cd50ea81e9c78c99d807aa8a7f3d0e3ef554a5f8.lean/declarations/pascaltree-reducer-affine-local--34ebaccccb22b5a6b2b027fd.md) | 73 | `result-track:34ebaccccb22b5a6b2b027fdf8f7475b4f0019676d6cd5c282d87eed794ed337` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
