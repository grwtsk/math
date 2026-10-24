# Verification target: GRWTSK.Algebra.LinearAlgebra.Sequence.Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2964b092d1becb19f9d4f2c3380b870f811a02f8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2964b092d1becb19f9d4f2c3380b870f811a02f8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Monic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sequence](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/sequence--1e31a362f32c46b6e14276c8.md) | 40 | `declaration-track:1e31a362f32c46b6e14276c88e3755bd9ec966aa529f8a77d231b80329d9ba44` |
| 2 | `instance` | [coeFun](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/coefun--ec88948d327e3d94acf4dbb0.md) | 53 | `declaration-track:ec88948d327e3d94acf4dbb0ac3ef3d02070d23ffb742ed0f60790e55ce685ba` |
| 3 | `lemma` | [degree_eq](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/degree-eq--a6cdae8431ff08e1acb47616.md) | 61 | `result-track:a6cdae8431ff08e1acb476167c7a947ef55b3f36c4e2ef1af668662def36c471` |
| 4 | `lemma` | [natDegree_eq](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/natdegree-eq--9823240b7606ce6305273c4e.md) | 65 | `result-track:9823240b7606ce6305273c4ee8f8d290a1e06112f691cfbfe79728b748dfdfc1` |
| 5 | `lemma` | [ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/ne-zero--9c223158d8791a2ad9a84f67.md) | 69 | `result-track:9c223158d8791a2ad9a84f67ebbbe73e6ed2b980973e53d3fbdd0107fa195e87` |
| 6 | `lemma` | [degree_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/degree-strictmono--6b33b0bed2ef00b4fbd11191.md) | 72 | `result-track:6b33b0bed2ef00b4fbd111912c2935d026586d8e446e6737f6224dfba522fe1b` |
| 7 | `lemma` | [natDegree_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/natdegree-strictmono--6d4a413c095f129c6b150877.md) | 75 | `result-track:6d4a413c095f129c6b1508778e3d0e7fbf1ec6017a68ffa7624e99b41b769195` |
| 8 | `lemma` | [span](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/span--214ac389a29a039b4814f6e3.md) | 84 | `result-track:214ac389a29a039b4814f6e392ac14c61ec06d0ba751372522456692d8be0bd3` |
| 9 | `lemma` | [linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/linearindependent--7a4fb906f891501c069290a8.md) | 155 | `result-track:7a4fb906f891501c069290a8d62ac95201a4d5c739f9eed1faf5dcefdad72e5c` |
| 10 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/basis--ff119160a348bc925f35b7b3.md) | 175 | `declaration-track:ff119160a348bc925f35b7b322491d3beb8ff3f1f03eea24081828a97c7205ac` |
| 11 | `lemma` | [basis_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/basis-eq-self--d07578616bcdf08a288f68c4.md) | 180 | `result-track:d07578616bcdf08a288f68c413aeabafd4fbfa1b01e7d1a413bbfdc50c2e6c55` |
| 12 | `lemma` | [basis_degree_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/basis-degree-strictmono--cf3ca77eb508a7d72f6bcd36.md) | 183 | `result-track:cf3ca77eb508a7d72f6bcd360939899fdf8169142930bd53656f075dd5df324e` |
| 13 | `lemma` | [basis_natDegree_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Sequence/Variantf820a44e1921cfe5ad52c31a2ac8abdecaa7580f6a3a1390453e39f3c31eb7b7.lean/declarations/basis-natdegree-strictmono--a575ee6ebabda202ea4256b0.md) | 186 | `result-track:a575ee6ebabda202ea4256b099bf30036c3ca0d939d2fb86106fede21b32b55e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
