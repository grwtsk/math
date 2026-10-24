# Verification target: GRWTSK.Algebra.LinearAlgebra.Grassmannian.Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b48efab06cae25d2d8ed36dce09a7100e89360a5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b48efab06cae25d2d8ed36dce09a7100e89360a5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.QuotientConvention` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pivotTransition](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition--42ba5ffc0d3fcd4349961c03.md) | 33 | `declaration-track:42ba5ffc0d3fcd4349961c0391dd526bf3db08e9a04859fde94dffd086e570fe` |
| 2 | `theorem` | [pivotTransition_eq_normalized_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition-eq-normalized-submatrix--e10e80970b3e3801fd9326cf.md) | 38 | `result-track:e10e80970b3e3801fd9326cfc0c155ad7286faa3eaea3ce2619da02807851d3b` |
| 3 | `theorem` | [pivotTransition_mul_normalize](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition-mul-normalize--4d3652001ea2c40a26d32bc0.md) | 45 | `result-track:4d3652001ea2c40a26d32bc0fd6df8a54a22ea0e725a68c849de4f1e9e0c2d06` |
| 4 | `theorem` | [pivotTransition_self](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition-self--7fcf0057f0196a2720c42fc4.md) | 52 | `result-track:7fcf0057f0196a2720c42fc4f2ac53ebe6fc67fbf16e48b880355b45dea0b72a` |
| 5 | `theorem` | [pivotTransition_cocycle](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition-cocycle--fbc8d445751307fa249e8334.md) | 58 | `result-track:fbc8d445751307fa249e83343ef86d3d97f975a534ede7a49fc389c29bc847b0` |
| 6 | `theorem` | [pivotTransition_reverse_mul](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition-reverse-mul--c423087a9a93b0f0b765ca07.md) | 66 | `result-track:c423087a9a93b0f0b765ca07b351798191bbd478e1e888406fab88e1ac524cd4` |
| 7 | `theorem` | [det_pivotTransition_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/det-pivottransition-ne-zero--69e2535944774643e6f4ef30.md) | 73 | `result-track:69e2535944774643e6f4ef301a15c84cab7d16cfdabb787534b58cd72530075a` |
| 8 | `theorem` | [pivotTransition_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition-reverse--5925ad357e9811b628d3d078.md) | 81 | `result-track:5925ad357e9811b628d3d078e8ea3c7e6b2a25187de4680be638ff13c79d6f9a` |
| 9 | `theorem` | [det_pivotTransition](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/det-pivottransition--58a2c50946e89f8bdec961ca.md) | 95 | `result-track:58a2c50946e89f8bdec961ca2caf7df3adf2ca13788d28c3dff5ad0627629cca` |
| 10 | `theorem` | [det_pivotTransition_pos](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/det-pivottransition-pos--fe096378226e1ca1e68a5e1b.md) | 102 | `result-track:fe096378226e1ca1e68a5e1be983d5e9651f1f6ef3deee1493bb966ab41f78a6` |
| 11 | `theorem` | [pivotTransition_eq_of_rowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition-eq-of-rowspace-eq--46346d8dd87069a309223ae8.md) | 110 | `result-track:46346d8dd87069a309223ae813b8cf4d339ed98496d8d1621e0d06a292840ff2` |
| 12 | `theorem` | [pivotNormalize_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivotnormalize-mul-left--e2aa5d8ecb49beb28a887958.md) | 118 | `result-track:e2aa5d8ecb49beb28a887958499fed2a170af6d65fa29d509ef36e26ac131f36` |
| 13 | `theorem` | [pivotTransition_mul_left](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition-mul-left--a9755552a2dc35bb21320ce6.md) | 128 | `result-track:a9755552a2dc35bb21320ce6b65ef6436e50947ceec5398c2eef787154f2fcc1` |
| 14 | `def` | [pivotCoefficientTransport](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivotcoefficienttransport--18ac91941455b778288d3ee5.md) | 136 | `declaration-track:18ac91941455b778288d3ee50cfdbc95ed12426f0b7da5465fbde6372d3db70b` |
| 15 | `theorem` | [pivotCoefficientTransport_realize](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivotcoefficienttransport-realize--5c670a05f2a84eea66746f3b.md) | 141 | `result-track:5c670a05f2a84eea66746f3b0c19629d20042348fc8b8c14da07019b98c81ef0` |
| 16 | `theorem` | [pivotCoefficientTransport_comp](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivotcoefficienttransport-comp--b5a2730c7f10ab6a7aa74f3c.md) | 149 | `result-track:b5a2730c7f10ab6a7aa74f3c8aa53dd2676ba7eb35adc41dec85d1a637fab32a` |
| 17 | `def` | [pivotCoefficientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivotcoefficientequiv--d3f73021e68a8e01f0bf87ee.md) | 157 | `declaration-track:d3f73021e68a8e01f0bf87ee2c3ce25b3a774cbace18ee54f9b0664cc118d8de` |
| 18 | `theorem` | [pivotTransition_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivottransition-zero--5c50b2c0a3e4651c354241c1.md) | 172 | `result-track:5c50b2c0a3e4651c354241c147046bee4cfee1bc00247eea557dbcd416206b39` |
| 19 | `theorem` | [pivotNormalize_whole](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/pivotnormalize-whole--2e5ff062e031cb08becf9053.md) | 178 | `result-track:2e5ff062e031cb08becf9053010e3dab55eefa86e23de1f435531f46ce45e397` |
| 20 | `theorem` | [no_fullRankFrame_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Grassmannian/Variant15e4791354d36d9a3fc1158ed56e5b9a49588022128b09cb8aaf8ef0d6c51add.lean/declarations/no-fullrankframe-of-lt--1e175caec08c169341ee7040.md) | 184 | `result-track:1e175caec08c169341ee704051dd82386fa9f3dbde8f8b2eb3be77c5564a4240` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
