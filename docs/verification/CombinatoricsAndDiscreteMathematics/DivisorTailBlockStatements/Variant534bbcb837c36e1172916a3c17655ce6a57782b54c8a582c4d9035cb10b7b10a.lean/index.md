# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorTailBlockStatements.Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78bc9a480a910de54b5f12a8e79316dc5654b100",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78bc9a480a910de54b5f12a8e79316dc5654b100`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [divisor_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/declarations/divisor-sum--c669605e55bc952eb6e60aed.md) | 11 | `result-track:c669605e55bc952eb6e60aedea535319336cbaac8329c58152d08f1b763ca7a3` |
| 2 | `theorem` | [before_cutoff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/declarations/before-cutoff--559a92ce4b974ad08c5ecac1.md) | 18 | `result-track:559a92ce4b974ad08c5ecac10104a299fc3d6acac6484e4c9a1dd4bb74d57045` |
| 3 | `theorem` | [first_dyadic_block](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/declarations/first-dyadic-block--1c97e2c135f652dbbcc85d13.md) | 28 | `result-track:1c97e2c135f652dbbcc85d1393578ea311d0195adeb5f0ee27c750bdd760366e` |
| 4 | `theorem` | [corrected_endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/declarations/corrected-endpoint--7f0692601ab7aadbc90ef9d3.md) | 55 | `result-track:7f0692601ab7aadbc90ef9d360e55093f75c451748dc384efd94c0f7953b5acd` |
| 5 | `theorem` | [corrected_first_block_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/declarations/corrected-first-block-prefix--5410660d4c102781235a51d6.md) | 62 | `result-track:5410660d4c102781235a51d633573a5948d00ae1edde0958db847f2306b7d6f3` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/declarations/example--5055ad0ba19e512ed1a77f12.md) | 104 | `declaration-track:5055ad0ba19e512ed1a77f120756e3c559ef999d0ad45cfe5d2553057630d6b6` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/declarations/example--a296e668b461dc4b656c3847.md) | 108 | `declaration-track:a296e668b461dc4b656c3847e70dcd679bc2840c07639450f7fab5a10a5a88a4` |
| 8 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/declarations/example--c158f0e20f39ca3e80b9ba95.md) | 112 | `declaration-track:c158f0e20f39ca3e80b9ba958eeb76784dc64b6476445f7f8c996fcb7c9f01a9` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockStatements/Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a.lean/declarations/example--84ad981c671780134d13bf48.md) | 116 | `declaration-track:84ad981c671780134d13bf48a491a7f520d321f199813bc8f8feeb1f449fde2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
