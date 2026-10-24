# Verification target: GRWTSK.Algebra.Profinite.Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bc0de66368aaa96d57a8e390b9c4ad81e69bd9f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/index.md) · [Full source](../../../../mathematics/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bc0de66368aaa96d57a8e390b9c4ad81e69bd9f`.

Source path: `GRWTSK/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Invariant.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ClopenNhdofOne` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Category.ProfiniteGrp.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CofilteredSystem` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Algebra.IsInvariant.isIntegral_of_profinite](../../../../mathematics/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/declarations/algebra-isinvariant-isintegral-of-profinite--d032b1af2f79ff919b7d5722.md) | 50 | `result-track:d032b1af2f79ff919b7d57229026ed037c0d3eb84d682f4817cb6d16a2dd4bce` |
| 2 | `lemma` | [Algebra.IsInvariant.exists_smul_of_under_eq_of_profinite](../../../../mathematics/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/declarations/algebra-isinvariant-exists-smul-of-under-eq-of-profinite--d5e9a72243a3ee1b97514264.md) | 61 | `result-track:d5e9a72243a3ee1b975142647c25d7ff76f0d9f0926fea5a84d7777552d889ff` |
| 3 | `lemma` | [Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor_aux](../../../../mathematics/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/declarations/ideal-quotient-stabilizerhomsurjectiveauxfunctor-aux--75ddbf2789affe8a13e1a642.md) | 111 | `result-track:75ddbf2789affe8a13e1a642f94fcf20245b7324ac14b9967fe78a8eaf23facf` |
| 4 | `def` | [Ideal.Quotient.stabilizerHomSurjectiveAuxFunctor](../../../../mathematics/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/declarations/ideal-quotient-stabilizerhomsurjectiveauxfunctor--ce2c42f57d12ad0da8fc4694.md) | 129 | `declaration-track:ce2c42f57d12ad0da8fc4694676ea8459b9abcaa1eb2b47cc3fe307745a67e28` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/declarations/instance--ab47556666b5e4fcc1018d31.md) | 152 | `declaration-track:ab47556666b5e4fcc1018d31b43b4af14ca03a1444d52886c337f6bfaeb3e2fd` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/declarations/instance--268f6f4562245984f78188e2.md) | 159 | `declaration-track:268f6f4562245984f78188e2681d9c35f55b8c2a33c093e5660cbec7d573f1e6` |
| 7 | `theorem` | [Ideal.Quotient.stabilizerHom_surjective_of_profinite](../../../../mathematics/Algebra/Profinite/Variantb0bf94d5b4787f13d97c5f596d28693a871ca7cea99ae66dac2569f4c97cb720.lean/declarations/ideal-quotient-stabilizerhom-surjective-of-profinite--9a45e2718cce0e1b907669e6.md) | 175 | `result-track:9a45e2718cce0e1b907669e6f505fad1b4364a90713bf4cba6c0cf5b9cb9bf7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
