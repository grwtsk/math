# Verification target: GRWTSK.Algebra.NoZeroDivisors.Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7860dae3b1a908537403e2589de369fe1ebd3143",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/index.md) · [Full source](../../../../mathematics/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7860dae3b1a908537403e2589de369fe1ebd3143`.

Source path: `GRWTSK/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.WellFounded` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.LexOrder` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_nonZeroDivisors_of_constantCoeff](../../../../mathematics/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/declarations/mem-nonzerodivisors-of-constantcoeff--1bc3f791de92098ef5b56fb3.md) | 53 | `result-track:1bc3f791de92098ef5b56fb30adb194ed6918cd40c11bea5b70d2c539b3efd75` |
| 2 | `lemma` | [monomial_mem_nonzeroDivisors](../../../../mathematics/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/declarations/monomial-mem-nonzerodivisors--401ad03078355fa1fce03dba.md) | 73 | `result-track:401ad03078355fa1fce03dba49414f61c3d73f065f3b2084ecaec886d5f3354b` |
| 3 | `lemma` | [X_mem_nonzeroDivisors](../../../../mathematics/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/declarations/x-mem-nonzerodivisors--019ead8fbba3422cfbf065af.md) | 86 | `result-track:019ead8fbba3422cfbf065af9dd629d59639f0e51f42ee98aad087a5e2ecee88` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/declarations/instance--3b5cb4d35d1503ce3f726a87.md) | 95 | `declaration-track:3b5cb4d35d1503ce3f726a879905642080f9e32a49d256497881acfe6b7a0229` |
| 5 | `theorem` | [weightedOrder_mul](../../../../mathematics/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/declarations/weightedorder-mul--39fa43585b860c71d5a08a85.md) | 103 | `result-track:39fa43585b860c71d5a08a85abc50f63f0fb0203fb8e7b940234c21236d0d488` |
| 6 | `theorem` | [order_mul](../../../../mathematics/Algebra/NoZeroDivisors/Variantaadb439259cac95db225003189dae5d72e4723057dfc81f4f2e54812fac6af57.lean/declarations/order-mul--5a0c63d18a5e57b3841c9c4d.md) | 133 | `result-track:5a0c63d18a5e57b3841c9c4d21dcc2eba968d9840ae67038f1bc6b82684646c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
