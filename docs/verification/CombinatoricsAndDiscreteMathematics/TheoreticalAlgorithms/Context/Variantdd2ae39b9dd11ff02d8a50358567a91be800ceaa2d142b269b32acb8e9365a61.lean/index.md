# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Context.Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4da27ca631e421bef3dabfe110968215f68e1b1a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4da27ca631e421bef3dabfe110968215f68e1b1a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Provenance` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ContextField](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/contextfield--eb6427c0867ee969d7ee23c0.md) | 7 | `declaration-track:eb6427c0867ee969d7ee23c0150c3aac1ba0eca017f49255d79067c6cd1289a5` |
| 2 | `structure` | [Context](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/context--7af78db0194c7be604e8c796.md) | 17 | `declaration-track:7af78db0194c7be604e8c79641aa1b44ba65d57bd1a5d4427e997612528742c8` |
| 3 | `def` | [OptionRefines](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/optionrefines--9173dcfca2b7df54c6e27bf0.md) | 29 | `declaration-track:9173dcfca2b7df54c6e27bf0de7700ed50456770ff89f459fd618817e85d6c66` |
| 4 | `theorem` | [OptionRefines.refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/optionrefines-refl--e0feeb27edf7ea6136323cd5.md) | 32 | `result-track:e0feeb27edf7ea6136323cd5a1adbade9cd10a8cbe838df64d2cf16579fca37f` |
| 5 | `theorem` | [OptionRefines.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/optionrefines-trans--47c5d2e404746a5f47e69a44.md) | 39 | `result-track:47c5d2e404746a5f47e69a447e1ae80440ae31c0bac0a9e4ed7be73f77c308be` |
| 6 | `def` | [Context.Refines](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/context-refines--57ea3ab5db1014e292962742.md) | 48 | `declaration-track:57ea3ab5db1014e292962742caa97a386f718027c30825c8a07c50761e5e0957` |
| 7 | `theorem` | [Context.refines_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/context-refines-refl--ee354a23455fc8b1b40420a6.md) | 58 | `result-track:ee354a23455fc8b1b40420a6f76fbf41d8319852a863ec5a15f04632a31495f3` |
| 8 | `theorem` | [Context.Refines.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/context-refines-trans--38003d4a6f6c23a715772a7c.md) | 69 | `result-track:38003d4a6f6c23a715772a7ccf0b4a1088ecdd255b105e99b6965af83c931d35` |
| 9 | `structure` | [ContextTransportCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/contexttransportcertificate--88bffa7f0ba6d529ed1351b8.md) | 90 | `declaration-track:88bffa7f0ba6d529ed1351b858a0fdbb93de468d2148d84330aaa8bb5c437afd` |
| 10 | `structure` | [ContextSufficiencyCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Context/Variantdd2ae39b9dd11ff02d8a50358567a91be800ceaa2d142b269b32acb8e9365a61.lean/declarations/contextsufficiencycertificate--4984e1a44978a5a3f5ac45ea.md) | 97 | `declaration-track:4984e1a44978a5a3f5ac45ea7c10d879c4ae9d63ec8c98f05b2200943c79eeaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
