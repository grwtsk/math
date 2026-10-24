# Verification target: GRWTSK.Algebra.UniversalAlgebra.Bound.Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf842ed83a52bd389501d9d05128bc8c2915e983",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf842ed83a52bd389501d9d05128bc8c2915e983`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Chebyshev` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stepBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/stepbound--eb7da7f0bd4b6e30108d2472.md) | 46 | `declaration-track:eb7da7f0bd4b6e30108d2472c997ce11dfbdeb968969ddcca900a2903c08d946` |
| 2 | `theorem` | [le_stepBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/le-stepbound--5e18a8391d04ebd0a910de1d.md) | 49 | `result-track:5e18a8391d04ebd0a910de1d633d6fe75cc8358226c04e0d33601e512b6d5de0` |
| 3 | `theorem` | [stepBound_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/stepbound-mono--0ee4bc8887ea92ea944f6667.md) | 52 | `result-track:0ee4bc8887ea92ea944f66679b15c919cdd05bd054b100584279d25c5804304d` |
| 4 | `theorem` | [stepBound_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/stepbound-pos-iff--a6dc58df00f7df8eb08d3eb0.md) | 54 | `result-track:a6dc58df00f7df8eb08d3eb0004317f623b4e62e3d8a64a21541af7ca8035750` |
| 5 | `lemma` | [coe_stepBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/coe-stepbound--ec93455603442f3e8da3786a.md) | 59 | `result-track:ec93455603442f3e8da3786a99d6c155c54786bd74698a81bd6d1202b133c030` |
| 6 | `theorem` | [eps_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/eps-pos--60757212792e0d25f4d83920.md) | 75 | `result-track:60757212792e0d25f4d83920967f5a7c312a0597a0db9e86e34136df88f9e0f9` |
| 7 | `theorem` | [m_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/m-pos--459d9156dc8bb5a8c240ddeb.md) | 79 | `result-track:459d9156dc8bb5a8c240ddebd00b38833e449832f39fc64269361f36934281f5` |
| 8 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/macro--5c656cea765ebc68d0fc34af.md) | 85 | `declaration-track:5c656cea765ebc68d0fc34af2411cc63ef1b5840c9c10245809cb00ab9415e26` |
| 9 | `theorem` | [m_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/m-pos--fd6bd479d5aa4d9657463015.md) | 110 | `result-track:fd6bd479d5aa4d96574630153b43c1ef17feb52f292c20e5a2ad78240c929d98` |
| 10 | `theorem` | [coe_m_add_one_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/coe-m-add-one-pos--421de31bb86d5b438aa03373.md) | 113 | `result-track:421de31bb86d5b438aa03373723aadc7f4f7f1fe7ed9181162d1c65f721f247a` |
| 11 | `theorem` | [one_le_m_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/one-le-m-coe--b12de6c106b9e9c3e8572ad6.md) | 115 | `result-track:b12de6c106b9e9c3e8572ad6d7b5e9f3e1430e6fc51fcb5cb12a6513453bc90e` |
| 12 | `theorem` | [eps_pow_five_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/eps-pow-five-pos--843a3000abd8e15265097fbd.md) | 118 | `result-track:843a3000abd8e15265097fbd788498f1b8240650668bdadbc717cc5d918b64c5` |
| 13 | `theorem` | [eps_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/eps-pos--a5780a9b73a9bed66d6e5b18.md) | 121 | `result-track:a5780a9b73a9bed66d6e5b189a9bbc80e8c79ed343882c158ccc066be9e68235` |
| 14 | `theorem` | [hundred_div_ε_pow_five_le_m](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/hundred-div-pow-five-le-m--d128951749940d10b4f58cb2.md) | 124 | `result-track:d128951749940d10b4f58cb26bfb385982667df7351ec54525f4791f788b8bab` |
| 15 | `theorem` | [hundred_le_m](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/hundred-le-m--218c0b04fe132f98dd1716b8.md) | 131 | `result-track:218c0b04fe132f98dd1716b81d6774adc8326a742d5f3f45458c021aced5c91b` |
| 16 | `theorem` | [a_add_one_le_four_pow_parts_card](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/a-add-one-le-four-pow-parts-card--f5526a1daba04517a7b1b240.md) | 137 | `result-track:f5526a1daba04517a7b1b240da282ffac897195bfabc299fcb8982531d39933a` |
| 17 | `theorem` | [card_aux₁](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/card-aux--e0e883ca0137799f3c8cea19.md) | 144 | `result-track:e0e883ca0137799f3c8cea19ebadd8561eabc63bf844aaab264f94809df62a26` |
| 18 | `theorem` | [card_aux₂](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/card-aux--78780e00c1c1e7a0eb78806f.md) | 149 | `result-track:78780e00c1c1e7a0eb78806f1c70e3e529ea325f528beb92907caa34edcfb288` |
| 19 | `theorem` | [pow_mul_m_le_card_part](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/pow-mul-m-le-card-part--cd3f4e14176ce21f88f73020.md) | 159 | `result-track:cd3f4e14176ce21f88f73020fe9364bb0c17ecec8be5094e99e3dcf72487c1e5` |
| 20 | `def` | [initialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/initialbound--6a9749f788e23d9f85858705.md) | 169 | `declaration-track:6a9749f788e23d9f858587052825168ae7b538fba3b194989c08ee5c794777d8` |
| 21 | `theorem` | [le_initialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/le-initialbound--682834698921bd0568dd4c70.md) | 172 | `result-track:682834698921bd0568dd4c70ba5ed7ab180895a4082696a685e46e0da15f2ac1` |
| 22 | `theorem` | [seven_le_initialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/seven-le-initialbound--1cee41ba354bac16f4dd41e2.md) | 175 | `result-track:1cee41ba354bac16f4dd41e250de6d45d951e347ecde2ae2ab183c9203269080` |
| 23 | `theorem` | [initialBound_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/initialbound-pos--61a6bb2491c3a3c9f414284e.md) | 178 | `result-track:61a6bb2491c3a3c9f414284e23bd797ea043e6cc09753d717cd22681f2eda899` |
| 24 | `theorem` | [hundred_lt_pow_initialBound_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/hundred-lt-pow-initialbound-mul--d9024fb0c3ec43e5fee91fb1.md) | 181 | `result-track:d9024fb0c3ec43e5fee91fb1c233df01bbbbc36e498fff0067564a754a494606` |
| 25 | `def` | [bound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/bound--c94836f17378c810655d3ea1.md) | 192 | `declaration-track:c94836f17378c810655d3ea1cefe8bed4282993ffe7818d5ba06046c03b752c9` |
| 26 | `theorem` | [initialBound_le_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/initialbound-le-bound--9d405bd9e53ac73701adc969.md) | 196 | `result-track:9d405bd9e53ac73701adc9692bba7539d9e201fbda5316a1cc7abe7f44434c48` |
| 27 | `theorem` | [le_bound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/le-bound--4707e06a2e2ed6d990c99e7c.md) | 199 | `result-track:4707e06a2e2ed6d990c99e7c303decd0d8b973485e0809fb6dc493fac9d0dad3` |
| 28 | `theorem` | [bound_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/bound-pos--55f21106f8e2442fcc0cdca0.md) | 202 | `result-track:55f21106f8e2442fcc0cdca0449307be9b7d42c0798c8b660cb138f189c2f524` |
| 29 | `theorem` | [mul_sq_le_sum_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/mul-sq-le-sum-sq--4cfdb9dfc537ebb7fa7d2c80.md) | 207 | `result-track:4cfdb9dfc537ebb7fa7d2c805fd88aeebe2d1b8929dd5f0f8ee5ea4df580de83` |
| 30 | `theorem` | [add_div_le_sum_sq_div_card](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/add-div-le-sum-sq-div-card--65f5de3a5efc50d08980ee78.md) | 215 | `result-track:65f5de3a5efc50d08980ee78b604a02a85a3926a9e71bcdf0baf9ce28c4724d0` |
| 31 | `def` | [evalInitialBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/evalinitialbound--9c250ae4be67761b29e93a37.md) | 250 | `declaration-track:9c250ae4be67761b29e93a37002e113e948aaca63d5a6b3206959568d91e2a6d` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/example--8f15c083dd508f949a9ca197.md) | 258 | `declaration-track:8f15c083dd508f949a9ca197910ad6b89636ef6e2cbce088f224d7c9a9e5a946` |
| 33 | `def` | [evalBound](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/evalbound--9d170236771a9488fd0d6a09.md) | 262 | `declaration-track:9d170236771a9488fd0d6a09f7c7c829a37f78466ddf3ce66f888285cf3c28d3` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Bound/Variantf80b441acbb35a1660b4bcaaf3f2a94dcf1fdb5a954ce2cb265ca8031ef0d794.lean/declarations/example--94327bdd73f9c7a228dbdaff.md) | 269 | `declaration-track:94327bdd73f9c7a228dbdaffbc23c8d9c4d1e045c7da6d777af122bf925d8c30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
