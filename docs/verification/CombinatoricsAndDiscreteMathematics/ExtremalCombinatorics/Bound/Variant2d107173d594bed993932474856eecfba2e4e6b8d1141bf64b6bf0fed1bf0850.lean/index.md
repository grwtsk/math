# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.Bound.Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ce16573f6aba4ab33e620dcc7c54471938c0bed",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ce16573f6aba4ab33e620dcc7c54471938c0bed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/macro-rules--18baba768623ffbd08330967.md) | 35 | `declaration-track:18baba768623ffbd083309674d492e5482bc14a419335b8ead5f66445567e146` |
| 2 | `def` | [stepBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/stepbound--39e149a1b77d5573216db60a.md) | 43 | `declaration-track:39e149a1b77d5573216db60adf2f1a4fe58106a6f34de4806384dd7661488743` |
| 3 | `theorem` | [le_stepBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/le-stepbound--de50c451ed94c6739ecc506b.md) | 47 | `result-track:de50c451ed94c6739ecc506ba46624cefe04d36095364cb87cbe554b92886f5e` |
| 4 | `theorem` | [stepBound_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/stepbound-mono--4d818f255112e818fd525c4e.md) | 50 | `result-track:4d818f255112e818fd525c4eebbf9c50a3e932b108ed9d7c22539743af635a05` |
| 5 | `theorem` | [stepBound_pos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/stepbound-pos-iff--22825ec943b720be7c3d8552.md) | 54 | `result-track:22825ec943b720be7c3d85525607fb23da5efbb211b4a39a78a88a2d2e061c8c` |
| 6 | `theorem` | [eps_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/eps-pos--760cc7b10265fd40f79995dc.md) | 76 | `result-track:760cc7b10265fd40f79995dc348932f3538867bfbfa0f7de42a57ceee1fd3ff4` |
| 7 | `theorem` | [m_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/m-pos--6bf5388a34d05414f02ec3a6.md) | 80 | `result-track:6bf5388a34d05414f02ec3a6b86fb18d078d56da0e1df7fe66cc2ae478a39243` |
| 8 | `macro` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/macro--1dfddb6d2463557a6c1d6e9d.md) | 88 | `declaration-track:1dfddb6d2463557a6c1d6e9d23b46c4961f0931c901854e2231bcdb1b79943c4` |
| 9 | `theorem` | [m_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/m-pos--5a5f569f688bfce71010448d.md) | 113 | `result-track:5a5f569f688bfce71010448d48e4856d2534a1769cd6914f1441011ee51e3a76` |
| 10 | `theorem` | [coe_m_add_one_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/coe-m-add-one-pos--08cde4d418fd7cc3aaf08921.md) | 117 | `result-track:08cde4d418fd7cc3aaf08921ab8f1ab36291c07dac24bcc70ac8995e88145f40` |
| 11 | `theorem` | [one_le_m_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/one-le-m-coe--cbd71a561b4d2276e12b0407.md) | 120 | `result-track:cbd71a561b4d2276e12b0407803b7da59ef28f9f2b594940c47e2e104dc432ac` |
| 12 | `theorem` | [eps_pow_five_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/eps-pow-five-pos--defc69a5f0ffd12d6ab9300d.md) | 124 | `result-track:defc69a5f0ffd12d6ab9300d88dec42b0d8708af0eebbb6b29446605272aac64` |
| 13 | `theorem` | [eps_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/eps-pos--6ed7b8e8300080d188647b27.md) | 128 | `result-track:6ed7b8e8300080d188647b2714125adda77ce67b3b4a630de3e9d011a9aaea40` |
| 14 | `theorem` | [hundred_div_ε_pow_five_le_m](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/hundred-div-pow-five-le-m--b0672da2cc70149591c9d0bb.md) | 132 | `result-track:b0672da2cc70149591c9d0bb0a5d546d2b1d28aaa073bed3ed2bcf182c35ee5c` |
| 15 | `theorem` | [hundred_le_m](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/hundred-le-m--b31758b22b2a64fe3085e03c.md) | 141 | `result-track:b31758b22b2a64fe3085e03c86fe6eb6a1b305d1cc128f6f60b9a04ddb6d8749` |
| 16 | `theorem` | [a_add_one_le_four_pow_parts_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/a-add-one-le-four-pow-parts-card--280d5a0298ba77817750a566.md) | 148 | `result-track:280d5a0298ba77817750a5664b405a3ea7273fed8e08cf116ab58efd5966bfb7` |
| 17 | `theorem` | [card_aux₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/card-aux--3bd8a6d3e0f93e2eade57b03.md) | 156 | `result-track:3bd8a6d3e0f93e2eade57b0393464d1d3eb4526f1065742aed833ab370172ec6` |
| 18 | `theorem` | [card_aux₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/card-aux--29be85aa27cde24bcb5e7736.md) | 162 | `result-track:29be85aa27cde24bcb5e7736320815e629853711c1a839e9ec52c3ccfcc347e7` |
| 19 | `theorem` | [pow_mul_m_le_card_part](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/pow-mul-m-le-card-part--5fc12db9bc88b16a3936d957.md) | 174 | `result-track:5fc12db9bc88b16a3936d957140ae42c9e48de39b17f5c5638166400152ca810` |
| 20 | `def` | [initialBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/initialbound--2b2b31295e6a766e63e9ca48.md) | 185 | `declaration-track:2b2b31295e6a766e63e9ca4849629b25530a51aed4ded35e0895105dada2f05e` |
| 21 | `theorem` | [le_initialBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/le-initialbound--72b8ca2bd778018ae8964587.md) | 189 | `result-track:72b8ca2bd778018ae89645872012b68685427ab04595f11c6ea8c59eb2efdcd9` |
| 22 | `theorem` | [seven_le_initialBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/seven-le-initialbound--2dde4b3d7ff0d4b75bd12d16.md) | 193 | `result-track:2dde4b3d7ff0d4b75bd12d162f3084dd7ee860605e476bd2b256ebbb8dd369ef` |
| 23 | `theorem` | [initialBound_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/initialbound-pos--c3eef6f7b261908174bf0017.md) | 197 | `result-track:c3eef6f7b261908174bf001745bd55b4eb71d7c178db3665dbf5a90e6c71ddc4` |
| 24 | `theorem` | [hundred_lt_pow_initialBound_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/hundred-lt-pow-initialbound-mul--51dd7541f9d6ec9eb09d8a16.md) | 201 | `result-track:51dd7541f9d6ec9eb09d8a169489767a84098a9a425924daae53032b1d78627d` |
| 25 | `def` | [bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/bound--a5096b253aff5a92aeef3cf6.md) | 213 | `declaration-track:a5096b253aff5a92aeef3cf6e2c3e7303d5968c61bb59159f50ae13c3c8c00df` |
| 26 | `theorem` | [initialBound_le_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/initialbound-le-bound--96dc70baedfd0910882206b7.md) | 218 | `result-track:96dc70baedfd0910882206b773248da43804e4b2b667a64affb6d68a579dbe74` |
| 27 | `theorem` | [le_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/le-bound--b7e325e1a9f11262e9516bf5.md) | 222 | `result-track:b7e325e1a9f11262e9516bf595c74ab261a7bfed03fb8a837b149a0778fe848c` |
| 28 | `theorem` | [bound_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/bound-pos--c91f2611bf92a6b4ec01eb82.md) | 226 | `result-track:c91f2611bf92a6b4ec01eb82d2c1833056a2080003c0c9fa70b6e5294fda6c41` |
| 29 | `theorem` | [mul_sq_le_sum_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/mul-sq-le-sum-sq--0a4e4c8eca2c6410ef88cc07.md) | 233 | `result-track:0a4e4c8eca2c6410ef88cc073436d6ce5106c722fc1211b6d2e64ee273eccf3f` |
| 30 | `theorem` | [add_div_le_sum_sq_div_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/add-div-le-sum-sq-div-card--e0cf9dd6861eb5ef5e64b69e.md) | 240 | `result-track:e0cf9dd6861eb5ef5e64b69eb3c7844f4ce0031c144ca8877955763b5cd68357` |
| 31 | `def` | [evalInitialBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/evalinitialbound--171fb224196a3eaa5ce2797e.md) | 277 | `declaration-track:171fb224196a3eaa5ce2797ed8ffc6924502d28f06a98b4299636c56f13558b0` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/example--9710637988b9dd4cb9110332.md) | 281 | `declaration-track:9710637988b9dd4cb9110332b55831e55cef3dbb754e42531074b74cdd97dfd8` |
| 33 | `def` | [evalBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/evalbound--0fc3015e8d7ad6f9f5c974d2.md) | 285 | `declaration-track:0fc3015e8d7ad6f9f5c974d2383a039ff170c508143514b4dba828375ef697bd` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/declarations/example--c4004d68123ab31fdbad631f.md) | 289 | `declaration-track:c4004d68123ab31fdbad631f93b168a3b6c862922d63a59cdd9dd9c64777c38a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
