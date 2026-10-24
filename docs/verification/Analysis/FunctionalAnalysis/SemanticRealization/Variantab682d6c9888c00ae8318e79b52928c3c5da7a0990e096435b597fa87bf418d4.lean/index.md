# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SemanticRealization.Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4384d3cd3a595c59c5f987a8b24fc22559a4f69f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4384d3cd3a595c59c5f987a8b24fc22559a4f69f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.BanachCompletion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.FeatureMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Extend` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [KernelCompatibility](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/kernelcompatibility--caca993064e28a371e97eee2.md) | 38 | `declaration-track:caca993064e28a371e97eee2f0c022a072b5891421b587c5af0a8043718ebc1d` |
| 2 | `theorem` | [relation_maps_to_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/relation-maps-to-zero--4cd3b0b6e64ccfbd690e01e0.md) | 59 | `result-track:4cd3b0b6e64ccfbd690e01e0ae2ec79d2a82ea3d8207a67efa7bb09572beca24` |
| 3 | `def` | [banachToHilbert](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/banachtohilbert--6ffdb42cd69b50e9e9a52306.md) | 84 | `declaration-track:6ffdb42cd69b50e9e9a523067253cc7acdd1c7110e533fedfa102ffa4ca7386e` |
| 4 | `theorem` | [banachToHilbert_raw](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/banachtohilbert-raw--60a5cde367a2a587f70f2271.md) | 94 | `result-track:60a5cde367a2a587f70f2271101fae819d62a1cb8c243156a918ca9e9cd866fc` |
| 5 | `theorem` | [banachToHilbert_atom](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/banachtohilbert-atom--9f121568ef6f726a5df85272.md) | 112 | `result-track:9f121568ef6f726a5df852729417f352b2c96130fe36184a66d14a050fa6a067` |
| 6 | `theorem` | [norm_banachToHilbert_le](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/norm-banachtohilbert-le--43f50965430fbc632da37577.md) | 125 | `result-track:43f50965430fbc632da37577b00f8afed11a1b138ea73c702e64d50d0657f78b` |
| 7 | `theorem` | [banachToHilbert_unique](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/banachtohilbert-unique--a9b04357b2c39a0ef8329141.md) | 146 | `result-track:a9b04357b2c39a0ef832914196507979662a9168088b1b7b616807515bc679e4` |
| 8 | `structure` | [CoerciveKernelCompatibility](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/coercivekernelcompatibility--4588ee090bc3f76d1a4d6fcd.md) | 171 | `declaration-track:4588ee090bc3f76d1a4d6fcd8b0c1cab176b4c006fa2ae56f9c33613cdbb7b41` |
| 9 | `theorem` | [CoerciveKernelCompatibility.lower_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/coercivekernelcompatibility-lower-bound--9e2260a3589d53ed3fbbcc54.md) | 184 | `result-track:9e2260a3589d53ed3fbbcc54093150ec77de07996186d3e08ad7f2a5c0efbb8c` |
| 10 | `theorem` | [CoerciveKernelCompatibility.injective](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/declarations/coercivekernelcompatibility-injective--d7929cc60efafcdec5fbbfa1.md) | 199 | `result-track:d7929cc60efafcdec5fbbfa1b07c93dce97219e3c80076135658cdc4558d5dba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
