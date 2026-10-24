# Verification target: GRWTSK.Algebra.LinearAlgebra.Finite.Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a901ac1beddd75f88943f88c310d01f0d4573ab2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a901ac1beddd75f88943f88c310d01f0d4573ab2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Isomorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Bilinear` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_fg_le_eq_rTensor_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/exists-fg-le-eq-rtensor-subtype--923e8b454c1e4b7b9e10212f.md) | 31 | `result-track:923e8b454c1e4b7b9e10212f785d2217c5bfeb59b8add0832f99a9c53c35ec17` |
| 2 | `theorem` | [exists_fg_le_subset_range_rTensor_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/exists-fg-le-subset-range-rtensor-subtype--c1f99dc5fc79db846663fb3c.md) | 44 | `result-track:c1f99dc5fc79db846663fb3c18bd547493b9dd65af211be028d0ba487d03e9db` |
| 3 | `theorem` | [exists_fg_le_eq_rTensor_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/exists-fg-le-eq-rtensor-inclusion--4d58ca6e233658134ef17bd2.md) | 55 | `result-track:4d58ca6e233658134ef17bd2ec6af011fc1876415b8779ec811bc221db896c96` |
| 4 | `theorem` | [exists_fg_le_subset_range_rTensor_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/exists-fg-le-subset-range-rtensor-inclusion--67dc69d664ca223fe08f4a86.md) | 62 | `result-track:67dc69d664ca223fe08f4a863f28f43b4dee45b787aa10593f49578d7c4ba5d9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/instance--f06f9a0c60d027f67ad174f9.md) | 78 | `declaration-track:f06f9a0c60d027f67ad174f9a30abfff9942f8a87eb3a7c52e5406658f01a5a4` |
| 6 | `instance` | [Module.Finite.base_change](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/module-finite-base-change--9a4dc44a7828bea1f4bdfe53.md) | 84 | `declaration-track:9a4dc44a7828bea1f4bdfe53a3a0062c0e48540e1fce0c9dab767563bb24e673` |
| 7 | `instance` | [Module.Finite.tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/module-finite-tensorproduct--5833651b5cc2e0a1876aa82c.md) | 102 | `declaration-track:5833651b5cc2e0a1876aa82c40dc99ce986a93ba86c4368ce94338cdcdf2a99c` |
| 8 | `lemma` | [Module.exists_isPrincipal_quotient_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/module-exists-isprincipal-quotient-of-finite--ba32405b22c7ab2a3c1f21ce.md) | 113 | `result-track:ba32405b22c7ab2a3c1f21cee7a0e64b5dd87652dcbb7a518bc07c1d8d946e90` |
| 9 | `lemma` | [Module.exists_surjective_quotient_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/module-exists-surjective-quotient-of-finite--bfff7637793d06d116773b3f.md) | 135 | `result-track:bfff7637793d06d116773b3f3a61271db943b63a72430495cbcde39bb5954817` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/instance--dfd7b62953a55c1523a683f6.md) | 147 | `declaration-track:dfd7b62953a55c1523a683f6acd3a7a06cd1d9be01389dba16f8ea8f19895aad` |
| 11 | `theorem` | [Subalgebra.finite_sup](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/subalgebra-finite-sup--ebab0fea98889bd55a02e71f.md) | 159 | `result-track:ebab0fea98889bd55a02e71f24e4276dce3a1e43f9735f3375cdb17d6f869350` |
| 12 | `lemma` | [RingHom.surjective_of_tmul_eq_tmul_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant0b712a68497e6d6426370391173347726826894f87e1a705e3d2fca834af0e01.lean/declarations/ringhom-surjective-of-tmul-eq-tmul-of-finite--37dd3e8a9344e1f3898cf284.md) | 166 | `result-track:37dd3e8a9344e1f3898cf2845f421879c240a5efe1f07b9eba88c09ecf001d8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
