# Verification target: GRWTSK.Algebra.Nakayama.Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec0312dd39283338dde895442c02ad9642077891",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec0312dd39283338dde895442c02ad9642077891`.

Source path: `GRWTSK/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Nakayama` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Ideal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/eq-smul-of-le-smul-of-le-jacobson--076d7b83f45669a2241a9713.md) | 53 | `result-track:076d7b83f45669a2241a97135b546b7eaf11f64a0d9630a0296166c581b3deda` |
| 2 | `lemma` | [eq_bot_of_eq_ideal_smul_of_le_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/eq-bot-of-eq-ideal-smul-of-le-jacobson-annihilator--4915ed0f82acb5524038eff1.md) | 64 | `result-track:4915ed0f82acb5524038eff1cd7c12025d4e665cc158806364c4c58a6910d55a` |
| 3 | `lemma` | [eq_bot_of_eq_pointwise_smul_of_mem_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/eq-bot-of-eq-pointwise-smul-of-mem-jacobson-annihilator--2466676fb3a20cdc48dbd97e.md) | 70 | `result-track:2466676fb3a20cdc48dbd97e7370d387565fccb305f4c956f25210fadb84fb2e` |
| 4 | `lemma` | [eq_bot_of_set_smul_eq_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/eq-bot-of-set-smul-eq-of-subset-jacobson-annihilator--9f223c207e89293d152425e2.md) | 78 | `result-track:9f223c207e89293d152425e27c663caf8641156b159983ceb78af2ec2d33d464` |
| 5 | `lemma` | [top_ne_ideal_smul_of_le_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/top-ne-ideal-smul-of-le-jacobson-annihilator--b2beffd5600976156ea1e959.md) | 84 | `result-track:b2beffd5600976156ea1e9598566b99386fd6c8002a10a2c36ac6e968d36bc70` |
| 6 | `lemma` | [top_ne_set_smul_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/top-ne-set-smul-of-subset-jacobson-annihilator--e7f68008bf22bacaf023f995.md) | 91 | `result-track:e7f68008bf22bacaf023f995a04775a187f099e3f99f22839e65c5bf6c49dc94` |
| 7 | `lemma` | [top_ne_pointwise_smul_of_mem_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/top-ne-pointwise-smul-of-mem-jacobson-annihilator--a3a569266491bee9b3f73181.md) | 99 | `result-track:a3a569266491bee9b3f73181322e45a2ea802ced61a9a1ece894ee863c033977` |
| 8 | `theorem` | [eq_bot_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/eq-bot-of-le-smul-of-le-jacobson-bot--a77cbf5d81877990af2333a4.md) | 110 | `result-track:a77cbf5d81877990af2333a47ef4ba562b8953c031ec1ebee38e6fd6f2c53273` |
| 9 | `theorem` | [sup_eq_sup_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/sup-eq-sup-smul-of-le-smul-of-le-jacobson--50e15aa44991962a8ba46ea4.md) | 114 | `result-track:50e15aa44991962a8ba46ea46ea8acd8c3ad3d04b5a3f56d9a3b1f44b45485a6` |
| 10 | `theorem` | [sup_smul_eq_sup_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/sup-smul-eq-sup-smul-of-le-smul-of-le-jacobson--eb87b0a1d547c074cc0e64e3.md) | 133 | `result-track:eb87b0a1d547c074cc0e64e35849856a43db21b8a8a6165407a22b4d0ab78365` |
| 11 | `theorem` | [le_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/le-of-le-smul-of-le-jacobson-bot--2b48ecb922408f2076f32478.md) | 138 | `result-track:2b48ecb922408f2076f32478fec5e44459e004f1207a1584cd581e2268c949db` |
| 12 | `theorem` | [smul_le_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/smul-le-of-le-smul-of-le-jacobson-bot--30be2436f6738cedcf7d0887.md) | 148 | `result-track:30be2436f6738cedcf7d08877ceb78e267ac3cd9641bf3d2fae35ca014569d18` |
| 13 | `lemma` | [exists_sub_one_mem_and_smul_le_of_fg_of_le_sup](../../../../mathematics/Algebra/Nakayama/Variante8c07ce56310ab10c8b4b2df084a992a930b443cc0749162458d20d2d03cbb9b.lean/declarations/exists-sub-one-mem-and-smul-le-of-fg-of-le-sup--ade9a9dd1462104a2f6d258e.md) | 155 | `result-track:ade9a9dd1462104a2f6d258e7e42641543bf90d1cd0b4b449a983f9e09805a94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
