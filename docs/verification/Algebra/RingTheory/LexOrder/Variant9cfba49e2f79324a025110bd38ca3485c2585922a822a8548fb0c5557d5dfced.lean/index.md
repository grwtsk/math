# Verification target: GRWTSK.Algebra.RingTheory.LexOrder.Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fae18449e08927ffe3ace32c4f47c600761b14dc",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fae18449e08927ffe3ace32c4f47c600761b14dc`.

Source path: `GRWTSK/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lexOrder](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/lexorder--14ac194f8efafd869400cccf.md) | 41 | `declaration-track:14ac194f8efafd869400cccf5de0014d71ae06d6e030a755c73535491f49a1b9` |
| 2 | `theorem` | [lexOrder_def_of_ne_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/lexorder-def-of-ne-zero--f8018ba58f060c574b5d3949.md) | 50 | `result-track:f8018ba58f060c574b5d39496d584f313ca9c6aa8a7aa422a58628878c23bc46` |
| 3 | `theorem` | [lexOrder_eq_top_iff_eq_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/lexorder-eq-top-iff-eq-zero--252bd26c06b088bd39fb0489.md) | 61 | `result-track:252bd26c06b088bd39fb0489c727a6521f5136f5b014da757e2933a8403f61aa` |
| 4 | `theorem` | [lexOrder_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/lexorder-zero--5a0c5963ccdecbdb5da9bfad.md) | 68 | `result-track:5a0c5963ccdecbdb5da9bfad47af1417fb7d0cccc1e8b2cffcd5890a79fdc427` |
| 5 | `theorem` | [exists_finsupp_eq_lexOrder_of_ne_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/exists-finsupp-eq-lexorder-of-ne-zero--5340e70f377bc3695463a58c.md) | 72 | `result-track:5340e70f377bc3695463a58c0df255e71f57953bd6e9c69a56ed4d6d50a51c5c` |
| 6 | `theorem` | [coeff_ne_zero_of_lexOrder](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/coeff-ne-zero-of-lexorder--cdf5ff201034ee2092edf10d.md) | 78 | `result-track:cdf5ff201034ee2092edf10d78535b5bcf7f29182cb085a145711a6d8d9ed3da` |
| 7 | `theorem` | [coeff_eq_zero_of_lt_lexOrder](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/coeff-eq-zero-of-lt-lexorder--112bab84173b544491ebbb5d.md) | 91 | `result-track:112bab84173b544491ebbb5d19d08fb15564a46483a3ec010c98e8c2e3135066` |
| 8 | `theorem` | [lexOrder_le_of_coeff_ne_zero](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/lexorder-le-of-coeff-ne-zero--15a831b0ae15b6ccbfe03ecf.md) | 100 | `result-track:15a831b0ae15b6ccbfe03ecf722017012c664b2dfa801687bdd424a0d9858429` |
| 9 | `theorem` | [le_lexOrder_iff](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/le-lexorder-iff--20094bc784d4191651f333e8.md) | 106 | `result-track:20094bc784d4191651f333e8294680774b560b60cfde868ea13eff49a529c37b` |
| 10 | `theorem` | [min_lexOrder_le](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/min-lexorder-le--e70724784b1675702a2985b3.md) | 122 | `result-track:e70724784b1675702a2985b3b78c21f719dccf4533f87a9bd020751e3c819984` |
| 11 | `theorem` | [coeff_mul_of_add_lexOrder](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/coeff-mul-of-add-lexorder--06e4a4cd5f73934b656df5a8.md) | 129 | `result-track:06e4a4cd5f73934b656df5a87181d6f5f1c420ee1203cea6adc8d9517bddeb87` |
| 12 | `theorem` | [le_lexOrder_mul](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/le-lexorder-mul--cac928e2628e5eba6e289f60.md) | 144 | `result-track:cac928e2628e5eba6e289f60a7b3eaff8657db1519a39a851a1f2067db5cf299` |
| 13 | `theorem` | [lexOrder_mul](../../../../../mathematics/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/declarations/lexorder-mul--d58c532ae405c898ead10ea0.md) | 165 | `result-track:d58c532ae405c898ead10ea066705f0ad668e49cbac202921edefb6ead273ea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
