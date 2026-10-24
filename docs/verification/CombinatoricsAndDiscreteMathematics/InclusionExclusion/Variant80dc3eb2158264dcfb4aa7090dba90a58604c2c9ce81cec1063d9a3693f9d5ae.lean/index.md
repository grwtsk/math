# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.InclusionExclusion.Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6df3e15edbf3524eacd37698e558c152b4bab98a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6df3e15edbf3524eacd37698e558c152b4bab98a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_indicator_biUnion_sub_indicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/declarations/prod-indicator-biunion-sub-indicator--7c60b3199dab95a90a5ac8b8.md) | 48 | `result-track:7c60b3199dab95a90a5ac8b8b8c9f7a13e6e17251b4cac878b9e4f5906edba3b` |
| 2 | `theorem` | [inclusion_exclusion_sum_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/declarations/inclusion-exclusion-sum-biunion--37162c7e5766d3a59013ef6c.md) | 61 | `result-track:37162c7e5766d3a59013ef6cfe8a9903104d102bbd25cf82c8bd50be64b9192d` |
| 3 | `theorem` | [inclusion_exclusion_card_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/declarations/inclusion-exclusion-card-biunion--8ad24b8f4f0679e2deafc653.md) | 99 | `result-track:8ad24b8f4f0679e2deafc6535288a654b86038fe48f2f243cf20f33d4bd55d05` |
| 4 | `theorem` | [inclusion_exclusion_sum_inf_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/declarations/inclusion-exclusion-sum-inf-compl--e601863fbb37dc3f2acd8f39.md) | 110 | `result-track:e601863fbb37dc3f2acd8f39a703c57300f79a9130e9f1df087ad4a532a45b95` |
| 5 | `theorem` | [inclusion_exclusion_card_inf_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InclusionExclusion/Variant80dc3eb2158264dcfb4aa7090dba90a58604c2c9ce81cec1063d9a3693f9d5ae.lean/declarations/inclusion-exclusion-card-inf-compl--bf5f1b919455f314de362230.md) | 127 | `result-track:bf5f1b919455f314de362230b2fc13c27b3dc0c3ec5aadff395aa9a92b228198` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
