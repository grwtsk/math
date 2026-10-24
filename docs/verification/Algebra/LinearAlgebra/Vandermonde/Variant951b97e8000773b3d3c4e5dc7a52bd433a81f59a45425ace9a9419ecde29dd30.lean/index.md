# Verification target: GRWTSK.Algebra.LinearAlgebra.Vandermonde.Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e67040f9abd33c9db8c350614430a60085b8a6f1",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e67040f9abd33c9db8c350614430a60085b8a6f1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Nondegenerate` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rectVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/rectvandermonde--175dcac4992f9d8e398380f1.md) | 71 | `declaration-track:175dcac4992f9d8e398380f1751bbdc144bbe54c5212dcccb295f4d2cf8f00dc` |
| 2 | `def` | [projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/projvandermonde--c538fc4bf585e5b05b7fd047.md) | 75 | `declaration-track:c538fc4bf585e5b05b7fd047dcbb971a0e1f17e0a3094710470582a0de9628cc` |
| 3 | `def` | [vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/vandermonde--503cb44dc8e2262c63cbe851.md) | 79 | `declaration-track:503cb44dc8e2262c63cbe8518767c5253767cee2865ea71e7b06f9186514a0ea` |
| 4 | `lemma` | [vandermonde_eq_projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/vandermonde-eq-projvandermonde--3a1e1a151c137a5d528e77a7.md) | 81 | `result-track:3a1e1a151c137a5d528e77a70809c0c69929218c1d4649821051848aaa927b6e` |
| 5 | `theorem` | [projVandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/projvandermonde-apply--075a868cfc02e84cf521eccf.md) | 86 | `result-track:075a868cfc02e84cf521eccffd22679617eb21903761612ac82f244087a623e9` |
| 6 | `theorem` | [rectVandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/rectvandermonde-apply--4ddd6e832dbabcc13d437e25.md) | 89 | `result-track:4ddd6e832dbabcc13d437e254923a3a33a74d4fd8279cf29c1bc853fe7f38b49` |
| 7 | `theorem` | [vandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/vandermonde-apply--a981a27d6ef52f11753d5071.md) | 93 | `result-track:a981a27d6ef52f11753d50710d3f68dbd5e41610aa5214b240a4e90e564c7289` |
| 8 | `theorem` | [vandermonde_cons](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/vandermonde-cons--dc1bac8179ce66e477a3ce40.md) | 96 | `result-track:dc1bac8179ce66e477a3ce40b90f82c38efc5ea2bfc4f3a4de8b1eee0b98a3eb` |
| 9 | `theorem` | [vandermonde_succ](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/vandermonde-succ--cae0c5382b8662bd6bd97b08.md) | 105 | `result-track:cae0c5382b8662bd6bd97b08a633c053135325baac85cdcf1aa752aa9f93970e` |
| 10 | `theorem` | [vandermonde_mul_vandermonde_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/vandermonde-mul-vandermonde-transpose--2d18d97a2c9c08079e455386.md) | 112 | `result-track:2d18d97a2c9c08079e455386853c7b319e1f33fe5b5dd8042174df67c37f0fb3` |
| 11 | `theorem` | [vandermonde_transpose_mul_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/vandermonde-transpose-mul-vandermonde--36abce1020c310a6d3d26b96.md) | 116 | `result-track:36abce1020c310a6d3d26b960e93ab8e7f8312f54e1e8b3feb4a74516656a222` |
| 12 | `theorem` | [rectVandermonde_apply_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/rectvandermonde-apply-zero-right--88f28e174a80b63c243908ea.md) | 120 | `result-track:88f28e174a80b63c243908ea5ed0b861ff2f3b7286334c54eed25369447ec362` |
| 13 | `theorem` | [projVandermonde_apply_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/projvandermonde-apply-of-ne-zero--41868593b0d0c36684035b88.md) | 128 | `result-track:41868593b0d0c36684035b88ae1b0a73d940f6ce6af04fcde2e0190f168c2a3f` |
| 14 | `theorem` | [projVandermonde_apply_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/projvandermonde-apply-zero-right--a96101b211f16690e2a82bc1.md) | 133 | `result-track:a96101b211f16690e2a82bc1745856fc66ce9d263328b20a0ea5bb8cbf7efa60` |
| 15 | `theorem` | [projVandermonde_comp](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/projvandermonde-comp--4e188e6954416637d630cfa3.md) | 141 | `result-track:4e188e6954416637d630cfa315644501f51d6f9116e508b461e2dc0b63694718` |
| 16 | `theorem` | [projVandermonde_map](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/projvandermonde-map--391421c07ddb2fbb33b889f9.md) | 144 | `result-track:391421c07ddb2fbb33b889f95f342efea6e669e8c616468c44c42cfc15fd8720` |
| 17 | `theorem` | [det_projVandermonde_of_field](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/det-projvandermonde-of-field--518f71cd89885930b2f7b207.md) | 149 | `result-track:518f71cd89885930b2f7b20728dc520629dc6101c8e2309ca5da4ff52e8eb447` |
| 18 | `theorem` | [det_projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/det-projvandermonde--0529da2de2a1346cae8688c8.md) | 195 | `result-track:0529da2de2a1346cae8688c829b9805dd7009e71146e3f7136e6ce9ec073982d` |
| 19 | `theorem` | [det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/det-vandermonde--6914accd005ee03ce076111a.md) | 209 | `result-track:6914accd005ee03ce076111aff3ec9beb90fa8123e3298214d933bf7f9c73269` |
| 20 | `theorem` | [det_vandermonde_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/det-vandermonde-eq-zero-iff--d0b687015381ea1dc868eb8f.md) | 213 | `result-track:d0b687015381ea1dc868eb8f0affe44d4221049be5aeb9f4bfb8e83cc67907f9` |
| 21 | `theorem` | [det_vandermonde_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/det-vandermonde-ne-zero-iff--4b416f66ff429eb71e12cf8f.md) | 223 | `result-track:4b416f66ff429eb71e12cf8fdc30eb8a0d6b7cd77c12dbfca3cd885058fa26dc` |
| 22 | `theorem` | [det_vandermonde_add](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/det-vandermonde-add--7ca2d9f976b08c51468b3068.md) | 229 | `result-track:7ca2d9f976b08c51468b3068c4010026ed92a2f745d779f6cb12e1e962ad2385` |
| 23 | `theorem` | [det_vandermonde_sub](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/det-vandermonde-sub--8a053cef3ec8322c76f92dff.md) | 234 | `result-track:8a053cef3ec8322c76f92dffb09651163a41360da14e5a64642f014efd05b6f3` |
| 24 | `theorem` | [eq_zero_of_forall_index_sum_pow_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/eq-zero-of-forall-index-sum-pow-mul-eq-zero--2e92356268c410f227e78e5b.md) | 239 | `result-track:2e92356268c410f227e78e5b317166da26eb218ad6738af9fbc94f8678ccbd0d` |
| 25 | `theorem` | [eq_zero_of_forall_index_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/eq-zero-of-forall-index-sum-mul-pow-eq-zero--050c97ec2ba73f5a8a383acf.md) | 243 | `result-track:050c97ec2ba73f5a8a383acf8d0bc660892d352cf9ead2666ec6f7dbaf24be06` |
| 26 | `theorem` | [eq_zero_of_forall_pow_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/eq-zero-of-forall-pow-sum-mul-pow-eq-zero--f41dbfe570eb3fb364ace45a.md) | 249 | `result-track:f41dbfe570eb3fb364ace45aa953ad8970e0007819a7d20805600415668b0fb8` |
| 27 | `theorem` | [eval_matrixOfPolynomials_eq_vandermonde_mul_matrixOfPolynomials](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/eval-matrixofpolynomials-eq-vandermonde-mul-matrixofpolynomials--ff1c2a5879161b5b86751d95.md) | 256 | `result-track:ff1c2a5879161b5b86751d951a252dfeba31c3f29dc0aefb463136dba68f4e73` |
| 28 | `theorem` | [det_eval_matrixOfPolynomials_eq_det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean/declarations/det-eval-matrixofpolynomials-eq-det-vandermonde--15b12ba207ea647ba6a3baf7.md) | 269 | `result-track:15b12ba207ea647ba6a3baf7c25f7fa9ba2dcbf8146dc7e91c87b469042f9e05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
