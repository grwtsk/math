# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Affinity.Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cc13e3088740d472fce5f057beb86696c98f5a1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cc13e3088740d472fce5f057beb86696c98f5a1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.FeatureMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedRealAffinityValue](../../../../../mathematics/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/declarations/normalizedrealaffinityvalue--ce62789a3c3976ba8b0cba25.md) | 32 | `declaration-track:ce62789a3c3976ba8b0cba25e31dbd74c01be0b64553758f1874be5cb2401a6f` |
| 2 | `def` | [normalizedRealAffinity](../../../../../mathematics/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/declarations/normalizedrealaffinity--b9fb233c5a49d74b6d5a6fff.md) | 37 | `declaration-track:b9fb233c5a49d74b6d5a6fff7b96f19b6891b85f04fb0888cb10f41b45731fe8` |
| 3 | `theorem` | [normalizedRealAffinityValue_comm](../../../../../mathematics/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/declarations/normalizedrealaffinityvalue-comm--d4624811e3564aa498059ca1.md) | 43 | `result-track:d4624811e3564aa498059ca1633762631ffaf47be187c83fb6490e9f67f18876` |
| 4 | `theorem` | [normalizedRealAffinity_comm](../../../../../mathematics/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/declarations/normalizedrealaffinity-comm--8de6083702ea349891b14cb8.md) | 58 | `result-track:8de6083702ea349891b14cb855170985a808443311469bbb384bad24c69aa17a` |
| 5 | `theorem` | [abs_normalizedRealAffinityValue_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/declarations/abs-normalizedrealaffinityvalue-le-one--738e4a7b93f1831acf633b5c.md) | 72 | `result-track:738e4a7b93f1831acf633b5c490f941c8d7aa262d05d37d3a87dc680ef0d7f43` |
| 6 | `theorem` | [normalizedRealAffinity_mem_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Affinity/Variantd646f2764d103db33bfd96222a9fe9f1015caa6ca5b6768a9d596a7fc34ba100.lean/declarations/normalizedrealaffinity-mem-icc--aaae29ee59d0fbefadf6181b.md) | 81 | `result-track:aaae29ee59d0fbefadf6181b8777dfc6a1aa014ced627aca129c36e14bb4b11f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
