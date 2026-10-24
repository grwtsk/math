# Verification target: GRWTSK.Algebra.Binomial.Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ef09cce556b73c5f6fb2164e5b11e133334b37f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ef09cce556b73c5f6fb2164e5b11e133334b37f`.

Source path: `GRWTSK/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Binomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.WellKnown` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binomialSeries](../../../../mathematics/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean/declarations/binomialseries--73dde0192ca25bb86536b19a.md) | 41 | `declaration-track:73dde0192ca25bb86536b19a9e3cacf7a0cdf1d44acf3967f778cf5fcbe94c27` |
| 2 | `lemma` | [binomialSeries_coeff](../../../../mathematics/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean/declarations/binomialseries-coeff--9db46304a8b140e5606fcfbd.md) | 45 | `result-track:9db46304a8b140e5606fcfbd5fc774df5e10453aa4634708783cf036d161c10d` |
| 3 | `lemma` | [binomialSeries_add](../../../../mathematics/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean/declarations/binomialseries-add--a8de71a5f9636a9d01eb3eac.md) | 50 | `result-track:a8de71a5f9636a9d01eb3eacb28551e0e7069210fbd15f8f2ca75a00f67a0af9` |
| 4 | `lemma` | [binomialSeries_nat](../../../../mathematics/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean/declarations/binomialseries-nat--72a10c71fb7b30fdf1a2cc10.md) | 59 | `result-track:72a10c71fb7b30fdf1a2cc10719717da55385b54c1ce9ea651081a62467c8c8b` |
| 5 | `lemma` | [rescale_neg_one_invOneSubPow](../../../../mathematics/Algebra/Binomial/Variantb35552b386684724595a5a045dd190767f3fb996e4e003b79d8c920578f19c3e.lean/declarations/rescale-neg-one-invonesubpow--5a8a36c35b8e4de5e891f5fe.md) | 79 | `result-track:5a8a36c35b8e4de5e891f5fe62330eec64f6e7e1c2870c1f98fe70a5ed8284f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
