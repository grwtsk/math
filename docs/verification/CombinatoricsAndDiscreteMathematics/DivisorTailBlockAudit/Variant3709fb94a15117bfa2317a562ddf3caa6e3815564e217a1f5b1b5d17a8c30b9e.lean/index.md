# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorTailBlockAudit.Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6ca4d582018a1b30abda712484711cdcc31bab5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6ca4d582018a1b30abda712484711cdcc31bab5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean.json)

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
| 1 | `theorem` | [divisor_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean/declarations/divisor-sum--a403bbc552786fc0f0991a18.md) | 11 | `result-track:a403bbc552786fc0f0991a1823d38ed5d36de155fa39125dcbdc5120639024e0` |
| 2 | `theorem` | [before_cutoff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean/declarations/before-cutoff--a1fa2b1697de07f9fdfa7080.md) | 18 | `result-track:a1fa2b1697de07f9fdfa7080f3e729d6e14f4264e087d515be5eee723dea047e` |
| 3 | `theorem` | [first_dyadic_block](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean/declarations/first-dyadic-block--3198d10875f245edc47991e5.md) | 28 | `result-track:3198d10875f245edc47991e527b5073a3886eefa198727a022a63f54b16e32eb` |
| 4 | `theorem` | [corrected_endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean/declarations/corrected-endpoint--5797105bae9f19ef0968e5f5.md) | 55 | `result-track:5797105bae9f19ef0968e5f58fc1908c21aac6a62de509dce84e92306530bdab` |
| 5 | `theorem` | [corrected_first_block_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorTailBlockAudit/Variant3709fb94a15117bfa2317a562ddf3caa6e3815564e217a1f5b1b5d17a8c30b9e.lean/declarations/corrected-first-block-prefix--05b33f3e41184b1222cf19da.md) | 62 | `result-track:05b33f3e41184b1222cf19da67bbc3cd8f80a14427557adfb576e184c3c0d583` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
