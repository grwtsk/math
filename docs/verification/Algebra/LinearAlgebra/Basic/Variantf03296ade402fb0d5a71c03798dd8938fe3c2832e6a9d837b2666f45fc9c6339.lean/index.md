# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62124f925a163dd896833c97aadf2b1787695430",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62124f925a163dd896833c97aadf2b1787695430`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.PartialSups` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Cardinality` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Finsupp` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Prod` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isNoetherian_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-of-surjective--35333c31a00c52adc33677ec.md) | 75 | `result-track:35333c31a00c52adc33677ec9e328c62596af03570bd4c903d6c564e838e896e` |
| 2 | `instance` | [isNoetherian_range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-range--cb7c111b0e3e11b943d5a913.md) | 81 | `declaration-track:cb7c111b0e3e11b943d5a913c02a1c3f19fca7c9e42cdaebac2ca6fcc9ed14f1` |
| 3 | `instance` | [isNoetherian_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-quotient--2ea3d21429ddaaa27964bd81.md) | 85 | `declaration-track:2ea3d21429ddaaa27964bd81fa96fdd34db8d99490769e6ece76710b302efa48` |
| 4 | `theorem` | [isNoetherian_of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-of-linearequiv--303b7c6ed2543fbfac36ac66.md) | 91 | `result-track:303b7c6ed2543fbfac36ac6624b72e31d72157d532826f5bd5238873ef3c94df` |
| 5 | `theorem` | [LinearEquiv.isNoetherian_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/linearequiv-isnoetherian-iff--4dd6abf1fd552379d6d58d1a.md) | 94 | `result-track:4dd6abf1fd552379d6d58d1a2c46d6089b493fc7e0ebd78ab0c8d7146c2ac2a1` |
| 6 | `theorem` | [isNoetherian_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-top-iff--3b69389934f34aa1033f8b65.md) | 97 | `result-track:3b69389934f34aa1033f8b65fb214dc669f86a33d1a8c324bb198c49c03cb1e7` |
| 7 | `theorem` | [isNoetherian_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-of-injective--c195053ab21d59ab037512be.md) | 100 | `result-track:c195053ab21d59ab037512be14a0518bfdff1a71b625a09b169db1f7935bd39c` |
| 8 | `theorem` | [fg_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/fg-of-injective--4bd65ef3ce5e675a95221a42.md) | 104 | `result-track:4bd65ef3ce5e675a95221a42b0e62a50e5e4b24fd954fea08823053003907314` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/instance--882b624c14ed23c117061931.md) | 118 | `declaration-track:882b624c14ed23c1170619310c23e93da62e1cb87a65b4e90b94c3d317556068` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/instance--9379730c738bf4187e5a9b17.md) | 122 | `declaration-track:9379730c738bf4187e5a9b17202d464e33e172455d660c4dfb416982f855b89c` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/instance--bf6a2dae16112d4c43f071b7.md) | 125 | `declaration-track:bf6a2dae16112d4c43f071b778d99f7393b4fa1440dc57218f02493b81577c23` |
| 12 | `theorem` | [Finite.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/finite-of-injective--214b54e4fb19cde095bed912.md) | 131 | `result-track:214b54e4fb19cde095bed91240ebcb33f096571d0f5c97dca53090778cab4462` |
| 13 | `theorem` | [isNoetherian_of_ker_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-of-ker-bot--ce9a834cc06936a7ab2011ec.md) | 145 | `result-track:ce9a834cc06936a7ab2011ec3e82cbf0efa2b83855c89931a436f7a514734079` |
| 14 | `theorem` | [fg_of_ker_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/fg-of-ker-bot--d0b73e8544c1dde89443e5f4.md) | 149 | `result-track:d0b73e8544c1dde89443e5f4fe6542047d18278ec1f866046cb24c992a26fd6b` |
| 15 | `instance` | [isNoetherian_prod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-prod--858889f3166fae14595738bd.md) | 155 | `declaration-track:858889f3166fae14595738bd90a5fc7575e2961c87beaf1c3f8fdb51b706e0a0` |
| 16 | `instance` | [isNoetherian_sup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-sup--a5bc5289f87dcde862abe02d.md) | 162 | `declaration-track:a5bc5289f87dcde862abe02daab0254613662a29649abdd74e3f4888188b7f1f` |
| 17 | `instance` | [isNoetherian_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-pi--8cec248e2bc70583c2a5fdb1.md) | 169 | `declaration-track:8cec248e2bc70583c2a5fdb1b7236175079fc42661b01b5450ab36a9ee456624` |
| 18 | `instance` | [isNoetherian_pi'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-pi--689fae43fc3902a5d99aef88.md) | 180 | `declaration-track:689fae43fc3902a5d99aef88d78e69f046c8fa54eba0605a1f85b04567bf6641` |
| 19 | `instance` | [isNoetherian_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-isup--e4bc86b494b794d638df0c7d.md) | 183 | `declaration-track:e4bc86b494b794d638df0c7d1c214f18fedc6b13363ed08f1edb66116820f876` |
| 20 | `theorem` | [isNoetherian_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-of-range-eq-ker--bfb4abcf1ac4a6b2f1bb1cec.md) | 192 | `result-track:bfb4abcf1ac4a6b2f1bb1cec15621aa4ca96aca188d226c97658ea8d5fb36126` |
| 21 | `theorem` | [isNoetherian_iff_submodule_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-iff-submodule-quotient--af85e6c27a0f9c161ca6c21a.md) | 206 | `result-track:af85e6c27a0f9c161ca6c21ac6093020e73ef064531e1ed070463d47d9c14047` |
| 22 | `instance` | [isNoetherian_linearMap_pi](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-linearmap-pi--3493ac29864297b672f0419d.md) | 219 | `declaration-track:3493ac29864297b672f0419d71fcff6882da8a06f34b7bb896fc0e27f24a754d` |
| 23 | `instance` | [isNoetherian_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-linearmap--4efd330f8c54def243be0968.md) | 222 | `declaration-track:4efd330f8c54def243be09683d33d6c804062dfe290bc739e9df0bd6e262af5f` |
| 24 | `theorem` | [IsNoetherian.induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-induction--60c2cab150fec92a8fe1e0b3.md) | 236 | `result-track:60c2cab150fec92a8fe1e0b34ef50c2924904de4f5ba54652556c1e9809df6b3` |
| 25 | `theorem` | [LinearMap.isNoetherian_iff_of_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/linearmap-isnoetherian-iff-of-bijective--5751a7222f62ba08e2836cbd.md) | 240 | `result-track:5751a7222f62ba08e2836cbdaa20360940080bf96ba5d2c95b941a92e906c299` |
| 26 | `lemma` | [Submodule.finite_ne_bot_of_iSupIndep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/submodule-finite-ne-bot-of-isupindep--720c3b6682239a365417abf8.md) | 253 | `result-track:720c3b6682239a365417abf87b611db84acab1b2635b925808ed159ac31c5559` |
| 27 | `theorem` | [LinearIndependent.finite_of_isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/linearindependent-finite-of-isnoetherian--f1b7601860e5e1e98ccca5d6.md) | 263 | `result-track:f1b7601860e5e1e98ccca5d682eed00f6d680b943c46516f9d0a50e2a473728f` |
| 28 | `theorem` | [LinearIndependent.set_finite_of_isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/linearindependent-set-finite-of-isnoetherian--dc302baf00d9f5cd3030398e.md) | 272 | `result-track:dc302baf00d9f5cd3030398e8cfd1cb1dc1c9598edd6ff3c692f31a05b1a8d25` |
| 29 | `theorem` | [IsNoetherian.disjoint_partialSups_eventually_bot](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-disjoint-partialsups-eventually-bot--3429c68443efe4c7aeb2d545.md) | 279 | `result-track:3429c68443efe4c7aeb2d545de0cc200d859def93ef15663073f05534de0369b` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/instance--ed35163a4218e1d9723d32cb.md) | 298 | `declaration-track:ed35163a4218e1d9723d32cb6bbde984abfcb7e6b03b1b778d3de936ef1d1bee` |
| 31 | `theorem` | [isNoetherian_of_submodule_of_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-of-submodule-of-noetherian--dab39a0fe58b4fffb7c20c7f.md) | 303 | `result-track:dab39a0fe58b4fffb7c20c7f30bb11b5a8e39300e1720ec18f1d2df8a42d96f0` |
| 32 | `theorem` | [isNoetherian_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-of-tower--ef373a479726d4031c5964e8.md) | 309 | `result-track:ef373a479726d4031c5964e8e75bd9420763690b5d14322d7784812772bf55ac` |
| 33 | `instance` | [isNoetherian_of_isNoetherianRing_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-of-isnoetherianring-of-finite--b7c94acf75c06093b02c382b.md) | 313 | `declaration-track:b7c94acf75c06093b02c382ba4bbe4bb6d9dcdae839f5c89a96b1d1ac512235d` |
| 34 | `theorem` | [isNoetherian_of_fg_of_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-of-fg-of-noetherian--bacc5387174a7a5c6c0a7f3f.md) | 319 | `result-track:bacc5387174a7a5c6c0a7f3f3f6ec55b0be98c44e37594e1f7b4e1e4bd1eeeb9` |
| 35 | `theorem` | [isNoetherian_span_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherian-span-of-finite--8a18a4ce127ac0555c6875a3.md) | 325 | `result-track:8a18a4ce127ac0555c6875a3bc101cac74752d3d8ae3d71804253530bd678a47` |
| 36 | `theorem` | [IsNoetherianRing.of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherianring-of-finite--f869a29ae49e47ad4ac41393.md) | 329 | `result-track:f869a29ae49e47ad4ac41393e964562015e9357572f34eb6f671de23966ecfaa` |
| 37 | `theorem` | [isNoetherianRing_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherianring-of-surjective--229e110a8404df3c4963a633.md) | 333 | `result-track:229e110a8404df3c4963a633486bf6fca0f52a1997b07542a1a2dcb122b6aa69` |
| 38 | `instance` | [isNoetherianRing_rangeS](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherianring-ranges--dde767a5d30f10b3604b9403.md) | 337 | `declaration-track:dde767a5d30f10b3604b94037044c931f34595ef1b2af220dfcba666d66f40b9` |
| 39 | `instance` | [isNoetherianRing_range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherianring-range--426c0caf61d3221c97d7c2d0.md) | 341 | `declaration-track:426c0caf61d3221c97d7c2d0f1681f96fe3db67cf841e12187131f8470773d0d` |
| 40 | `theorem` | [isNoetherianRing_of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/isnoetherianring-of-ringequiv--a80f95f3db7b9ac474987ef7.md) | 345 | `result-track:a80f95f3db7b9ac474987ef7b27c0b6597abb2e9ee8e720c927c131d4e2bf16f` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/instance--a7b00121d25602ec78f3b77e.md) | 349 | `declaration-track:a7b00121d25602ec78f3b77e1bcdc19afba249933ba924ff79d877be1c7b757e` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf03296ade402fb0d5a71c03798dd8938fe3c2832e6a9d837b2666f45fc9c6339.lean/declarations/instance--81bbf63ff8f2cb9cef7ad692.md) | 354 | `declaration-track:81bbf63ff8f2cb9cef7ad692c11c98a678e4ad9c630396dd9cd6e296be1880dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
