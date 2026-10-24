# Verification target: GRWTSK.Algebra.DiscreteValuationRing.Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "583d1a6ba66a2cb2b7ceaea2963a895c1c0a27c1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/index.md) · [Full source](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `583d1a6ba66a2cb2b7ceaea2963a895c1c0a27c1`.

Source path: `GRWTSK/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Domain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.MulCoeff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succNthValUnits](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/declarations/succnthvalunits--17ddf81751523d399224f1d3.md) | 50 | `declaration-track:17ddf81751523d399224f1d3fd6146b278a2c8f627ad6ddf86304814cf49abb0` |
| 2 | `def` | [inverseCoeff](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/declarations/inversecoeff--f1d96a818ec9fa71f05e0462.md) | 58 | `declaration-track:f1d96a818ec9fa71f05e04623e41cf355f04d929121cb04c8882f382d4b99687` |
| 3 | `def` | [mkUnit](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/declarations/mkunit--bfb999f3e39e5f62418af1e5.md) | 65 | `declaration-track:bfb999f3e39e5f62418af1e5cc4f469b0014794f8dc7bda4322363d32266475e` |
| 4 | `theorem` | [coe_mkUnit](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/declarations/coe-mkunit--73712322d5f8678ca32a8eb6.md) | 81 | `result-track:73712322d5f8678ca32a8eb6a23e5cc62b82e77deeb10171386fdb6ba7e5973b` |
| 5 | `theorem` | [isUnit_of_coeff_zero_ne_zero](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/declarations/isunit-of-coeff-zero-ne-zero--916cfd935593093e3f40d10e.md) | 90 | `result-track:916cfd935593093e3f40d10e03eea1c9063c440e145541fbb54546b9d58aa8e2` |
| 6 | `theorem` | [irreducible](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/declarations/irreducible--df805832ee58c568402fc7ee.md) | 97 | `result-track:df805832ee58c568402fc7eeddcdd3fa5347b65972fe2a1fa0eab1bc5ab27326` |
| 7 | `theorem` | [exists_eq_pow_p_mul](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/declarations/exists-eq-pow-p-mul--1439b0e2a51b43e393c35707.md) | 121 | `result-track:1439b0e2a51b43e393c357075a72b59b40de20dd7a045071f9d120fc86c8c599` |
| 8 | `theorem` | [exists_eq_pow_p_mul'](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/declarations/exists-eq-pow-p-mul--02c562e91cd51c3c6995e525.md) | 143 | `result-track:02c562e91cd51c3c6995e52581c11328a63e4cb7fa236dbdff4dafa735f5badc` |
| 9 | `theorem` | [isDiscreteValuationRing](../../../../mathematics/Algebra/DiscreteValuationRing/Variant8dedfd5de2395975545d36462cfdf59958a12d1b9b721b76830eb5dd2df57a56.lean/declarations/isdiscretevaluationring--60ba554dbaaa2e2f1461551f.md) | 158 | `result-track:60ba554dbaaa2e2f1461551fe789a8f265d74344de05490046a81ccb147f7431` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
