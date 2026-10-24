# Verification target: GRWTSK.Analysis.ComplexAnalysis.QuotientOrder.Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33b0f8add5bb7cc4a109d290f27e75ca07c998bb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33b0f8add5bb7cc4a109d290f27e75ca07c998bb`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denominator_order](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/declarations/denominator-order--78d46701adca02cd30052744.md) | 28 | `result-track:78d46701adca02cd300527443c10d2122dd36c0c744086a543d8b480ae8d1daa` |
| 2 | `theorem` | [reduced_quotient_meromorphic_order](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/declarations/reduced-quotient-meromorphic-order--b07604f57b947c816a5dd1f1.md) | 38 | `result-track:b07604f57b947c816a5dd1f18dc5b7f93cfb28f0d4bb9a73d9a36809fb55008a` |
| 3 | `theorem` | [reduced_quotient_analytic_and_order](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/declarations/reduced-quotient-analytic-and-order--e87808f55b0910871d974340.md) | 52 | `result-track:e87808f55b0910871d974340db3cf282c478e54fbabefd86d19444d9d02d53ea` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/declarations/example--30f2a332576beac3d4ee115c.md) | 74 | `declaration-track:30f2a332576beac3d4ee115cc627f8fd1271de73a835ae161e8bb51a8cf3a7fb` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/declarations/example--5ac70aedb165bc4563d28dfc.md) | 77 | `declaration-track:5ac70aedb165bc4563d28dfc373200b090adf43e2cf8ee6e0daac04e6afdec9e` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/QuotientOrder/Variante18dcc375f401933651151ef37dee41c36ecc242e5a52606472f3b24bfd28347.lean/declarations/example--7740ee84b0ae89b31095cbd7.md) | 84 | `declaration-track:7740ee84b0ae89b31095cbd7f881571aa7791955b67468c5bd51b39a337ca190` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
