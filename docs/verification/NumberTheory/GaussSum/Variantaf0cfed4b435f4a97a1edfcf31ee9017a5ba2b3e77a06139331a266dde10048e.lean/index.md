# Verification target: GRWTSK.NumberTheory.GaussSum.Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29fa07a6854fe2305852abfb6b4f1609484559b0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29fa07a6854fe2305852abfb6b4f1609484559b0`.

Source path: `GRWTSK/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.GaussSum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadraticChar_two](../../../../mathematics/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/declarations/quadraticchar-two--e08e94e0495bea99d1f249c6.md) | 33 | `result-track:e08e94e0495bea99d1f249c67fb70abd5fa04e641b687bca6ea32d0e28fd0943` |
| 2 | `theorem` | [FiniteField.isSquare_two_iff](../../../../mathematics/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/declarations/finitefield-issquare-two-iff--1f8b9f162b2e8537a0a4addc.md) | 39 | `result-track:1f8b9f162b2e8537a0a4addc43fe3e5619fb99fd29aa4b70a14efa9203405180` |
| 3 | `theorem` | [quadraticChar_neg_two](../../../../mathematics/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/declarations/quadraticchar-neg-two--3c2aafd58d664434d1e1d1cc.md) | 52 | `result-track:3c2aafd58d664434d1e1d1cc2b2506fd1d26a8ff0faa66d3275b3f18a0e0d0be` |
| 4 | `theorem` | [FiniteField.isSquare_neg_two_iff](../../../../mathematics/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/declarations/finitefield-issquare-neg-two-iff--a8da2a889b1f4316ba234254.md) | 58 | `result-track:a8da2a889b1f4316ba2342549d8f07a26ff4f2a0e5e88169c37681cc599b22f7` |
| 5 | `theorem` | [quadraticChar_card_card](../../../../mathematics/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/declarations/quadraticchar-card-card--dea2b234fd5beb5bc96eb573.md) | 73 | `result-track:dea2b234fd5beb5bc96eb57346b170a095914338391cc54fe8e3985de50fd100` |
| 6 | `theorem` | [quadraticChar_odd_prime](../../../../mathematics/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/declarations/quadraticchar-odd-prime--e0932702ae872b4358a68473.md) | 89 | `result-track:e0932702ae872b4358a684736bf9b59c2e41b3ab509a5e26911ede35654317e2` |
| 7 | `theorem` | [FiniteField.isSquare_odd_prime_iff](../../../../mathematics/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/declarations/finitefield-issquare-odd-prime-iff--de5e743610d4685027ac117f.md) | 99 | `result-track:de5e743610d4685027ac117fb115b85a69a522a7df20c39c6e6a69ddaa454a49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
