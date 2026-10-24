# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AkraBazzi.Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baeda98308c375f8666587f7704258a9e005f82e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baeda98308c375f8666587f7704258a9e005f82e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eventually_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/eventually-deriv-rpow-p-mul-one-sub-smoothingfn--c6fa96a49e02b3718f70d5ac.md) | 82 | `result-track:c6fa96a49e02b3718f70d5acacf0a7d8b5a430b7a410a516a6cfed8cf81db91d` |
| 2 | `lemma` | [eventually_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/eventually-deriv-rpow-p-mul-one-add-smoothingfn--6bb9ca5744b98ece2a93874c.md) | 99 | `result-track:6bb9ca5744b98ece2a93874c75fcf2b150bb0d90416be3484d9d5023daf9b38f` |
| 3 | `lemma` | [isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/isequivalent-deriv-rpow-p-mul-one-sub-smoothingfn--5eaa9f13aa828480db074a77.md) | 116 | `result-track:5eaa9f13aa828480db074a77bea94c990b3bbc5decb22ae63314b26b52ddede7` |
| 4 | `lemma` | [isEquivalent_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/isequivalent-deriv-rpow-p-mul-one-add-smoothingfn--9ded2b4c47b2de47d6217271.md) | 139 | `result-track:9ded2b4c47b2de47d6217271795603295dcac0018388efe05d99fbe0846d0a49` |
| 5 | `lemma` | [isTheta_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/istheta-deriv-rpow-p-mul-one-sub-smoothingfn--ad91f743de8cd08e86b522ee.md) | 162 | `result-track:ad91f743de8cd08e86b522eed441450bcaaab7099a510c358e36bebc679b1aae` |
| 6 | `lemma` | [isTheta_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/istheta-deriv-rpow-p-mul-one-add-smoothingfn--6750707a87fd3a48e2042fe8.md) | 169 | `result-track:6750707a87fd3a48e2042fe89bea76bc1c98159f7132f4b65d2c2e6122bcd4d4` |
| 7 | `lemma` | [growsPolynomially_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/growspolynomially-deriv-rpow-p-mul-one-sub-smoothingfn--0f4f92c7528da97aed42f62a.md) | 176 | `result-track:0f4f92c7528da97aed42f62ae29067326acb2d8ac787b445d6b6922228033232` |
| 8 | `lemma` | [growsPolynomially_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/growspolynomially-deriv-rpow-p-mul-one-add-smoothingfn--ba39752c025acd2572fd01b3.md) | 195 | `result-track:ba39752c025acd2572fd01b37a2bd511bd6195d1ccd12f436089b355b139d8db` |
| 9 | `lemma` | [isBigO_apply_r_sub_b](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/isbigo-apply-r-sub-b--1169bf33f8cd99b7ec036360.md) | 217 | `result-track:1169bf33f8cd99b7ec036360bff141a033df2d9b30e5657db7d6fdf01a1c13e9` |
| 10 | `lemma` | [rpow_p_mul_one_sub_smoothingFn_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/rpow-p-mul-one-sub-smoothingfn-le--44cc530fec6dea2bbe4fad42.md) | 250 | `result-track:44cc530fec6dea2bbe4fad421473e88eb8da059c6dd141c4efbf12a429fd9324` |
| 11 | `lemma` | [rpow_p_mul_one_add_smoothingFn_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/rpow-p-mul-one-add-smoothingfn-ge--fe138de948a984744aed2939.md) | 340 | `result-track:fe138de948a984744aed29395bcb71b978c3a66b9f53f0aa48ede423fbf5601b` |
| 12 | `lemma` | [T_isBigO_smoothingFn_mul_asympBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/t-isbigo-smoothingfn-mul-asympbound--4b8c584c4d49b3829e41ff52.md) | 444 | `result-track:4b8c584c4d49b3829e41ff52217d0dc6797d42fb2f5aaed3407026a1fb42f2f9` |
| 13 | `lemma` | [smoothingFn_mul_asympBound_isBigO_T](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/smoothingfn-mul-asympbound-isbigo-t--988f8b3de6ae8a4e2cca05be.md) | 550 | `result-track:988f8b3de6ae8a4e2cca05be2c6a2788c0c944ddcf05d31ae5b7e69da616f880` |
| 14 | `theorem` | [isBigO_asympBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/isbigo-asympbound--544b6d26cabd998b17db947c.md) | 655 | `result-track:544b6d26cabd998b17db947c4b63cc7ae55d256abb1f5ebeaa9ef000bb13adee` |
| 15 | `theorem` | [isBigO_symm_asympBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/isbigo-symm-asympbound--1349063b5d7c9d546b58d930.md) | 667 | `result-track:1349063b5d7c9d546b58d9309dc64ab843f1b0f73820bb8940c58f13859df509` |
| 16 | `theorem` | [isTheta_asympBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/declarations/istheta-asympbound--e9c77138082b2d792706d824.md) | 679 | `result-track:e9c77138082b2d792706d824d0cbad35f9a1d7a484f3aefd9f684edee3d18268` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
