# Verification target: GRWTSK.Algebra.Algebra.Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0325a802b10a3c0cb34b9069af8356a6e8c77d1",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0325a802b10a3c0cb34b9069af8356a6e8c77d1`.

Source path: `GRWTSK/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finiteness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Algebraic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [algebra_adjoin_le_adjoin](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/algebra-adjoin-le-adjoin--69898bab33f20dd73061a45c.md) | 24 | `result-track:69898bab33f20dd73061a45c94001a19c8b9ebe165bbce1de8ca7a4afcd787f5` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/instance--53e147a8bd893420cab0d64f.md) | 30 | `declaration-track:53e147a8bd893420cab0d64f74f680fce2ee22d21d8dcd78a80c68bc6b9fa2b8` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/instance--17b459b8a9f84a3ab5a2b9f8.md) | 33 | `declaration-track:17b459b8a9f84a3ab5a2b9f8b2f515cf219c280bd972c7134a91c40f2a0e7dea` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/instance--3ca8d49aa5dc0c453079c4a8.md) | 37 | `declaration-track:3ca8d49aa5dc0c453079c4a8f588d97a404c756587e1d9f6303e16065745a5b4` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/instance--783c08f1e38136b91c969c96.md) | 40 | `declaration-track:783c08f1e38136b91c969c96943216bd4c36c0ba36d4ffe806c64d3d0535406d` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/instance--fa9c9a440a2bcc9fe40eaa02.md) | 43 | `declaration-track:fa9c9a440a2bcc9fe40eaa029b939946b38d865b5053afcb5bb22df15c6cc8fc` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/instance--1dacd9eeb4244792ecb412e3.md) | 47 | `declaration-track:1dacd9eeb4244792ecb412e3c7cf1316e5867a1fc7eb6e2dffb43bdaf463f246` |
| 8 | `theorem` | [adjoin_eq_algebra_adjoin](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/adjoin-eq-algebra-adjoin--e7cf654ee99d382fff8564b2.md) | 52 | `result-track:e7cf654ee99d382fff8564b2d915da7af5b738dd74093394de1e332b7ac832f3` |
| 9 | `theorem` | [eq_adjoin_of_eq_algebra_adjoin](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/eq-adjoin-of-eq-algebra-adjoin--b61a5d21e0f4f485f0bba768.md) | 61 | `result-track:b61a5d21e0f4f485f0bba768090cba0f7338bf0180c981efe1cb86e2a6905d06` |
| 10 | `theorem` | [adjoin_eq_top_of_algebra](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/adjoin-eq-top-of-algebra--0b9490b96279fcc81fb77d43.md) | 69 | `result-track:0b9490b96279fcc81fb77d432b162aeb1fd6c913a6a7103d9306bf5c0ad32428` |
| 11 | `theorem` | [AdjoinSimple.isIntegral_gen](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/adjoinsimple-isintegral-gen--a151aef45028c053f18e6c7b.md) | 77 | `result-track:a151aef45028c053f18e6c7b9c38b01a16168a59bea1fa5d4a82faadbcd9949b` |
| 12 | `theorem` | [adjoin_algebraic_toSubalgebra](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/adjoin-algebraic-tosubalgebra--0c728c8edd1e8b6f4200e2a7.md) | 83 | `result-track:0c728c8edd1e8b6f4200e2a7c9cd84a2f93bf12be02f5d7f6e28518c17a05da3` |
| 13 | `theorem` | [adjoin_simple_toSubalgebra_of_integral](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/adjoin-simple-tosubalgebra-of-integral--4bc25da5a8798b0f86c9d2e0.md) | 88 | `result-track:4bc25da5a8798b0f86c9d2e07d64a73f8b74938a009b43c9840c04c64b8d37c1` |
| 14 | `lemma` | [finite_of_fg_of_isAlgebraic](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/finite-of-fg-of-isalgebraic--fead86938f3e0076e90e6cbe.md) | 94 | `result-track:fead86938f3e0076e90e6cbe4ca219bf3470ab735b45feee410521e7faf8a014` |
| 15 | `theorem` | [le_sup_toSubalgebra](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/le-sup-tosubalgebra--847d8c0cd0dd8c02f16b405d.md) | 109 | `result-track:847d8c0cd0dd8c02f16b405da26da8b2c8873d914bc4eb09cea9c9ca969e5d7a` |
| 16 | `theorem` | [sup_toSubalgebra_of_isAlgebraic_right](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/sup-tosubalgebra-of-isalgebraic-right--aa939ef616688995194b542d.md) | 112 | `result-track:aa939ef616688995194b542d18c215135ac542ff7ff791918da8cff8dca67d21` |
| 17 | `theorem` | [sup_toSubalgebra_of_isAlgebraic_left](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/sup-tosubalgebra-of-isalgebraic-left--fddb402a1b8387f06a45d000.md) | 125 | `result-track:fddb402a1b8387f06a45d0009fbe3279cbf6a894a8943f402d98b8ba5ca4c99a` |
| 18 | `theorem` | [sup_toSubalgebra_of_isAlgebraic](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/sup-tosubalgebra-of-isalgebraic--38fb257feffacc943b39a5bc.md) | 132 | `result-track:38fb257feffacc943b39a5bc745e77ebdbd6ac1e84067b7cf5da36e68ccd568d` |
| 19 | `theorem` | [sup_toSubalgebra_of_left](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/sup-tosubalgebra-of-left--28c1aab412dee6f3a9c5b131.md) | 138 | `result-track:28c1aab412dee6f3a9c5b1315372522ba9d3b3ad0933f940fa0beafa1451c5d3` |
| 20 | `theorem` | [sup_toSubalgebra_of_right](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/sup-tosubalgebra-of-right--4880c45cd3b5027c447b2946.md) | 142 | `result-track:4880c45cd3b5027c447b294679f102043190a2d44a63cee1a43bda2761d11fc9` |
| 21 | `theorem` | [adjoin_toSubalgebra_of_isAlgebraic](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/adjoin-tosubalgebra-of-isalgebraic--f6ede4e5810c6461d2c82698.md) | 155 | `result-track:f6ede4e5810c6461d2c82698fcabd928d6eb7da9c2c254f528adaa2f67852108` |
| 22 | `theorem` | [adjoin_toSubalgebra_of_isAlgebraic_left](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/adjoin-tosubalgebra-of-isalgebraic-left--16d65b99cd05da3c136a8d3c.md) | 170 | `result-track:16d65b99cd05da3c136a8d3cf55a38e23f9305d3a9c5567f8fa9ff6aa8f43fd6` |
| 23 | `theorem` | [adjoin_toSubalgebra_of_isAlgebraic_right](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/adjoin-tosubalgebra-of-isalgebraic-right--1c82820b25c906e6939ab79b.md) | 175 | `result-track:1c82820b25c906e6939ab79bc703a8916887987f4692421725ecb723f565c5db` |
| 24 | `theorem` | [fg_of_fg_toSubalgebra](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/fg-of-fg-tosubalgebra--bf940594910ec5fc73f64799.md) | 190 | `result-track:bf940594910ec5fc73f647990587c6aa349c9c3acf4b8b594804766df8713543` |
| 25 | `theorem` | [fg_of_noetherian](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/fg-of-noetherian--6aa12f2cc2e63d1f6b6e575b.md) | 196 | `result-track:6aa12f2cc2e63d1f6b6e575ba254c773d1d4b57c5026d1d0295a2c2df3ec5d48` |
| 26 | `theorem` | [induction_on_adjoin](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/induction-on-adjoin--2eb5c251288cc9b9ee854665.md) | 199 | `result-track:2eb5c251288cc9b9ee854665f5810a761452383dcc6d4e7903384fc58bf410c5` |
| 27 | `theorem` | [algHom_fieldRange_eq_of_comp_eq](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/alghom-fieldrange-eq-of-comp-eq--75fd9b6aa95cc6bab866c5ed.md) | 219 | `result-track:75fd9b6aa95cc6bab866c5eda4503fbbe57d0bbf1e02af32138fee38046d8c47` |
| 28 | `theorem` | [algHom_fieldRange_eq_of_comp_eq_of_range_eq](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/alghom-fieldrange-eq-of-comp-eq-of-range-eq--8f63be20f4612d0093cba4b5.md) | 231 | `result-track:8f63be20f4612d0093cba4b5a2e1abbc5152d2c4d15c76c12a9ba4e9d85c04e6` |
| 29 | `theorem` | [liftAlgHom_fieldRange](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/liftalghom-fieldrange--a009eef44b4e1c0083049363.md) | 244 | `result-track:a009eef44b4e1c00830493639cb857d9ad2752599519dfb9e66068e33d5fe607` |
| 30 | `theorem` | [liftAlgHom_fieldRange_eq_of_range_eq](../../../../mathematics/Algebra/Algebra/Variantd4c3fbd1e0897b48aa533f951750bbb061cd9e7e7bea28f006e2bd44dd479475.lean/declarations/liftalghom-fieldrange-eq-of-range-eq--402901cd3e87db214cc3a037.md) | 250 | `result-track:402901cd3e87db214cc3a03705b5c44ea848f1ed3602989cf405bd222616855f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
