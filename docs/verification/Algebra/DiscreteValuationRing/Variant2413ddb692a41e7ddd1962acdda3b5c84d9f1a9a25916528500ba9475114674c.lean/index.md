# Verification target: GRWTSK.Algebra.DiscreteValuationRing.Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d02a99ee5a6e0c7bc042c3cd2935f8f6df83e9d5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/index.md) · [Full source](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d02a99ee5a6e0c7bc042c3cd2935f8f6df83e9d5`.

Source path: `GRWTSK/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Domain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.MulCoeff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succNthValUnits](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/declarations/succnthvalunits--6b53ca4aee53bac0c9d1687a.md) | 42 | `declaration-track:6b53ca4aee53bac0c9d1687ad530bc59d234f0e84f2c6dda33d9bd8a1a2419c4` |
| 2 | `def` | [inverseCoeff](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/declarations/inversecoeff--0e47cfe5d72f3c75e4905d63.md) | 50 | `declaration-track:0e47cfe5d72f3c75e4905d63c35959ac54789c4a3b5d1833aa3614f3ae7b2321` |
| 3 | `def` | [mkUnit](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/declarations/mkunit--15e3af4933d5319f62e71a7b.md) | 57 | `declaration-track:15e3af4933d5319f62e71a7bb91418febb19406aa3a8d18b695048040e57d8e0` |
| 4 | `theorem` | [coe_mkUnit](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/declarations/coe-mkunit--3def9a2dfef153d9b183cf09.md) | 73 | `result-track:3def9a2dfef153d9b183cf0938c3cc75de1270d10d22aa11ca6267b20685d1d2` |
| 5 | `theorem` | [isUnit_of_coeff_zero_ne_zero](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/declarations/isunit-of-coeff-zero-ne-zero--cf5e0ff8ebce9b0a6caa4277.md) | 82 | `result-track:cf5e0ff8ebce9b0a6caa42773882db8cd04286314ad5a626fadad5b84b75e1e6` |
| 6 | `theorem` | [irreducible](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/declarations/irreducible--55502d3134259ed07870b264.md) | 89 | `result-track:55502d3134259ed07870b2649a1948980509ca536afc52514983e5089fd0d782` |
| 7 | `theorem` | [exists_eq_pow_p_mul](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/declarations/exists-eq-pow-p-mul--dec8144c87c943b4392022ee.md) | 113 | `result-track:dec8144c87c943b4392022ee4012ef7b4ce3d096abed96ab8d58312917eb2c82` |
| 8 | `theorem` | [exists_eq_pow_p_mul'](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/declarations/exists-eq-pow-p-mul--5a169d9c67d6bc833f3e0d42.md) | 135 | `result-track:5a169d9c67d6bc833f3e0d42e1b30f85f61c14a3332f83fa37bc1482ae0b2aa8` |
| 9 | `theorem` | [isDiscreteValuationRing](../../../../mathematics/Algebra/DiscreteValuationRing/Variant2413ddb692a41e7ddd1962acdda3b5c84d9f1a9a25916528500ba9475114674c.lean/declarations/isdiscretevaluationring--1ee393e9dc2d848f94f605be.md) | 150 | `result-track:1ee393e9dc2d848f94f605beac61002421bedb64bb644f172fc3f11e4fedb4f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
