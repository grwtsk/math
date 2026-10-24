# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62ebb70a47baf98e0eee78e9614b74bcd3729d6b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62ebb70a47baf98e0eee78e9614b74bcd3729d6b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean.json)

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
| 1 | `theorem` | [quotient_span_eq_top_iff_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/declarations/quotient-span-eq-top-iff-span-eq-top--efc0ccf5387a902ee644c9e9.md) | 44 | `result-track:efc0ccf5387a902ee644c9e995c2a10578a24e31175beb9163f2ea228386c433` |
| 2 | `theorem` | [finrank_quotient_map](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/declarations/finrank-quotient-map--f717ce504516b935d1c9267d.md) | 73 | `result-track:f717ce504516b935d1c9267d7b92fff4e538fbd6a9d64a471e7d65732eb782d9` |
| 3 | `def` | [basisQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/declarations/basisquotient--1e6b49fb57a55e2368183a66.md) | 92 | `declaration-track:1e6b49fb57a55e2368183a66e736dc66532905631e131d2e2bdbcfc1a492f2af` |
| 4 | `lemma` | [basisQuotient_apply](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/declarations/basisquotient-apply--03d7b4ce693c17953998727a.md) | 99 | `result-track:03d7b4ce693c17953998727a42686a77e2bb8dc6d7a2bd84424afbcec1e0ac24` |
| 5 | `lemma` | [basisQuotient_repr](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/declarations/basisquotient-repr--125fb6240427c06e31099456.md) | 104 | `result-track:125fb6240427c06e310994561238e7e28cb69dd44e25395654e001eb45744372` |
| 6 | `lemma` | [exists_maximalIdeal_pow_le_of_isArtinianRing_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/declarations/exists-maximalideal-pow-le-of-isartinianring-quotient--274d77c5caca202c426924fb.md) | 118 | `result-track:274d77c5caca202c426924fb9d4a0645d761354296e1bf6903518004ceb665fa` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/declarations/instance--78e9f395a8dacd5a304b873c.md) | 134 | `declaration-track:78e9f395a8dacd5a304b873c8a46f08f0a0bfc4197bedcc5ed55067b054dcd49` |
| 8 | `lemma` | [finite_quotient_iff](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant63eeb1c010c3005c0b095419dea0c199ad855e136d029e5709a8594f26544690.lean/declarations/finite-quotient-iff--53c6b97f24c358f1a7f3fc7f.md) | 139 | `result-track:53c6b97f24c358f1a7f3fc7ff0a62cb71c93e73c358b1a5cf3f9901971967742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
