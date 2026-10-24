# Verification target: GRWTSK.Algebra.CommutativeAlgebra.CauchyBound.Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d779463f386f0892e8a9a99b8fc982d2fc4dcde3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d779463f386f0892e8a9a99b8fc982d2fc4dcde3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cauchyBound](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/cauchybound--45f53a19a763f3ff1634fafe.md) | 37 | `declaration-track:45f53a19a763f3ff1634fafe22d8bb3f4163cbd65e1924ef843ff71451ca3754` |
| 2 | `lemma` | [one_le_cauchyBound](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/one-le-cauchybound--26d53946b5a9a74247bf1bfe.md) | 41 | `result-track:26d53946b5a9a74247bf1bfea759eb6aa04e0f52e7b2eb4db316ec5417f4ec4a` |
| 3 | `lemma` | [cauchyBound_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/cauchybound-zero--b1e0cd5029f921ef351d006d.md) | 45 | `result-track:b1e0cd5029f921ef351d006d4d6b2e9cf55778dddf58ed0c819209220e8ea8fc` |
| 4 | `lemma` | [cauchyBound_C](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/cauchybound-c--9a761d6a1c5770a4eb183f0d.md) | 49 | `result-track:9a761d6a1c5770a4eb183f0d8e15a1237ac819476ce0c7df187dea8d5671d489` |
| 5 | `lemma` | [cauchyBound_one](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/cauchybound-one--327100aba5253932347d2c1d.md) | 53 | `result-track:327100aba5253932347d2c1dbbbaa4e2673ca9a9226c692743fedda17e69de1d` |
| 6 | `lemma` | [cauchyBound_X](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/cauchybound-x--8e624ba63c7816166a67a6eb.md) | 56 | `result-track:8e624ba63c7816166a67a6eb477961361ef4c02fe7e92e2c8abe9f0e56a3ca9e` |
| 7 | `lemma` | [cauchyBound_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/cauchybound-x-add-c--e1ee0170a8fce38769d90f10.md) | 60 | `result-track:e1ee0170a8fce38769d90f10a7f8797b6f8d19a46a31c434ff77298790afdb2e` |
| 8 | `lemma` | [cauchyBound_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/cauchybound-x-sub-c--c703eb3e4c43a204003bd54d.md) | 64 | `result-track:c703eb3e4c43a204003bd54d3ecb75cbccaecba53fd482e09e3476d699f10ed7` |
| 9 | `lemma` | [cauchyBound_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/cauchybound-smul--3a0b3164283359ec1368d6f5.md) | 68 | `result-track:3a0b3164283359ec1368d6f52bdac05605c1059837bc2a00e876f942ee936c9c` |
| 10 | `theorem` | [IsRoot.norm_lt_cauchyBound](../../../../../mathematics/Algebra/CommutativeAlgebra/CauchyBound/Variant6a06c023754aecbc703797a2857506e5ec5c5e7f9f07bcb3e03f8fbf40584e62.lean/declarations/isroot-norm-lt-cauchybound--e65971d78c45dcad360f6a42.md) | 78 | `result-track:e65971d78c45dcad360f6a42103c88bceb884ec0250aab6486f1bc66a7da1e8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
