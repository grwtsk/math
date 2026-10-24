# Verification target: GRWTSK.Algebra.Binomial.Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23fc112d4ac1340aa76afee26a948dd4733216a8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23fc112d4ac1340aa76afee26a948dd4733216a8`.

Source path: `GRWTSK/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Binomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.WellKnown` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binomialSeries](../../../../mathematics/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean/declarations/binomialseries--3d6010fa3d7dcab8dacaeeff.md) | 49 | `declaration-track:3d6010fa3d7dcab8dacaeeff476ccb92558a86e2c7d5c57af6193cceb144c15b` |
| 2 | `lemma` | [binomialSeries_coeff](../../../../mathematics/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean/declarations/binomialseries-coeff--d512456f46830bd68784c62b.md) | 53 | `result-track:d512456f46830bd68784c62b5f422ca7f315d294fb6210055bc631cbac470ea4` |
| 3 | `lemma` | [binomialSeries_add](../../../../mathematics/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean/declarations/binomialseries-add--ec74fbfa193ea8b152c2aa5f.md) | 58 | `result-track:ec74fbfa193ea8b152c2aa5f1b9d0848b9b10aca2f57d3618f8edc9a933ff245` |
| 4 | `lemma` | [binomialSeries_nat](../../../../mathematics/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean/declarations/binomialseries-nat--84ca79f8913f47d464dbd9ac.md) | 67 | `result-track:84ca79f8913f47d464dbd9acfee902334a272395a169cea081109de733b92fa8` |
| 5 | `lemma` | [rescale_neg_one_invOneSubPow](../../../../mathematics/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean/declarations/rescale-neg-one-invonesubpow--2d8bdb96fdee8d3dcbdffb8f.md) | 87 | `result-track:2d8bdb96fdee8d3dcbdffb8fc9afef4388853ded66a7060e1217ecb2104f379c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
