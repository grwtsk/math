# Verification target: GRWTSK.Algebra.UniversalAlgebra.MinMax.Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8cdd57c1e8518380db649f2f90036806089ead2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8cdd57c1e8518380db649f2f90036806089ead2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fn_min_mul_fn_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/fn-min-mul-fn-max--a9fab1f119c683a5e48f1dfa.md) | 24 | `result-track:a9fab1f119c683a5e48f1dfaa44c137a9089a12a91f887d3c507f99fd2ae6c3c` |
| 2 | `lemma` | [fn_max_mul_fn_min](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/fn-max-mul-fn-min--35e65c6177c2e018bf1a96dc.md) | 28 | `result-track:35e65c6177c2e018bf1a96dcfdfc7cfd1a9f47d62fc95df15f2b964933929655` |
| 3 | `lemma` | [min_mul_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/min-mul-max--18462fafabe216a244ba6192.md) | 34 | `result-track:18462fafabe216a244ba61920e72e98dce5592e179028ef8591e329773911b2e` |
| 4 | `lemma` | [max_mul_min](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/max-mul-min--b3b104eeee8648eadcc591c9.md) | 37 | `result-track:b3b104eeee8648eadcc591c902f460b13e033ab332cf4eb16c336b655c0a548c` |
| 5 | `theorem` | [min_mul_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/min-mul-mul-left--1fc6a40f814431e1a2876cc0.md) | 54 | `result-track:1fc6a40f814431e1a2876cc0a3331e89752c3c9cf11bd2cd364bcde3153da888` |
| 6 | `theorem` | [max_mul_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/max-mul-mul-left--d109db37aa19e08a12ac0bb8.md) | 58 | `result-track:d109db37aa19e08a12ac0bb89416c65e8cef83f000767337549e4b71449c4b6a` |
| 7 | `theorem` | [min_mul_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/min-mul-mul-right--980676ada8c60a74baf787f1.md) | 68 | `result-track:980676ada8c60a74baf787f1f3eacf384705400128a5760d7c9d23e1c404fd0f` |
| 8 | `theorem` | [max_mul_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/max-mul-mul-right--3558d6156ae0dcece0673159.md) | 72 | `result-track:3558d6156ae0dcece0673159dc27aff31b905d121dd93acf7fadf7e170f5a223` |
| 9 | `theorem` | [lt_or_lt_of_mul_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/lt-or-lt-of-mul-lt-mul--57bdd9b116212f25b6f0bb26.md) | 78 | `result-track:57bdd9b116212f25b6f0bb2615c5585235494c867f2783735570665aa2fbd780` |
| 10 | `theorem` | [le_or_lt_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/le-or-lt-of-mul-le-mul--42d859f606ce86153f79f4ae.md) | 84 | `result-track:42d859f606ce86153f79f4ae27594fea45b87cd45ae24d14ea12dec3ec25685d` |
| 11 | `theorem` | [lt_or_le_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/lt-or-le-of-mul-le-mul--9c2bddf3d91763d3240636b0.md) | 90 | `result-track:9c2bddf3d91763d3240636b0b6e26635fd82dfc7ab1083bfad13fea89690cf2a` |
| 12 | `theorem` | [le_or_le_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/le-or-le-of-mul-le-mul--4155d8b43834fc75b3b4cd74.md) | 96 | `result-track:4155d8b43834fc75b3b4cd7480915ce9f230f806f50fdeb50c7714898b054143` |
| 13 | `theorem` | [mul_lt_mul_iff_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/mul-lt-mul-iff-of-le-of-le--566ba7ffc53cfeedf2030ccb.md) | 102 | `result-track:566ba7ffc53cfeedf2030ccbf5890fa2bb1ce32eb97af6b66f0e80921da71d81` |
| 14 | `theorem` | [min_le_mul_of_one_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/min-le-mul-of-one-le-right--d8623d237d17e14a09a33471.md) | 116 | `result-track:d8623d237d17e14a09a33471ec6d6c1de6e7fc5178ec46dc3d2bcdfa216c5c93` |
| 15 | `theorem` | [min_le_mul_of_one_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/min-le-mul-of-one-le-left--e6a4a217188d310243735f39.md) | 121 | `result-track:e6a4a217188d310243735f39abae7b186767165a0c7ff195997c8aa0fc343608` |
| 16 | `theorem` | [max_le_mul_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantb3f48d412ba2ef6ea58af93c84abf46e04899f217edd7a547faee1c723b84ce3.lean/declarations/max-le-mul-of-one-le--c668d9fb2eaf0b876d5995a1.md) | 126 | `result-track:c668d9fb2eaf0b876d5995a1ded4af6fa480db14eab59d785e05905202e63373` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
