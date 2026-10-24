# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nullstellensatz.Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc70f3e92ea646dda9adf1fcb8dbfc96c8e6951e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Definitions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.MonomialOrder.DegLex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Groebner` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Homogeneous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.MonomialOrder.DegLex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_eval_zero_at_prod_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/declarations/eq-zero-of-eval-zero-at-prod-finset--25c922c088a7dcb5f8813027.md) | 63 | `result-track:25c922c088a7dcb5f88130275145fa0f3c244656152c4214f87932a0156b2628` |
| 2 | `def` | [Alon.P](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/declarations/alon-p--7bfcd3cbdaf93d4bae5fff1e.md) | 148 | `declaration-track:7bfcd3cbdaf93d4bae5fff1ee752c4719bfe1b8b854d99bfdebaf51ecc07b4b2` |
| 3 | `theorem` | [Alon.degree_P](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/declarations/alon-degree-p--76f547fbb6be88d767515a5d.md) | 153 | `result-track:76f547fbb6be88d767515a5d2985b06fd0c41cd043ef54d1cf3c73b11606c561` |
| 4 | `theorem` | [Alon.monic_P](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/declarations/alon-monic-p--1e4968c002d2f39c89e57fdd.md) | 163 | `result-track:1e4968c002d2f39c89e57fddf4338b7d2e2bd79b950f4748ddce7f77dc462376` |
| 5 | `lemma` | [Alon.of_mem_P_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/declarations/alon-of-mem-p-support--94bd93d75a0d1070691d8a12.md) | 169 | `result-track:94bd93d75a0d1070691d8a12a8c071b5c46295a77715ba6661d63ed202d52559` |
| 6 | `theorem` | [combinatorial_nullstellensatz_exists_linearCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/declarations/combinatorial-nullstellensatz-exists-linearcombination--935a2287ad6d807bde9ef42c.md) | 205 | `result-track:935a2287ad6d807bde9ef42c02445baaef95f75d8f95c23a45252c194e48f969` |
| 7 | `theorem` | [combinatorial_nullstellensatz_exists_eval_nonzero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant8c6a5b90f760632864a5b93a9ce05db0bb996d4734fb6f65c9ea1269c723e36f.lean/declarations/combinatorial-nullstellensatz-exists-eval-nonzero--8b56e63521eb9c7921c23f3e.md) | 249 | `result-track:8b56e63521eb9c7921c23f3ee50ab79aba18a3816caadae248cde8f83eb0ae7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
