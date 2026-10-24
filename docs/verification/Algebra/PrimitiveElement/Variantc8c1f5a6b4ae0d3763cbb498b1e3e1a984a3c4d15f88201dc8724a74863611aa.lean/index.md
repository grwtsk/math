# Verification target: GRWTSK.Algebra.PrimitiveElement.Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6496f05dabad7c51dd05de34d543e6145817149e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/index.md) · [Full source](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6496f05dabad7c51dd05de34d543e6145817149e`.

Source path: `GRWTSK/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pigeonhole` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.UniqueFactorization` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_primitive_element_of_finite_top](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/exists-primitive-element-of-finite-top--548f1c8b430aafc74e309927.md) | 55 | `result-track:548f1c8b430aafc74e309927a6d1aa602ca95cc55825257b6ac50657840f6a17` |
| 2 | `theorem` | [exists_primitive_element_of_finite_bot](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/exists-primitive-element-of-finite-bot--9eb72740ca9105a98dcb8ba8.md) | 68 | `result-track:9eb72740ca9105a98dcb8ba8cad7d25d9863ddee4972e1b74ae49cac75018e1a` |
| 3 | `theorem` | [primitive_element_inf_aux_exists_c](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/primitive-element-inf-aux-exists-c--b440a95c0a9aa794414f8c14.md) | 82 | `result-track:b440a95c0a9aa794414f8c14042afd9aa534b4df76932ea19c62d81fa3f36efe` |
| 4 | `theorem` | [primitive_element_inf_aux](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/primitive-element-inf-aux--9ad810e465270f92da0c495b.md) | 101 | `result-track:9ad810e465270f92da0c495b605baa80be3a051d9df1e0ea3ad06e77d191916d` |
| 5 | `theorem` | [primitive_element_inf_aux_of_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/primitive-element-inf-aux-of-finite-intermediatefield--3125b0edbd2199c230f5cf29.md) | 171 | `result-track:3125b0edbd2199c230f5cf29f8e9ad0f0940a388aa301021652177fd92a69573` |
| 6 | `theorem` | [exists_primitive_element](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/exists-primitive-element--055d07fa11a2827fa43abe88.md) | 207 | `result-track:055d07fa11a2827fa43abe88f2e15fb0259a36e3a8854d45219b32f22db8d943` |
| 7 | `def` | [powerBasisOfFiniteOfSeparable](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/powerbasisoffiniteofseparable--14d1766a9574f71d19d7f33f.md) | 225 | `declaration-track:14d1766a9574f71d19d7f33fae49da859a802de2af9c40136f167987ce3adbd1` |
| 8 | `theorem` | [isAlgebraic_of_adjoin_eq_adjoin](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/isalgebraic-of-adjoin-eq-adjoin--98a43a98947075459eb1b060.md) | 236 | `result-track:98a43a98947075459eb1b06030bd696815cb7844446600aaf4ae6aebd256acb8` |
| 9 | `theorem` | [isAlgebraic_of_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/isalgebraic-of-finite-intermediatefield--23bc34e622b28dde394e509e.md) | 267 | `result-track:23bc34e622b28dde394e509e82df62a32e1be16e5a1f60a49d9a2d97aafaabac` |
| 10 | `theorem` | [FiniteDimensional.of_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/finitedimensional-of-finite-intermediatefield--b48bbc968e664284cfc3f389.md) | 272 | `result-track:b48bbc968e664284cfc3f38917daaca0ffb003738fde8b427506faacd1fbddd6` |
| 11 | `theorem` | [exists_primitive_element_of_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/exists-primitive-element-of-finite-intermediatefield--b74495a8e34f9612d67ed9f1.md) | 284 | `result-track:b74495a8e34f9612d67ed9f1697f93d50b404492e438e87c64389b81c0762f7c` |
| 12 | `theorem` | [FiniteDimensional.of_exists_primitive_element](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/finitedimensional-of-exists-primitive-element--246336f7116f3a195a269644.md) | 295 | `result-track:246336f7116f3a195a2696444f7555eac899fd0b713c1b8fc3509a33fa9beb22` |
| 13 | `theorem` | [finite_intermediateField_of_exists_primitive_element](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/finite-intermediatefield-of-exists-primitive-element--1e3ab0c16378f42c081e9d20.md) | 303 | `result-track:1e3ab0c16378f42c081e9d2036180c3cd6197b47d2b748a791c9263053897190` |
| 14 | `theorem` | [exists_primitive_element_iff_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/exists-primitive-element-iff-finite-intermediatefield--5681ccb8d6c714f70c061763.md) | 331 | `result-track:5681ccb8d6c714f70c061763d9c905e3eef9f58fa2296a8829dd4658916f9d06` |
| 15 | `theorem` | [AlgHom.card_of_splits](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/alghom-card-of-splits--04959547b9ca4aacb4b7e64a.md) | 345 | `result-track:04959547b9ca4aacb4b7e64a3e79a66d958ad5f00253d98647d630655dde7832` |
| 16 | `theorem` | [AlgHom.card](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/alghom-card--0f507da5906c45ec85120686.md) | 353 | `result-track:0f507da5906c45ec85120686ddc4b9fb91d899ad09cf0fb20d02e966fe443ff5` |
| 17 | `theorem` | [primitive_element_iff_minpoly_natDegree_eq](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/primitive-element-iff-minpoly-natdegree-eq--798ff6aabfd0143e7125264d.md) | 365 | `result-track:798ff6aabfd0143e7125264d85c4fdf7c29f6d3a54866e626c4b9fad0e8ce92b` |
| 18 | `theorem` | [primitive_element_iff_minpoly_degree_eq](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/primitive-element-iff-minpoly-degree-eq--cf14bd30878103d973445816.md) | 371 | `result-track:cf14bd30878103d9734458164e6b500e97036f18b5cb9dd80b28a7315c2a490f` |
| 19 | `theorem` | [primitive_element_iff_algHom_eq_of_eval'](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/primitive-element-iff-alghom-eq-of-eval--25c1facfd137e86fcdedca2d.md) | 380 | `result-track:25c1facfd137e86fcdedca2d0554a58fd64323acfc83597d57513f5ee7b0fb6c` |
| 20 | `theorem` | [primitive_element_iff_algHom_eq_of_eval](../../../../mathematics/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/declarations/primitive-element-iff-alghom-eq-of-eval--c2505f6dc9a3b5aa2d012b22.md) | 389 | `result-track:c2505f6dc9a3b5aa2d012b22815a558baa5847cafb8fbfa5c39911f9d56fdb80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
