# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Bertrand.Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83470336c63365e253d9781860928653afcb51f2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83470336c63365e253d9781860928653afcb51f2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Factorization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Primorial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Deriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [real_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean/declarations/real-main-inequality--9087fdb0beee4345d844e1a9.md) | 58 | `result-track:9087fdb0beee4345d844e1a958ae3c296a1181743a6f0960fca3ce98aea8898c` |
| 2 | `theorem` | [bertrand_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean/declarations/bertrand-main-inequality--c19b9f3b9e2e16e14e547c4d.md) | 120 | `result-track:c19b9f3b9e2e16e14e547c4d782bf46ffa08a3b6c701c0c1dbe7356dc12082d4` |
| 3 | `theorem` | [centralBinom_factorization_small](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean/declarations/centralbinom-factorization-small--63a03cf3e7ca11fb98f4f06c.md) | 135 | `result-track:63a03cf3e7ca11fb98f4f06c86c621d7f4564853873370a5e3b6055b224d4e01` |
| 4 | `theorem` | [centralBinom_le_of_no_bertrand_prime](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean/declarations/centralbinom-le-of-no-bertrand-prime--b5481ea18c41cf43c57e2e79.md) | 158 | `result-track:b5481ea18c41cf43c57e2e798f353332fb3ff1a462c0a9aa20b2eb0dd0674d12` |
| 5 | `theorem` | [exists_prime_lt_and_le_two_mul_eventually](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean/declarations/exists-prime-lt-and-le-two-mul-eventually--deebb563758de7eab90dfc06.md) | 191 | `result-track:deebb563758de7eab90dfc066e4cde126b842c27886ae8cd8f37fe39feef1c50` |
| 6 | `theorem` | [exists_prime_lt_and_le_two_mul_succ](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean/declarations/exists-prime-lt-and-le-two-mul-succ--c5569aa7eaa29a63d928b3c7.md) | 209 | `result-track:c5569aa7eaa29a63d928b3c716ba454c3134883d4e41981eae33e5f9e2eff26d` |
| 7 | `theorem` | [exists_prime_lt_and_le_two_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variant01babbe2a148e0e4977271b9549604b96b072674a62196243f713e845648032e.lean/declarations/exists-prime-lt-and-le-two-mul--4f7bb972af96afdc03cf0056.md) | 219 | `result-track:4f7bb972af96afdc03cf0056aba7ff30c4d7a04f81eee449360ea0d43b0ed161` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
