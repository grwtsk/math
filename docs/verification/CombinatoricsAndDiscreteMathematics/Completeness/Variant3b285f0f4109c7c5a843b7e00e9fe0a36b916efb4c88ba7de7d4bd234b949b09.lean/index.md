# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Completeness.Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fc122b7e19b5085b47ce811896ed08904a5edd2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fc122b7e19b5085b47ce811896ed08904a5edd2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Hardy` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlobalZeroCountCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/declarations/globalzerocountcertificate--e161384e9ef3a5524aebf4f7.md) | 26 | `declaration-track:e161384e9ef3a5524aebf4f7e0efec1e57e9f74dd2406ea86cce67dbb301a745` |
| 2 | `structure` | [GlobalFiniteHeightZeroCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/declarations/globalfiniteheightzerocount--b46e7a2ea3711f9296909a30.md) | 55 | `declaration-track:b46e7a2ea3711f9296909a3045319a44c7f7c7ac27326b5bd9775d6c73838f80` |
| 3 | `structure` | [CertifiedZeroRegion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/declarations/certifiedzeroregion--d28bad4922868e6cf4613619.md) | 64 | `declaration-track:d28bad4922868e6cf46136199150268d4eece0373fce6f5b347b9202a7d11d9c` |
| 4 | `structure` | [FiniteHeightCompletenessCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/declarations/finiteheightcompletenesscertificate--a68a35fdc02480248f08fe11.md) | 76 | `declaration-track:a68a35fdc02480248f08fe112401ae85ebc8878cca7fcf46d9cd12c66d02cc8a` |
| 5 | `theorem` | [finiteHeightCompleteness_accounts_for_allZeros](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/declarations/finiteheightcompleteness-accounts-for-allzeros--11e05c551ad5028099222f50.md) | 112 | `result-track:11e05c551ad5028099222f5099a1231d7435b7943b45011e9245ba11e52f8609` |
| 6 | `structure` | [FiniteHeightRHCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/declarations/finiteheightrhcertificate--b24433a1d4d8f7f0cea40bbd.md) | 133 | `declaration-track:b24433a1d4d8f7f0cea40bbd36674a76b6351389410ed46f14ebef9286d5dcab` |
| 7 | `theorem` | [finiteHeightRH_sound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Completeness/Variant3b285f0f4109c7c5a843b7e00e9fe0a36b916efb4c88ba7de7d4bd234b949b09.lean/declarations/finiteheightrh-sound--ad4daa43d8af8738f0394a4c.md) | 143 | `result-track:ad4daa43d8af8738f0394a4cf094cabc23b0a8e824d58b57d14a43100ee753c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
