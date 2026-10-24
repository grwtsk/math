# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsIntegral.Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e833e58cf732999d245764fc68f7fff367ddfc3b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e833e58cf732999d245764fc68f7fff367ddfc3b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean.json)

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
| 1 | `lemma` | [isIntegral_coeff_prod](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/declarations/isintegral-coeff-prod--486e14a2e2496a1c996c7757.md) | 43 | `result-track:486e14a2e2496a1c996c7757213581eb31ff4b2c5935c31ddac224bc19490dbf` |
| 2 | `lemma` | [isIntegral_coeff_of_factors](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/declarations/isintegral-coeff-of-factors--d777856a7698c449cdfcd77d.md) | 53 | `result-track:d777856a7698c449cdfcd77dc94122daa2f3005e6e9ebd91301e152c4a5ffe60` |
| 3 | `lemma` | [isIntegral_coeff_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/declarations/isintegral-coeff-of-dvd--268a39944614edcec1640e11.md) | 71 | `result-track:268a39944614edcec1640e119028d091a701dd012bfdc2ff1c4ae0a7141e7a72` |
| 4 | `lemma` | [IsAlmostIntegral.coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/declarations/isalmostintegral-coeff--4d48449ecec442f781606bdb.md) | 94 | `result-track:4d48449ecec442f781606bdb0858157479b7aa1e24cb10e66e1647681ca3cfc1` |
| 5 | `lemma` | [IsIntegral.coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/declarations/isintegral-coeff--a6b1f086ca4fc4678fad513c.md) | 130 | `result-track:a6b1f086ca4fc4678fad513cf9bec4b2251c2f5bafe25721bc030047fa1c0ebf` |
| 6 | `theorem` | [Polynomial.isIntegral_iff_isIntegral_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/declarations/polynomial-isintegral-iff-isintegral-coeff--c64b4054f5758284fd25ebf0.md) | 167 | `result-track:c64b4054f5758284fd25ebf06c8f4cfb7d50bdc58ee0ab745ba81653cdf1999d` |
| 7 | `lemma` | [IsIntegral.of_aeval_monic_of_isIntegral_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/declarations/isintegral-of-aeval-monic-of-isintegral-coeff--05fc291d1272b008a599ffd2.md) | 174 | `result-track:05fc291d1272b008a599ffd21ac0498d903dd91a1f3ba583c8228400f77eeaa7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/declarations/instance--138f2f24e3fb4ad7a9e1e7af.md) | 184 | `declaration-track:138f2f24e3fb4ad7a9e1e7af39e15cc690f2f32f86e66980029f4e4f50f66d52` |
| 9 | `theorem` | [MvPolynomial.isIntegral_iff_isIntegral_coeff.](../../../../../mathematics/Algebra/CommutativeAlgebra/IsIntegral/Variant4e447fafc5c78b1d52df228511d70989bfac91e0a05df9f81fb14edec5963074.lean/declarations/mvpolynomial-isintegral-iff-isintegral-coeff--2d615d0483a431b41bc064b3.md) | 197 | `result-track:2d615d0483a431b41bc064b372260734bc8911c51e09eebec96224c351ede116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
