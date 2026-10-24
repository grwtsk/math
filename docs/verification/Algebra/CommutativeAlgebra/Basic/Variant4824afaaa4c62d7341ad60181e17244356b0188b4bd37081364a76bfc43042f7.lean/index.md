# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a415b24f0ea01eba1f3e48dd843502690c13a103",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a415b24f0ea01eba1f3e48dd843502690c13a103`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Liouville` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/exists-root--7dfeb512388e2a17fdd757ba.md) | 32 | `result-track:7dfeb512388e2a17fdd757ba6c3dcb293644b8da7c4fc741848ed12527b71ca3` |
| 2 | `instance` | [isAlgClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/isalgclosed--f7a8d6dcd1f6e227a979d519.md) | 45 | `declaration-track:f7a8d6dcd1f6e227a979d51908f501ae36317c89b267037988b297d00ae56cf5` |
| 3 | `theorem` | [splits_ℚ_ℂ](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/splits--e39dd599b0ac5a2cb9674ee1.md) | 54 | `result-track:e39dd599b0ac5a2cb9674ee1a6275c4dd5496d82cbcb3d3a2ed52e0f5a999770` |
| 4 | `theorem` | [card_complex_roots_eq_card_real_add_card_not_gal_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/card-complex-roots-eq-card-real-add-card-not-gal-inv--eda0ee41c5de495960c30129.md) | 62 | `result-track:eda0ee41c5de495960c301299ee795db321273ac7629683f2872c55a7c06d0de` |
| 5 | `theorem` | [galActionHom_bijective_of_prime_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/galactionhom-bijective-of-prime-degree--13772796bd10f9c9a2176b20.md) | 116 | `result-track:13772796bd10f9c9a2176b20d30a9eabd50cb718755265c478004a8bc79dc94b` |
| 6 | `theorem` | [galActionHom_bijective_of_prime_degree'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/galactionhom-bijective-of-prime-degree--12ec8bdeb6621899fa2bc7e9.md) | 144 | `result-track:12ec8bdeb6621899fa2bc7e967a9e5bf06f9431e9c1586a25763343f18720d4b` |
| 7 | `lemma` | [Polynomial.mul_star_dvd_of_aeval_eq_zero_im_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/polynomial-mul-star-dvd-of-aeval-eq-zero-im-ne-zero--a45148d68763495a68e30ff5.md) | 166 | `result-track:a45148d68763495a68e30ff560dae2760058664ece879beec3be35ce9a6d032d` |
| 8 | `lemma` | [Polynomial.quadratic_dvd_of_aeval_eq_zero_im_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/polynomial-quadratic-dvd-of-aeval-eq-zero-im-ne-zero--86deac4675cd13461f575230.md) | 175 | `result-track:86deac4675cd13461f5752308ee9b0f9341be4df929c5fde5bfd15cbc4fa8f15` |
| 9 | `lemma` | [Irreducible.degree_le_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/irreducible-degree-le-two--f11360a60a2195aa79f143df.md) | 187 | `result-track:f11360a60a2195aa79f143dfb692988f6ed600c239d6d3ff30babb203aac2f23` |
| 10 | `lemma` | [Irreducible.natDegree_le_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant4824afaaa4c62d7341ad60181e17244356b0188b4bd37081364a76bfc43042f7.lean/declarations/irreducible-natdegree-le-two--c2d4ed6f438f407b2da8883e.md) | 209 | `result-track:c2d4ed6f438f407b2da8883e269204a1b589d9f7cc0807e7d780c905589b9cd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
