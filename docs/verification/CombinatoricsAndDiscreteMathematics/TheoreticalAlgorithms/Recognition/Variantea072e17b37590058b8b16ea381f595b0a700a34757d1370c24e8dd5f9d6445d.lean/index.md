# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Recognition.Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e048b2a24fd587da6db8de933af597d9e202d8ce",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e048b2a24fd587da6db8de933af597d9e202d8ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Evidence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Capability.Principal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HumanRecognitionReceipt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean/declarations/humanrecognitionreceipt--64ea1c45a5e9ed2366d33769.md) | 24 | `declaration-track:64ea1c45a5e9ed2366d3376936445c3532a7f66f366c9c1be93e8314ae7730fd` |
| 2 | `def` | [HumanRecognitionReceipt.impliesTrust](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean/declarations/humanrecognitionreceipt-impliestrust--b3375096c5c97117a4c9c066.md) | 33 | `declaration-track:b3375096c5c97117a4c9c066bf3bb064c61bc0c6004a6a3209de3db4e36d8a35` |
| 3 | `def` | [HumanRecognitionReceipt.evidenceKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean/declarations/humanrecognitionreceipt-evidencekind--1e9dd74488b8397a15819683.md) | 37 | `declaration-track:1e9dd74488b8397a158196833d94cd69ea44c91f80ceff742b7faf13122198aa` |
| 4 | `theorem` | [trust_not_implied_by_recognition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean/declarations/trust-not-implied-by-recognition--741c3700ed6bf8832e6092a9.md) | 42 | `result-track:741c3700ed6bf8832e6092a95fd843b40d94d038bab0d3d1efba798b82b899e9` |
| 5 | `theorem` | [recognition_has_no_theorem_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Recognition/Variantea072e17b37590058b8b16ea381f595b0a700a34757d1370c24e8dd5f9d6445d.lean/declarations/recognition-has-no-theorem-authority--15da0f95ec589802eebcad38.md) | 47 | `result-track:15da0f95ec589802eebcad3864611d0ba0f87e72c88e76f7f6278fb6f0d1dc03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
