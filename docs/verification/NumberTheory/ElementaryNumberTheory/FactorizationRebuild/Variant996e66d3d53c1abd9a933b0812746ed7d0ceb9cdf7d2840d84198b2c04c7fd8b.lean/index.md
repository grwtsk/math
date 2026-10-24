# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.FactorizationRebuild.Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00c01ce2588ead079b6fd9dcf463dcd65b3cdca7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00c01ce2588ead079b6fd9dcf463dcd65b3cdca7`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.Factorization` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.NumberTheory.FundamentalTheorem` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_reconstructs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b.lean/declarations/factorization-reconstructs--e8bf21b43bbdfdf0c4a0dfaa.md) | 24 | `result-track:e8bf21b43bbdfdf0c4a0dfaa05483cca3c409fb9df586cd6d6bd1023cd3f7f6f` |
| 2 | `theorem` | [factorization_support_prime_checked](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b.lean/declarations/factorization-support-prime-checked--2828a86a54c654787e2f9f46.md) | 29 | `result-track:2828a86a54c654787e2f9f4662279bb7c00c05330b5c0bcd47320659c754d8e8` |
| 3 | `theorem` | [no_prime_support_of_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b.lean/declarations/no-prime-support-of-one--85ae6d7064fb9a8ee9c81f1f.md) | 36 | `result-track:85ae6d7064fb9a8ee9c81f1fc3e66667ee753c39e1bc7dd1a869f354ff62f797` |
| 4 | `theorem` | [exists_prime_support_of_gt_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/FactorizationRebuild/Variant996e66d3d53c1abd9a933b0812746ed7d0ceb9cdf7d2840d84198b2c04c7fd8b.lean/declarations/exists-prime-support-of-gt-one--9503f5aee65642b82edfb643.md) | 47 | `result-track:9503f5aee65642b82edfb6433172ff02b56a2d39fb3841a66c8a1df92d15041a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
