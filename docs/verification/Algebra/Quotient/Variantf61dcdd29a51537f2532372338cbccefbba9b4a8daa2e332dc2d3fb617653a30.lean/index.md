# Verification target: GRWTSK.Algebra.Quotient.Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d52f7be079b7488c7ea2c0e490fa16f17a2cf33",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean/index.md) · [Full source](../../../../mathematics/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d52f7be079b7488c7ea2c0e490fa16f17a2cf33`.

Source path: `GRWTSK/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Dvr` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegralRestrict` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Quotient` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Algebra.trace_quotient_mk](../../../../mathematics/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean/declarations/algebra-trace-quotient-mk--bb7c01d47ac55cd6207a2b92.md) | 44 | `result-track:bb7c01d47ac55cd6207a2b922b07f1934671825bc550763d20f47f2566ae2b91` |
| 2 | `def` | [equivQuotMaximalIdealOfIsLocalization](../../../../mathematics/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean/declarations/equivquotmaximalidealofislocalization--f072c6b212edcd30e3c1e062.md) | 75 | `declaration-track:f072c6b212edcd30e3c1e062d96808e2087567f631dfa858632bfa51b18b08ee` |
| 3 | `lemma` | [IsLocalization.AtPrime.map_eq_maximalIdeal](../../../../mathematics/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean/declarations/islocalization-atprime-map-eq-maximalideal--b68670ea327bd8bb81b0c469.md) | 99 | `result-track:b68670ea327bd8bb81b0c46937338e9aa0925b2e0fc82afd812a0978a9a7b625` |
| 4 | `lemma` | [comap_map_eq_map_of_isLocalization_algebraMapSubmonoid](../../../../mathematics/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean/declarations/comap-map-eq-map-of-islocalization-algebramapsubmonoid--b186f7731069292ce553a3c6.md) | 108 | `result-track:b186f7731069292ce553a3c6d13e13eeaa152f83ab57cd1240fa65eb61e0328f` |
| 5 | `def` | [quotMapEquivQuotMapMaximalIdealOfIsLocalization](../../../../mathematics/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean/declarations/quotmapequivquotmapmaximalidealofislocalization--ec0e0eea9d907633285bc39f.md) | 141 | `declaration-track:ec0e0eea9d907633285bc39f7aae2e9fe223614431d7fe0152c5a798f18e14f5` |
| 6 | `lemma` | [trace_quotient_eq_trace_localization_quotient](../../../../mathematics/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean/declarations/trace-quotient-eq-trace-localization-quotient--1ce1e320216e06de3c16bb07.md) | 176 | `result-track:1ce1e320216e06de3c16bb071cbeeaaf77dce42f2a2b7bf44f6aa07ae8922178` |
| 7 | `lemma` | [Algebra.trace_quotient_eq_of_isDedekindDomain](../../../../mathematics/Algebra/Quotient/Variantf61dcdd29a51537f2532372338cbccefbba9b4a8daa2e332dc2d3fb617653a30.lean/declarations/algebra-trace-quotient-eq-of-isdedekinddomain--e3fa57fbccc059016dc05cdd.md) | 197 | `result-track:e3fa57fbccc059016dc05cdd132a99494d125708bf0d797421a82ebd3fa89eed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
