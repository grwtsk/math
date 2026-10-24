# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SemanticRealization.Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af7b40521d0282deb04ca1dd27c465b37cf2dca0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af7b40521d0282deb04ca1dd27c465b37cf2dca0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.BanachCompletion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.FeatureMap` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Extend` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [KernelCompatibility](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/kernelcompatibility--f28224de93f4f57b46281d45.md) | 30 | `declaration-track:f28224de93f4f57b46281d4513e39297585d30d110b8c4f44ccc981fd42ac0aa` |
| 2 | `theorem` | [relation_maps_to_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/relation-maps-to-zero--bcb20b19908bab7a5c0ff677.md) | 51 | `result-track:bcb20b19908bab7a5c0ff6777b70c37cc20f4d3976ecc29c5e182f0aeab78ecd` |
| 3 | `def` | [banachToHilbert](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/banachtohilbert--75ea4acd7a4df46f5cc2f403.md) | 76 | `declaration-track:75ea4acd7a4df46f5cc2f4031aeb0283ec7c52a8e8786860d2feb1c469dc8a9c` |
| 4 | `theorem` | [banachToHilbert_raw](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/banachtohilbert-raw--f12dd872f8b08c30c28ecb82.md) | 86 | `result-track:f12dd872f8b08c30c28ecb822a896abc96f7350cd2a5a1d1dec0882f36df34cc` |
| 5 | `theorem` | [banachToHilbert_atom](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/banachtohilbert-atom--a1730b24106f64a1ef9b5b77.md) | 104 | `result-track:a1730b24106f64a1ef9b5b77b4b13ea3dd4959503d0446edacd20312c0832f66` |
| 6 | `theorem` | [norm_banachToHilbert_le](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/norm-banachtohilbert-le--a4dc1b7fc7f4ca60c69b1768.md) | 117 | `result-track:a4dc1b7fc7f4ca60c69b1768c51bc4131d9f0381fc5602d4837fef8078cbe1c9` |
| 7 | `theorem` | [banachToHilbert_unique](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/banachtohilbert-unique--69ff6561a1108a48b1157897.md) | 138 | `result-track:69ff6561a1108a48b11578974f6fb869585257b3b76d730063b137df28827b39` |
| 8 | `structure` | [CoerciveKernelCompatibility](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/coercivekernelcompatibility--1e9229d120e9f30902797b17.md) | 163 | `declaration-track:1e9229d120e9f30902797b17ef96f452cbac7a998047ce777e6c0347ed9405f3` |
| 9 | `theorem` | [CoerciveKernelCompatibility.lower_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/coercivekernelcompatibility-lower-bound--007fcacadbdac81fd0bd7a5b.md) | 176 | `result-track:007fcacadbdac81fd0bd7a5bfc85979da219ca2a18c0b856b014305805170fd9` |
| 10 | `theorem` | [CoerciveKernelCompatibility.injective](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/declarations/coercivekernelcompatibility-injective--4340eecb220dd4cf608732f5.md) | 191 | `result-track:4340eecb220dd4cf608732f5d842500405da8164937123dd55a0902180b63991` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
