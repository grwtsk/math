# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Quotient.Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f4193e55fe8cb1a48ef176e214cf43794b78400",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f4193e55fe8cb1a48ef176e214cf43794b78400`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Quotient/Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Quotient.finChoiceAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc.lean/declarations/quotient-finchoiceaux--f842c200bbdcb35d8910bed0.md) | 28 | `declaration-track:f842c200bbdcb35d8910bed0a864af5613bf3b104b94128571b5fa4ddf00774b` |
| 2 | `theorem` | [Quotient.finChoiceAux_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc.lean/declarations/quotient-finchoiceaux-eq--8c703e59b4c62d67b9a17803.md) | 44 | `result-track:8c703e59b4c62d67b9a17803acccfd457dfa6419cf89e9ad4596b0a0db83f4b6` |
| 3 | `def` | [Quotient.finChoice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc.lean/declarations/quotient-finchoice--7e78ac0abb0f011dec309c06.md) | 59 | `declaration-track:7e78ac0abb0f011dec309c06a18f5cc92d44909db04ae161ad5682ef5c995467` |
| 4 | `theorem` | [Quotient.finChoice_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quotient/Variantb68f7c68269d5a43ac5c8a44fbd8e4a62cdf20ff3181c7bab06da834f1b5d6bc.lean/declarations/quotient-finchoice-eq--465072a42ebb20f118cc9b9d.md) | 77 | `result-track:465072a42ebb20f118cc9b9d1392bc8ab106e3436654e09f94883a8bf1c8bb2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
