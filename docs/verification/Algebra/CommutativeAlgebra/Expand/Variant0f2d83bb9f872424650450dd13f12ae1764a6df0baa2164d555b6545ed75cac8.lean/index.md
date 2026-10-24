# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54037a0779043dc8783deaf2ad5836902a59c34f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54037a0779043dc8783deaf2ad5836902a59c34f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.ZMod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclotomic_expand_eq_cyclotomic_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/declarations/cyclotomic-expand-eq-cyclotomic-mul--56de6887a3f48f4866828470.md) | 42 | `result-track:56de6887a3f48f4866828470340e2d85943dc93d4b128630c5cd5cbd50188013` |
| 2 | `theorem` | [cyclotomic_expand_eq_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/declarations/cyclotomic-expand-eq-cyclotomic--40787979a1af1946e9357f0b.md) | 83 | `result-track:40787979a1af1946e9357f0b13de196dbe56d1d027c126705cfba352cf94668a` |
| 3 | `theorem` | [cyclotomic_irreducible_pow_of_irreducible_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/declarations/cyclotomic-irreducible-pow-of-irreducible-pow--dc286dd9ee268158f3854f9a.md) | 104 | `result-track:dc286dd9ee268158f3854f9a3a963b650b84e2e1082853255044f13d4af0e604` |
| 4 | `theorem` | [cyclotomic_irreducible_of_irreducible_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/declarations/cyclotomic-irreducible-of-irreducible-pow--fd47d5ff4162ebc7d9cec835.md) | 117 | `result-track:fd47d5ff4162ebc7d9cec8350964665ca3b146fba2806f86cb500aa11d0a6609` |
| 5 | `theorem` | [cyclotomic_mul_prime_eq_pow_of_not_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/declarations/cyclotomic-mul-prime-eq-pow-of-not-dvd--5bede36e91e46ebea3ee82bc.md) | 126 | `result-track:5bede36e91e46ebea3ee82bcda2f7c0e685bed38e36d5a6529373ba84f42d459` |
| 6 | `theorem` | [cyclotomic_mul_prime_dvd_eq_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/declarations/cyclotomic-mul-prime-dvd-eq-pow--20bdb002823330fb13888da0.md) | 140 | `result-track:20bdb002823330fb13888da0b435868707428dcf7872aa4e263c05b1a878d5d2` |
| 7 | `theorem` | [cyclotomic_mul_prime_pow_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/declarations/cyclotomic-mul-prime-pow-eq--881061f3438c87804f1231ef.md) | 151 | `result-track:881061f3438c87804f1231ef97de5ee4be796131ed364f30b73a1b5194d10338` |
| 8 | `theorem` | [isRoot_cyclotomic_prime_pow_mul_iff_of_charP](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/declarations/isroot-cyclotomic-prime-pow-mul-iff-of-charp--68bbe38e1ee14b34c070f818.md) | 165 | `result-track:68bbe38e1ee14b34c070f818f1806a2a82a58045a3b44d3e84de3c75aac2fe9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
