# Verification target: GRWTSK.Analysis.Complex.FiniteLinearRemoval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c645d73e82ae986ce00f2b249ca17dfbe65f93cc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/FiniteLinearRemoval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c645d73e82ae986ce00f2b249ca17dfbe65f93cc`.

Source path: `GRWTSK/Analysis/Complex/FiniteLinearRemoval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/FiniteLinearRemoval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.NormalForm` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [product](../../../../mathematics/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/declarations/product--3fb7250e0fbbb668e24d4bb5.md) | 28 | `declaration-track:3fb7250e0fbbb668e24d4bb542caa1d72d7e8db2daece73974ccf9eb70ce1161` |
| 2 | `theorem` | [product_analytic](../../../../mathematics/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/declarations/product-analytic--d2a095ce6ecb0296e5e21ae3.md) | 31 | `result-track:d2a095ce6ecb0296e5e21ae3173312060bfce037c57b9117ebc84cc56ff984fd` |
| 3 | `theorem` | [product_nonzero](../../../../mathematics/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/declarations/product-nonzero--9a69f3133d9fc0b0fc18a26f.md) | 35 | `result-track:9a69f3133d9fc0b0fc18a26f014cab4d71810d3dc1e434bf5f8ba8b070eef45b` |
| 4 | `theorem` | [local_product](../../../../mathematics/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/declarations/local-product--c3fe9debd427157c79fac369.md) | 39 | `result-track:c3fe9debd427157c79fac36902c7fe696ac68ed3938e806ec02d41f740d0a294` |
| 5 | `theorem` | [exists_quotient](../../../../mathematics/Analysis/ComplexAnalysis/FiniteLinearRemoval.lean/declarations/exists-quotient--d9cd9dcde2421b69ade92482.md) | 57 | `result-track:d9cd9dcde2421b69ade92482c38bdcb46d37c607eff7a5b0049e1ceabf9ed4e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
