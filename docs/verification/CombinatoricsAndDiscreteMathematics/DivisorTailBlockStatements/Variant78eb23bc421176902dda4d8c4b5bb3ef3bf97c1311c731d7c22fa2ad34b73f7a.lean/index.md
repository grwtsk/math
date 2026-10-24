# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorTailBlockStatements.Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "270ddb499b2d049c74d1b4c76941b2749c7c7b70",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `270ddb499b2d049c74d1b4c76941b2749c7c7b70`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [divisor_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/declarations/divisor-sum--80585fb0b639b6625b0b724b.md) | 19 | `result-track:80585fb0b639b6625b0b724b714cd10b850ed4cb182b4d2dfdd8c4363a87ddf0` |
| 2 | `theorem` | [before_cutoff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/declarations/before-cutoff--0480228aeabc0931bba2c100.md) | 26 | `result-track:0480228aeabc0931bba2c1003998f8d96c004d3ff8ae5e60ea5ba331187ed91d` |
| 3 | `theorem` | [first_dyadic_block](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/declarations/first-dyadic-block--0ef17117494851360010c6e7.md) | 36 | `result-track:0ef17117494851360010c6e7a62b8641609ca5324b96cae8b677382d0de18c7c` |
| 4 | `theorem` | [corrected_endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/declarations/corrected-endpoint--fab85dfdfd58c17142b52220.md) | 63 | `result-track:fab85dfdfd58c17142b522208269d88c0d710ed5755e588d0cc732fffca3fa53` |
| 5 | `theorem` | [corrected_first_block_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/declarations/corrected-first-block-prefix--7307676164799529e9724dcf.md) | 70 | `result-track:7307676164799529e9724dcfecb91d277d7934dc37af9617be9c950af88fc7c7` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/declarations/example--ce08a14e144ebd0e481370a2.md) | 112 | `declaration-track:ce08a14e144ebd0e481370a271e2a9729da820f89e08f9d138942c2222f8b611` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/declarations/example--aec05ceae2b2e5cfdfe5197c.md) | 116 | `declaration-track:aec05ceae2b2e5cfdfe5197cf2d7c73eeef1db017edee51114b24c86f14ee5ef` |
| 8 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/declarations/example--396a7da150dfa5a0308b81eb.md) | 120 | `declaration-track:396a7da150dfa5a0308b81eb46a64f418be7c4a2a3e884410b6a13200ef469a3` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant78eb23bc421176902dda4d8c4b5bb3ef3bf97c1311c731d7c22fa2ad34b73f7a.lean/declarations/example--3fbecc4f58024a369bdaf1d2.md) | 124 | `declaration-track:3fbecc4f58024a369bdaf1d2485116359e15b0689fc15375cf44d6f3ffaf0942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
