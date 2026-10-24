# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Completeness.Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14c9878b12365730eb87b1cd17ec9451b7ad43da",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14c9878b12365730eb87b1cd17ec9451b7ad43da`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Hardy` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlobalZeroCountCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/declarations/globalzerocountcertificate--58235d54dc6118bd3c802ab7.md) | 18 | `declaration-track:58235d54dc6118bd3c802ab7fdf013ec37b411a4f19e143479f032dd3354909b` |
| 2 | `structure` | [GlobalFiniteHeightZeroCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/declarations/globalfiniteheightzerocount--7801729b011793bc9b908441.md) | 47 | `declaration-track:7801729b011793bc9b90844128360a9ea88abfe43d510867e927a44b8188f469` |
| 3 | `structure` | [CertifiedZeroRegion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/declarations/certifiedzeroregion--c6a0533353020b0d6c196608.md) | 56 | `declaration-track:c6a0533353020b0d6c1966082d064e28423f02eaf2271dd135284f0fbc3bd588` |
| 4 | `structure` | [FiniteHeightCompletenessCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/declarations/finiteheightcompletenesscertificate--2b7e08dbd363dfa864062939.md) | 68 | `declaration-track:2b7e08dbd363dfa864062939f6d1a117dc8c0e48c8c1c2a6766b9c86ace761b6` |
| 5 | `theorem` | [finiteHeightCompleteness_accounts_for_allZeros](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/declarations/finiteheightcompleteness-accounts-for-allzeros--bfae541d568ade38fd81171b.md) | 104 | `result-track:bfae541d568ade38fd81171b2e7e37647a8c159433bbbd87b6943567d96e84e5` |
| 6 | `structure` | [FiniteHeightRHCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/declarations/finiteheightrhcertificate--6be089c5f894c827085ebf0d.md) | 125 | `declaration-track:6be089c5f894c827085ebf0d0d04fba04adb52c0c689b84e18c39c9c7331e685` |
| 7 | `theorem` | [finiteHeightRH_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant56ecab030fb8d7f9bec0a65d38c6e2d8d5d5b7267c30b0f6636dcc4842dc8009.lean/declarations/finiteheightrh-sound--9ec8c20c74abe74fc554f0f6.md) | 135 | `result-track:9ec8c20c74abe74fc554f0f6f141a07c407a94a6a88fb5140f8cc59e99d0a6fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
