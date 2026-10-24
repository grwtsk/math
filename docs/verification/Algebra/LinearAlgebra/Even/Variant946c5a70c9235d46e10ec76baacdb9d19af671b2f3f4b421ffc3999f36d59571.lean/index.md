# Verification target: GRWTSK.Algebra.LinearAlgebra.Even.Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32a879bd44d4159265ea4e4a02b876af38b3a08d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32a879bd44d4159265ea4e4a02b876af38b3a08d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [even](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/even--b93290facb76bbe654665e5a.md) | 50 | `declaration-track:b93290facb76bbe654665e5a96f943e314b7b872acd3b3aadb6df671efcf2b43` |
| 2 | `theorem` | [even_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/even-tosubmodule--de4daba2b4d91a25bce084d9.md) | 55 | `result-track:de4daba2b4d91a25bce084d9e03e0b1aaa084dd3dad65bd46139a81aacf06ffa` |
| 3 | `structure` | [EvenHom](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/evenhom--6d6e5ea8660c4e839a56702f.md) | 62 | `declaration-track:6d6e5ea8660c4e839a56702f9b944f4b2c408518c0cc4f584ae01ff553e81c20` |
| 4 | `def` | [EvenHom.compr₂](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/evenhom-compr--05db657d08554cc543695b4c.md) | 71 | `declaration-track:05db657d08554cc543695b4c7b3bdb554b38dfcc54f236e009fd10a4e7307afc` |
| 5 | `def` | [even.ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/even--f4990f0ef88211be6b6254ee.md) | 80 | `declaration-track:f4990f0ef88211be6b6254eec5db7c5bebe971b1cff9f5af1f8d7c1d94281e16` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/instance--3c64da2c38013f57e38232ab.md) | 95 | `declaration-track:3c64da2c38013f57e38232abca43e37e80d5ac7b387c5107ccc90e21213068e8` |
| 7 | `theorem` | [even.algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/even-alghom-ext--2c5ed2967ae4018e67781563.md) | 104 | `result-track:2c5ed2967ae4018e677815630fc904ff42ae6283a130e4ec60011149254b2596` |
| 8 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/s--920e613894ff924247f25003.md) | 124 | `declaration-track:920e613894ff924247f250037f301e38ec1e0048ea0636ad23735a1d940f6377` |
| 9 | `def` | [fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/ffold--8b6e83ffa1ee70dd6e4f6933.md) | 131 | `declaration-track:8b6e83ffa1ee70dd6e4f69334025866e3ffd7d6f959171fc14a58a955ed8704c` |
| 10 | `theorem` | [fst_fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/fst-ffold-ffold--25388fc716a42573312e8916.md) | 159 | `result-track:25388fc716a42573312e8916add50a50e43798528cd91f5c3192f39e2addaa90` |
| 11 | `theorem` | [snd_fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/snd-ffold-ffold--fe9c897e9a2d7cff36cfa7f1.md) | 164 | `result-track:fe9c897e9a2d7cff36cfa7f1e57e40d20f788f40a62c2c37792893cb3c9d8353` |
| 12 | `theorem` | [fFold_fFold](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/ffold-ffold--1f7e36f40a27487826cb9e21.md) | 168 | `result-track:1f7e36f40a27487826cb9e21edf7eb1f10c1eb3f690963b927715801b8bf00c2` |
| 13 | `def` | [aux](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/aux--beca6ab1b96b682d22be222f.md) | 189 | `declaration-track:beca6ab1b96b682d22be222ff11a525aa5b05ec3e539b0ecb2c16ef27af58f56` |
| 14 | `theorem` | [aux_one](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/aux-one--6311d4b9dc3b15c75f3a04ae.md) | 194 | `result-track:6311d4b9dc3b15c75f3a04ae3810ec182bdf040f64e53981be694833c6e31560` |
| 15 | `theorem` | [aux_ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/aux--5ae4a167978f69c2d35d9fe6.md) | 198 | `result-track:5ae4a167978f69c2d35d9fe64787b82ec68a59095c693411b25a14538e8e6397` |
| 16 | `theorem` | [aux_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/aux-algebramap--af57dc7543727330eae75561.md) | 205 | `result-track:af57dc7543727330eae75561559caf3d976b9536135e8c30e652d51629062e71` |
| 17 | `theorem` | [aux_mul](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/aux-mul--ee8971bbdef6ebcf1e5cc243.md) | 209 | `result-track:ee8971bbdef6ebcf1e5cc243be62a0b57547a1f79635f13987a717b9076c5ae1` |
| 18 | `def` | [even.lift](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/even-lift--0ac9dacc2fda891a1cd3aaf7.md) | 236 | `declaration-track:0ac9dacc2fda891a1cd3aaf76b0c329f9813d62b1fcdaac237e77b2da6919c7c` |
| 19 | `theorem` | [even.lift_ι](../../../../../mathematics/Algebra/LinearAlgebra/Even/Variant946c5a70c9235d46e10ec76baacdb9d19af671b2f3f4b421ffc3999f36d59571.lean/declarations/even-lift--290f7074ca5bc6e71190be65.md) | 243 | `result-track:290f7074ca5bc6e71190be656817758baf020c3869b0324b64fedfd11b7a16d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
