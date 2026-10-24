# Verification target: GRWTSK.Algebra.Units.Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85722eca425e4121a074593105c5c6eb5ca1c87c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/index.md) · [Full source](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85722eca425e4121a074593105c5c6eb5ca1c87c`.

Source path: `GRWTSK/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.InjSurj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/instance--3bbc004dfe8599f2a7983a24.md) | 38 | `declaration-track:3bbc004dfe8599f2a7983a2479fe9a18058381eeb7e32784f5bfbb6cd3a188cd` |
| 2 | `theorem` | [val_neg](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/val-neg--d1d46ea572b05d95960cf89d.md) | 44 | `result-track:d1d46ea572b05d95960cf89d207a9b2e968c1f9787ceeda3dfd23cf47e5c6420` |
| 3 | `theorem` | [coe_neg_one](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/coe-neg-one--8a6fa1beca17fd2a19b3024a.md) | 49 | `result-track:8a6fa1beca17fd2a19b3024a6e6fde5e6f82a3297db43f5534c7364e39c9ad9a` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/instance--770a8c90b434b217d9683bf5.md) | 53 | `declaration-track:770a8c90b434b217d9683bf507ea4eddf452aa7352a98cbb7dc6db2b35869ffe` |
| 5 | `theorem` | [neg_divp](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/neg-divp--7daec8ca8a90784b22995b81.md) | 57 | `result-track:7daec8ca8a90784b22995b816f4befa3539f5fab93732058b7102424dd0409d5` |
| 6 | `theorem` | [divp_add_divp_same](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/divp-add-divp-same--c60845700cd2a45be73cf1d6.md) | 68 | `result-track:c60845700cd2a45be73cf1d671e587637da66cd63520a1b0250540a90c1c1fb0` |
| 7 | `theorem` | [divp_sub_divp_same](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/divp-sub-divp-same--5a65566d6d40aef8f6c24466.md) | 74 | `result-track:5a65566d6d40aef8f6c24466437dccdff2313acb7e3eac60758ac3ae0fe78df1` |
| 8 | `theorem` | [add_divp](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/add-divp--4246a62115a14c45afb3eab7.md) | 79 | `result-track:4246a62115a14c45afb3eab72100cd68cb6588fc7f05d800430f3d98e327adae` |
| 9 | `theorem` | [sub_divp](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/sub-divp--b37a34296779dfed824c10d3.md) | 84 | `result-track:b37a34296779dfed824c10d352e0455cd75a1e1f7c81a2c648ca6b6c7e904ccb` |
| 10 | `theorem` | [divp_add](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/divp-add--8a3b23718399155a9e20b27c.md) | 89 | `result-track:8a3b23718399155a9e20b27c75ee6d47b2acc3c01b8911e8f9448c1ac764494f` |
| 11 | `theorem` | [divp_sub](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/divp-sub--5b36bbbed3890a3be8e68d77.md) | 94 | `result-track:5b36bbbed3890a3be8e68d7772fbdaae956a2293814b18eb8843f59166e1d8ac` |
| 12 | `theorem` | [IsUnit.neg](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/isunit-neg--20106e85762d9227390eca07.md) | 103 | `result-track:20106e85762d9227390eca075342d3aa45806d3aaf04c9a35f6b08aad1ab6faa` |
| 13 | `theorem` | [IsUnit.neg_iff](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/isunit-neg-iff--50b65ac8ebcbe2358a2a5e1c.md) | 108 | `result-track:50b65ac8ebcbe2358a2a5e1c9619819cec9cd34b063d4224ba0c57fd91fcdc5a` |
| 14 | `theorem` | [IsUnit.sub_iff](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/isunit-sub-iff--30702ea1a7b1f87919c146e3.md) | 112 | `result-track:30702ea1a7b1f87919c146e3bc52e2d065bd0513425f5adbc8f875e76cc6ceb4` |
| 15 | `theorem` | [divp_add_divp](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/divp-add-divp--96ea3a395bc32ce6a8373799.md) | 119 | `result-track:96ea3a395bc32ce6a83737997ae366dd6fef5b7712409d80ee9fb812c11227c5` |
| 16 | `theorem` | [divp_sub_divp](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/divp-sub-divp--52ff81e7406c2c16ed516389.md) | 129 | `result-track:52ff81e7406c2c16ed516389deed52b3949b87342ac3d1d5386c629dd5b20fbc` |
| 17 | `theorem` | [add_eq_mul_one_add_div](../../../../mathematics/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/declarations/add-eq-mul-one-add-div--092d80422a53a62865408570.md) | 134 | `result-track:092d80422a53a62865408570007a64eb2956b731e475598fec9cecf621c5ad65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
